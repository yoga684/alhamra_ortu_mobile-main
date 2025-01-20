import 'package:flutter/material.dart';

class PengumumanPage extends StatelessWidget {
  final List<Map<String, String>> pengumumanList = [
    {
      'judul': 'Libur 1 bulan',
      'tanggal': 'Bulan Ramadhan',
      'isi': 'Rencana pemerintah melibutkan sekolah selama 1 bulan, kalo jadi tapi ya'
    },
   // {
     // 'judul': 'Pendaftaran Ulangan',
      //'tanggal': '10 Januari 2025',
      //'isi': 'Pendaftaran untuk ulangan tengah semester dimulai pada tanggal 20 Januari 2025 hingga 22 Januari 2025. Harap mendaftar di aplikasi sekolah.'
    //},
    //{
      //'judul': 'Pengambilan Raport',
      //'tanggal': '5 Januari 2025',
      //'isi': 'Raport semester akan dibagikan pada tanggal 25 Januari 2025. Orang tua diharapkan hadir untuk mengambil raport di sekolah.'
    //},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengumuman Sekolah',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: pengumumanList.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.only(bottom: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pengumumanList[index]['judul']!,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Tanggal: ${pengumumanList[index]['tanggal']}',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      pengumumanList[index]['isi']!,
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
