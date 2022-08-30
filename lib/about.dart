import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'package:webview_flutter/webview_flutter.dart';

class about extends StatefulWidget {
  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  late WebViewController _controller;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'About',
        ),
        backgroundColor: Color(0xF80684AE),
      ),
      body: Center(
        child: Container(
          height: 700,
          width: 400,
          decoration: BoxDecoration(
            color: Color(0xF80684AE),
            boxShadow: [
              BoxShadow(),
            ],
          ),
          child: WebView(
            initialUrl: 'https://www.google.co.in/',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller = webViewController;
            },
          ),
        ),
      ),
    );
  }
}
