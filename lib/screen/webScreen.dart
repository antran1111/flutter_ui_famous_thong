
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


/*
webview screen notes: Add this to your info.plist file for ios
<key>io.flutter.embedded_views_preview</key>
	<true/>
 */

//todo, view some apps in play store, see how other people struture them and improve it.

class WebViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Load Website!'),),

      body: WebView(
        initialUrl: 'https://www.youtube.com',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
