import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs_lite.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:ioe/screens/components/otherpageappbar.dart';

class Articles extends StatefulWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  _ArticlesState createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  List<Article> articles = [];
  bool _isLoading = false;
  bool _isConnected = true; // Track internet connectivity

  @override
  void initState() {
    super.initState();
    _checkInternet(); // Check internet connectivity on initialization
  }

  Future<void> _checkInternet() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      setState(() {
        _isConnected = false;
      });
    } else {
      setState(() {
        _isConnected = true;
      });
      _fetchArticles(); // Fetch articles if internet is available
    }
  }

  Future<void> _fetchArticles() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final response =
          await http.get(Uri.parse('https://notesioe.com/wp-json/wp/v2/posts'));
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(response.body);
        setState(() {
          articles = jsonData
              .map((article) => Article(
                    title: article['title']['rendered'],
                    content: article['content']['rendered'],
                    url: article['link'],
                  ))
              .toList();
        });
      } else {
        throw Exception('Failed to load articles');
      }
    } catch (e) {
      debugPrint('Error fetching articles: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(heading: "Articles", rightIcon: Icons.newspaper),
      body: _isConnected
          ? _isLoading
              ? _buildLoadingSkeleton()
              : RefreshIndicator(
                  color: Colors.blue,
                  onRefresh: _fetchArticles,
                  child: ListView.builder(
                    itemCount: articles.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 0.5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: InkWell(
                            onTap: () {
                              _launchURL(context, articles[index].url);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      'assets/icon/fab.png',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          articles[index].title,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: TextButton(
                                            onPressed: () {
                                              _launchURL(
                                                  context, articles[index].url);
                                            },
                                            child: Text(
                                              'Read Article',
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
          : Center(
              child: Text('Please connect to the internet to view articles'),
            ),
    );
  }

  Widget _buildLoadingSkeleton() {
    return ListView.builder(
      itemCount: 6, // Display 5 skeleton loading items
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: Card(
            elevation: 0, // Remove elevation
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              padding: EdgeInsets.all(12.0), // Decrease padding
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.grey[300], // Use light grey color
                    ),
                  ),
                  SizedBox(width: 12), // Add spacing between icon and text
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 16,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Colors.grey[300], // Use light grey color
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: double.infinity,
                          height: 12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Colors.grey[300], // Use light grey color
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: 100,
                          height: 12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Colors.grey[300], // Use light grey color
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _launchURL(BuildContext context, String url) async {
    final theme = Theme.of(context);
    try {
      await launchUrl(
        Uri.parse(url),
        options: LaunchOptions(
          barColor: theme.colorScheme.surface,
          onBarColor: theme.colorScheme.onSurface,
          barFixingEnabled: false,
        ),
      );
    } catch (e) {
      debugPrint('Error launching URL: $e');
    }
  }
}

class Article {
  final String title;
  final String content;
  final String url;

  Article({required this.title, required this.content, required this.url});
}
