import 'package:flutter/material.dart';
import 'cabang1_page.dart'; // Import halaman tujuan untuk Cabang 1
import 'cabang2_page.dart'; // Import halaman tujuan untuk Cabang 2
import 'notifikasi_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key); // Constructor publik

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  Color button1Color = Color(0xFF0D9D57); // Warna default untuk Button 1
  Color button2Color = Color(0xFF0D9D57); // Warna default untuk Button 2

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D9D57), // Background color 0xFF0D9D57
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Bagian atas
          Container(
            padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Teks kiri atas
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi Farmer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Desa Limpok\nKab. Aceh Besar',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      '14.00',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'Sabtu, 6 Maret 2024',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                // Icon notifikasi dan gambar petani
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          // Navigasi ke halaman NotifikasiPage saat tombol notifikasi ditekan
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NotifikasiPage()),
                          );
                        },
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Image.asset(
                        'assets/farmer.png', // Ganti dengan path gambar petani Anda
                        width: 160.0, // Atur lebar gambar sesuai kebutuhan Anda
                        height: 160.0, // Atur tinggi gambar sesuai kebutuhan Anda
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Bagian bawah
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Teks "Percabangan"
                  Text(
                    'Percabangan',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  // Button menu
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {
                              // Navigasi ke halaman Cabang1Page saat tombol Cabang 1 ditekan
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Cabang1Page()),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(button1Color),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(vertical: 40.0)),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            child: Column(
                              children: [
                                Text('17',  style: TextStyle(fontSize: 60, fontWeight: FontWeight.w600)),
                                SizedBox(height: 1), // Jarak antara teks "Menu 1" dan "17 cm"
                                Text('cm', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                                SizedBox(height: 6), // Jarak antara teks "17 cm" dan "Cabang 1"
                                Text('Cabang 1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {
                              // Navigasi ke halaman Cabang2Page saat tombol Cabang 2 ditekan
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Cabang2Page()),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(button2Color),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(vertical: 40.0)),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            child: Column(
                              children: [
                                Text('10', style: TextStyle(fontSize: 60, fontWeight: FontWeight.w600)),
                                SizedBox(height: 1), // Jarak antara teks "Menu 2" dan "17 cm"
                                Text('cm', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                                SizedBox(height: 6), // Jarak antara teks "17 cm" dan "Cabang 2"
                                Text('Cabang 2', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // Memeriksa kondisi awal dan mengatur warna tombol berdasarkan kondisi awal
    _checkButtonColor();
  }

  void _checkButtonColor() {
    // Memeriksa kondisi awal dan mengatur warna tombol berdasarkan kondisi awal
    setState(() {
      if (int.parse('17') > 10) {
        button1Color = Color(0xFF03C988);
      } else {
        button1Color = Color(0xFFFA4659);
      }

      if (int.parse('10') > 10) {
        button2Color = Color(0xFF03C988);
      } else {
        button2Color = Color(0xFFFA4659);
      }
    });
  }
}
