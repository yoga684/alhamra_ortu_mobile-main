import 'package:flutter/material.dart';
import 'package:school_app/login.dart';
import 'package:school_app/pages/page_edit.dart';
import 'package:school_app/pages_tugas/Agama.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil Orang Tua',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: const Color.fromARGB(255, 0, 94, 2), width: 3),
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://radarindramayu.disway.id/upload/79f2e40b1a9ae22bed7d2380d8db4687.png'),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Andre Taufik Hidayat',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, color: Colors.grey),
                SizedBox(width: 8.0),
                Text(
                  'andreganteng123@gmail.com',
                  style: TextStyle(fontSize: 16.0, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone, color: Colors.grey),
                SizedBox(width: 8.0),
                Text(
                  '+62 812 3456 7890',
                  style: TextStyle(fontSize: 16.0, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 24.0),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageEdit()),
                );
              },
              icon: Icon(Icons.edit),
              label: Text('Edit Profil'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('LOGOUT'),
                      content: Text('Apa Anda yakin ingin keluar?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, false);
                          },
                          child: const Text('Batal'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, true);
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          child: const Text('Logout'),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
              ),
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
