
import 'package:flutter/material.dart';

void main() {
  runApp(const VendooraApp());
}

class VendooraApp extends StatelessWidget {
  const VendooraApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vendoora Halo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Vendoora Guest App')),
        body: const Center(child: Text('Smart Key View Placeholder')),
      ),
    );
  }
}
