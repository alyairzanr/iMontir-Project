import 'package:flutter/material.dart';
import 'cabang1_page.dart'; // Import halaman tujuan untuk Cabang 1
import 'cabang2_page.dart'; // Import halaman tujuan untuk Cabang 2

class NotifikasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Text(
          'Notifikasi',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: Colors.transparent),
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20.0), // Spacer dari atas
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cabang2Page()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF0D9D57), // Warna latar belakang button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Mengatur border radius sesuai kebutuhan
                ),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0), // Atur padding tombol
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cabang 2',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Warna teks
                    ),
                  ), // Teks di sebelah kiri
                  Image.asset(
                    'assets/cabang.png', // Ganti dengan path gambar JPG yang Anda inginkan
                    width: 30.0, // Atur lebar gambar sesuai kebutuhan Anda
                    height: 30.0, // Atur tinggi gambar sesuai kebutuhan Anda
                  ), // Gambar JPG di sebelah kanan
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0), // Spacer antara kedua tombol
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman Cabang2 saat tombol Cabang 2 ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cabang1Page()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF0D9D57), // Warna latar belakang button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Mengatur border radius sesuai kebutuhan
                ),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0), // Atur padding tombol
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cabang 1',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Warna teks
                    ),
                  ), // Teks di sebelah kiri
                  Image.asset(
                    'assets/cabang.png', // Ganti dengan path gambar JPG yang Anda inginkan
                    width: 30.0, // Atur lebar gambar sesuai kebutuhan Anda
                    height: 30.0, // Atur tinggi gambar sesuai kebutuhan Anda
                  ), // Gambar JPG di sebelah kanan
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0), // Spacer dari bawah
        ],
      ),
    );
  }
}
