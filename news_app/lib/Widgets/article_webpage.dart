import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends StatelessWidget {
  final String articleUrl;
  final String articleTitle;

  const ArticleWebView({
    Key? key,
    required this.articleUrl,
    required this.articleTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = WebViewController()
      ..loadRequest(Uri.parse(articleUrl))
      ..setJavaScriptMode(JavaScriptMode.unrestricted);

    return Scaffold(
      appBar: AppBar(title: Text(articleTitle)),
      body: WebViewWidget(controller: controller),
    );
  }
}
