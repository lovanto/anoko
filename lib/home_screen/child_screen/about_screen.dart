import 'package:flutter/material.dart';

void main() {
  runApp(const AboutScreen());
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const AboutScreenPage(title: 'Anoko'),
    );
  }
}

class AboutScreenPage extends StatefulWidget {
  const AboutScreenPage({super.key, required this.title});

  final String title;

  @override
  State<AboutScreenPage> createState() => _AboutScreenPageState();
}

class _AboutScreenPageState extends State<AboutScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.network('https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png', height: 30),
            const SizedBox(
              width: 10,
            ),
            Text(widget.title)
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'About Page',
            ),
          ],
        ),
      ),
    );
  }
}
