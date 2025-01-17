import 'package:flutter/material.dart';

class Agama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tugas Agama',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true, 
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          InkWell(
            onTap: () {},
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              //
            ),
          ),
          SizedBox(height: 16),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tugas dan Nilai',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(),
                  InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.assignment, color: Colors.blue),
                        SizedBox(width: 16),
                        Text('Tugas 1'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Tuntas',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  SizedBox(height: 16),
                  InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.assignment, color: Colors.blue),
                        SizedBox(width: 16),
                        Text('Tugas 2'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Tuntas',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  SizedBox(height: 16),
                  InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.assignment, color: Colors.blue),
                        SizedBox(width: 16),
                        Text('Tugas 3'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'selesain dulu tolol',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 7, 7, 7),
                    ),
                  ),
                  SizedBox(height: 16),
                  InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.assignment, color: Colors.blue),
                        SizedBox(width: 16),
                        Text('Tugas 4'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'gtw',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  SizedBox(height: 16),
                  InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.assignment, color: Colors.blue),
                        SizedBox(width: 16),
                        Text('Tugas 5'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'ah mantap',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
