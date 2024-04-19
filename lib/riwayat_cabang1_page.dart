import 'package:flutter/material.dart';

class RiwayatKetinggianAir1Page extends StatelessWidget {
  // Data untuk tabel
  List<List<dynamic>> data = [
    ['Tanggal', 'Waktu', 'Ketinggian Air (cm)'],
    ['2024-04-18', '08:00', '20'],
    ['2024-04-18', '08:30', '25'],
    ['2024-04-18', '09:00', '30'],
    ['2024-04-18', '09:00', '30'],
  ];

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
          'Riwayat\nCabang 1',
          textAlign: TextAlign.center,
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
      body: Container(
        // Menampilkan tabel riwayat ketinggian air
        child: Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Table(
                    border: TableBorder.all(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: data.asMap().entries.map((entry) {
                      int index = entry.key;
                      List<dynamic> rowData = entry.value;
                      return _buildTableRow(rowData, index);
                    }).toList(),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Metode untuk membangun baris tabel
  TableRow _buildTableRow(List<dynamic> rowData, int index) {
    Color backgroundColor = index == 0 ? Color(0xFF0D9D57) : Colors.white;
    Color textColor = index == 0 ? Colors.white : Colors.black;
    double borderRadius = index == 0 ? 20.0 : 0.0;

    return TableRow(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius),
          topRight: Radius.circular(borderRadius),
        ),
      ),
      children: rowData.map((item) {
        return Container(
          padding: EdgeInsets.all(10),
          height: 40.0,
          child: Center(
            child: Text(
              item.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: index == 0 ? 12.0 : 14.0,
                color: textColor,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
