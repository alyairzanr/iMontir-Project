import 'package:flutter/material.dart';

class PompaAirPage extends StatelessWidget {
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
          'Pompa Air',
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Speedometer
            Text(
              '00.00 s/min',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10), // Spacer antara elemen
            // Text "Air yang sudah masuk"
            Text(
              'Air yang sudah masuk',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5), // Spacer antara elemen
            // Text "15 L"
            Text(
              '15 L',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20), // Spacer antara elemen
            // Tombol ON dan OFF
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Tombol ON
                ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol ON ditekan
                  },
                  child: Text('ON'),
                ),
                // Tombol OFF
                ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol OFF ditekan
                  },
                  child: Text('OFF'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
