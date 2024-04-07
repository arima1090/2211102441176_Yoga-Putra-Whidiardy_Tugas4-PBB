import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Hero Animation',
      home: SourcePage(),
    );
  }
}

// Halaman Asal
class SourcePage extends StatelessWidget {
  const SourcePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Asal')),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DestinationPage()),
          );
        },
        child: const Hero(
          tag: 'avatarTag',
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/564x/f9/b4/32/f9b432825a84cde107e5a9883ea561cc.jpg'),
            radius: 50,
          ),
        ),
      ),
    );
  }
}

// Halaman Tujuan
class DestinationPage extends StatelessWidget {
  const DestinationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Tujuan')),
      body: const Center(
        child: Hero(
          tag: 'avatarTag',
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/564x/7e/96/83/7e96833e2becc48ea62f41c1b63af465.jpg'),
            radius: 150,
          ),
        ),
      ),
    );
  }
}