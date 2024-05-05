import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class PDFDisplay {
  static Future<File> loadNetwork(String url) async {
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    final bytes = response.bodyBytes;
    return _storeFile(url, bytes);
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
    final file = await PDFDisplay.loadNetwork(url);
    Navigator.pop(context); // Close the loading dialog
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => PDFViewPage(file: file)),
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

class PDFViewPage extends StatelessWidget {
  final File file;
  final bool
      showDownloadButton; // New property to control download button visibility

  // Constructor with an optional parameter to control download button visibility
  const PDFViewPage(
      {Key? key, required this.file, this.showDownloadButton = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = basename(file.path);
    return Scaffold(
      appBar: AppBar(
        title: Text("$name"),
        // Conditionally show download button based on showDownloadButton property
        actions: showDownloadButton
            ? [
                IconButton(
                  icon: Icon(Icons.download),
                  onPressed: () async {
                    final appDir = await getApplicationDocumentsDirectory();
                    final filename = basename(file.path);
                    final newFile = File('${appDir.path}/Downloads/$filename');
                    await newFile.create(recursive: true);
                    await file.copy(newFile.path);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('PDF downloaded to Downloads folder.'),
                      ),
                    );
                  },
                ),
              ]
            : [],
      ),
      body: PDFView(filePath: file.path),
    );
  }
}
