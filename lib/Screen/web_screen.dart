
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';


class WebScreen extends StatefulWidget {
  WebScreen({Key? key,required this.URL}) : super(key: key);
  String? URL;
  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  InAppWebViewController? webViewController;
  String? URL;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Web App"),
        actions: [
          IconButton(
            onPressed: () {
              webViewController?.goBack();
            },
            icon: Icon(Icons.arrow_back),
          ),
          IconButton(
            onPressed: () {
              webViewController?.reload();
            },
            icon: Icon(Icons.restart_alt_sharp),
          ),
          IconButton(
            onPressed: () {
              webViewController?.goForward();
            },
            icon: Icon(Icons.arrow_forward),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse(widget.URL!),
        ),
        onWebViewCreated: (controller) {
          webViewController = controller;
        },
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
            useShouldOverrideUrlLoading: true,
            mediaPlaybackRequiresUserGesture: false,
          ),
          android: AndroidInAppWebViewOptions(
            useHybridComposition: true,
          ),

        ),
      ),
    );
  }
}
