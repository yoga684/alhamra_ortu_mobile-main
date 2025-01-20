import 'package:flutter/material.dart';
import 'package:school_app/pages/page_informasi.dart';
import 'package:school_app/pages/page_setting.dart';
import 'package:school_app/pages/profil.dart';
import 'package:school_app/pages_tugas/Agama.dart';
import 'package:school_app/pages_tugas/Bahasa_indonesia.dart';
import 'package:school_app/pages_tugas/Ipa.dart';
import 'package:school_app/pages_tugas/Matematika.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dasboard Tugas Siswa',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                accountName: Text('Andre Taufik Hidayat'),
                accountEmail: Text('andreganteng123@gmail.com'),
                currentAccountPicture: Container(
                  width: 72,
                  height: 72,
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
              ),
              ListTile(
                leading: Icon(Icons.person,
                    color: const Color.fromARGB(255, 0, 0, 0)),
                title: Text(
                  'Profile',
                  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profil()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.notifications,
                    color: const Color.fromARGB(255, 0, 0, 0)),
                title: Text(
                  'Pengumuman',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PengumumanPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.settings,
                    color: const Color.fromARGB(255, 0, 0, 0)),
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageAbsen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 94, 2), width: 3),
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://static.wikia.nocookie.net/akb48/images/9/92/Anindya_Ramadhani_JKT48_2022.jpg',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Anindya Ramadhani',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'SMA 48 Jakarta',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      'Ketuntasan Tugas: 21%',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    LinearProgressIndicator(
                      value: 0.21,
                      backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                      color: const Color.fromARGB(255, 0, 255, 8),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Data Absensi Siswa:',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Hari Hadir: 15',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'Hari Tidak Hadir: 5',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Detail Tugas Siswa',
                style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              Divider(
                color: const Color.fromARGB(255, 0, 94, 2),
              ),
              SizedBox(height: 20),
              Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Agama()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 184, 213, 61),
                          border: Border.all(
                              color: const Color.fromARGB(255, 0, 94, 2),
                              width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.school, color: Colors.blue),
                          title: Center(
                            child: Text(
                              "AGAMA",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 94, 2),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Matematika()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 184, 213, 61),
                          border: Border.all(
                              color: const Color.fromARGB(255, 0, 94, 2),
                              width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.school, color: Colors.blue),
                          title: Center(
                            child: Text(
                              "MATEMATIKA",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 94, 2),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Ipa()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 184, 213, 61),
                          border: Border.all(
                              color: const Color.fromARGB(255, 0, 94, 2),
                              width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.school, color: Colors.blue),
                          title: Center(
                            child: Text(
                              "IPA",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 94, 2),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BahasaIndonesia()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 184, 213, 61),
                          border: Border.all(
                              color: const Color.fromARGB(255, 0, 94, 2),
                              width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: Icon(Icons.school, color: Colors.blue),
                          title: Center(
                            child: Text("BAHASA INDONESIA",
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 94, 2),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
