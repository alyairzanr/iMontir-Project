import 'package:flutter/material.dart';
import 'riwayat_cabang2_page.dart';
import 'pompa_air2_page.dart';

class Cabang2Page extends StatelessWidget {
  Cabang2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, 
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); 
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Text(
          'Cabang 2',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, 
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: Colors.transparent), 
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 60.0), 
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(
                        7,
                        (index) => Container(
                          height: 40.0,
                          alignment: Alignment.center,
                          child: Text(
                            '${(6 - index) * 10} cm',
                            style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[200],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            height: 40.0,
                            color: Colors.blue[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Bagian Tabel
          //Bagian Tabel
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 40.0), // Mengurangi padding agar tidak terlalu besar
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start, // Mengatur letak bagian tabel ke atas
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), 
                    child: Text(
                      'History Ketinggian Air',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
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
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), 
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RiwayatKetinggianAir2Page()), 
                        );
                      },
                      child: Text(
                        'Selengkapnya',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, 
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  SizedBox(height: 10), 
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PompaAirPage()), 
                      );
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF0D9D57), 
                      ),
                      child: Center(
                        child: Text(
                          'Pompa Air',
                          style: TextStyle(
                            color: Colors.white, 
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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

  List<List<dynamic>> data = [
    ['Tanggal', 'Waktu', 'Ketinggian Air (cm)'],
    ['2024-04-18', '08:00', '20'],
    ['2024-04-18', '08:30', '25'],
    ['2024-04-18', '09:00', '30'],
    ['2024-04-18', '09:00', '30'],
  ];
}
