import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailsNew extends StatefulWidget {
  const DetailsNew({super.key, required this.url});
  final String url;

  @override
  State<DetailsNew> createState() => _DetailsNewState();
}

class _DetailsNewState extends State<DetailsNew> {
  late final WebViewController _controller;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (_) {
            setState(() {
              isLoading = false;
            });
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url)); // Load the URL
    print("Loading URL: ${widget.url}"); // Debugging print
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WebViewWidget(
            controller: _controller,
          ),
          if (isLoading) const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
