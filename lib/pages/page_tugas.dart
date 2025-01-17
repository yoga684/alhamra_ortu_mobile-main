import 'package:flutter/material.dart';

class PageTugas extends StatefulWidget {
  const PageTugas({super.key});

  @override
  State<PageTugas> createState() => _PageTugasState();
}

class _PageTugasState extends State<PageTugas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Tugas Siswa'),
      ),
      body: Container(
        
      ),
    );
  }
}