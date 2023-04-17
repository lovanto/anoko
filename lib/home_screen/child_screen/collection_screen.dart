import 'package:flutter/material.dart';

void main() {
  runApp(const CollectionScreen());
}

class CollectionScreen extends StatelessWidget {
  const CollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const CollectionScreenPage(title: 'Anoko'),
    );
  }
}

class CollectionScreenPage extends StatefulWidget {
  const CollectionScreenPage({super.key, required this.title});

  final String title;

  @override
  State<CollectionScreenPage> createState() => _CollectionScreenPageState();
}

class _CollectionScreenPageState extends State<CollectionScreenPage> {
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
              'Collections Page',
            ),
          ],
        ),
      ),
    );
  }
}
