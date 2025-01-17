import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Orang Tua'),
        backgroundColor: Colors.green,
        centerTitle: true, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: NetworkImage('https://radarindramayu.disway.id/upload/79f2e40b1a9ae22bed7d2380d8db4687.png'),
              backgroundColor: Colors.grey[300],
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
            ElevatedButton.icon(
              onPressed: () {
              },
              icon: Icon(Icons.logout),
              label: Text('Logout'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
