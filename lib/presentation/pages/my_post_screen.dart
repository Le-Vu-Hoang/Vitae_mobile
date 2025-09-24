import 'package:flutter/material.dart';

class MyPostScreen extends StatelessWidget {
  const MyPostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Posts')),
      body: const Center(child: Text('This is the My Post Screen')),
    );
  }
}
