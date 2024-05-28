import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/ads_state.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class PDFDisplay {
  static Future<File> loadFile(String url) async {
    if (url.contains('drive.google.com')) {
      final directLink = await _getDirectDownloadLink(url);
      if (directLink != null) {
        return _fetchAndStoreFile(directLink);
      } else {
        throw Exception(
            'Failed to fetch direct download link from Google Drive.');
      }
    } else {
      final response = await http.get(Uri.parse(url));
      final bytes = response.bodyBytes;
      return _storeFile(url, bytes);
    }
  }

  static Future<String?> _getDirectDownloadLink(String url) async {
    if (url.contains('/file/d/')) {
      final fileId = url.split('/file/d/')[1].split('/')[0];
      final directLink =
          'https://drive.google.com/uc?export=download&id=$fileId';
      return directLink;
    } else {
      return null;
    }
  }

  static Future<File> _fetchAndStoreFile(String url) async {
    final response = await http.get(Uri.parse(url));
    final bytes = response.bodyBytes;

    // Extract filename from the response headers
    final contentDisposition = response.headers['content-disposition'];
    String filename = basename(url);
    if (contentDisposition != null && contentDisposition.isNotEmpty) {
      final startIndex = contentDisposition.indexOf('filename=');
      if (startIndex != -1) {
        filename = contentDisposition.substring(startIndex + 9);
        filename = filename.replaceAll('"', ''); // Remove quotes
      }
    }
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$filename');
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }

  static Future<File> _storeFile(String url, List<int> bytes) async {
    final filename = basename(url);
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$filename');
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }
}

void openPDF(BuildContext context, String url) async {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Center(
        child: CircularProgressIndicator(), // Show loading indicator
      );
    },
  );

  try {
    final file = await PDFDisplay.loadFile(url);
    Navigator.pop(context); // Close the loading dialog
    Navigator.of(context).push(
      CupertinoPageRoute(builder: (context) => PDFViewPage(file: file)),
    );
  } on SocketException catch (_) {
    // Handle SocketException: Device not connected to the internet
    Navigator.pop(context); // Close the loading dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Error'),
        content: Text('Please connect to the internet.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  } catch (e) {
    // Handle other exceptions
    Navigator.pop(context); // Close the loading dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Error'),
        content: Text('Failed to load PDF.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}

class PDFViewPage extends StatefulWidget {
  final File file;
  final bool showDownloadButton;

  const PDFViewPage(
      {Key? key, required this.file, this.showDownloadButton = true})
      : super(key: key);

  @override
  _PDFViewPageState createState() => _PDFViewPageState();
}

class _PDFViewPageState extends State<PDFViewPage> {
  PDFViewController? _pdfViewController;
  int _totalPages = 0;
  int _currentPage = 1; // Start with page 1
  final _pageController = TextEditingController(text: '1');
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _pageController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _jumpToPage(String page) {
    final int? pageNumber = int.tryParse(page);
    if (pageNumber != null && pageNumber > 0 && pageNumber <= _totalPages) {
      _pdfViewController?.setPage(pageNumber - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    final name = basename(widget.file.path);
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        actions: <Widget>[
          if (widget.showDownloadButton)
            IconButton(
              icon: Icon(Icons.download, color: Colors.black),
              onPressed: () async {
                final appDir = await getApplicationDocumentsDirectory();
                final filename = basename(widget.file.path);
                final newFile = File('${appDir.path}/Downloads/$filename');
                await newFile.create(recursive: true);
                await widget.file.copy(newFile.path);
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Download Successful!"),
                      content: Text("PDF Downloaded to Downloads Section."),
                      actions: <Widget>[
                        TextButton(
                          child: Text("OK"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          IconButton(
            icon: Icon(Icons.home, color: Colors.black),
            onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName('/'));
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0), // Adjust the height as needed
          child: BannerAdWidget(), // Your ad widget here
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PDFView(
              filePath: widget.file.path,
              swipeHorizontal: false, // Set to false for vertical scrolling
              pageSnap: true,
              autoSpacing: true,
              onRender: (_pages) {
                setState(() {
                  _totalPages = _pages!;
                  _currentPage =
                      1; // Reset to first page when document is loaded
                  _pageController.text = '1'; // Update the controller text
                });
              },
              onViewCreated: (PDFViewController pdfViewController) {
                setState(() {
                  _pdfViewController = pdfViewController;
                });
              },
              onPageChanged: (int? page, int? total) {
                setState(() {
                  _currentPage = page! + 1; // Adjust for 0-indexing
                  _pageController.text =
                      _currentPage.toString(); // Update the controller text
                });
              },
            ),
          ),
          if (_totalPages > 1) ...[
            Container(
              color: kblue,
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.first_page, color: Colors.white),
                    onPressed: () {
                      _pdfViewController?.setPage(0);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.chevron_left, color: Colors.white),
                    onPressed: () {
                      _currentPage > 1
                          ? _pdfViewController?.setPage(_currentPage - 2)
                          : null;
                    },
                  ),
                  Expanded(
                    child: TextField(
                      controller: _pageController,
                      focusNode: _focusNode,
                      decoration: InputDecoration(
                        hintText: 'Page',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      onSubmitted: _jumpToPage,
                    ),
                  ),
                  Text(' / $_totalPages',
                      style: TextStyle(color: Colors.white)),
                  IconButton(
                    icon: Icon(Icons.chevron_right, color: Colors.white),
                    onPressed: () {
                      _currentPage < _totalPages
                          ? _pdfViewController?.setPage(_currentPage)
                          : null;
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.last_page, color: Colors.white),
                    onPressed: () {
                      _pdfViewController?.setPage(_totalPages - 1);
                    },
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
