import 'package:flutter/material.dart';

class PageAbsen extends StatefulWidget {
  const PageAbsen({super.key});

  @override
  State<PageAbsen> createState() => _PageAbsenState();
}

class _PageAbsenState extends State<PageAbsen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Setting',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Rencananya sih ini halaman setting',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
