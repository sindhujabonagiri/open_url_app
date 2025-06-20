import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(OpenUrlApp());
}

class OpenUrlApp extends StatelessWidget {
  //This URL can be changed later or made to take input.
  final Uri _url = Uri.parse('https://flutter.dev');

  //to launch the URL
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_url';
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'URL Button Prototype',
      home: Scaffold(
        appBar: AppBar(title: Text('Prototype: Open URL')),
        body: Center(
          child: ElevatedButton(onPressed: _launchUrl, child: Text('Open URL')),
        ),
      ),
    );
  }
}
