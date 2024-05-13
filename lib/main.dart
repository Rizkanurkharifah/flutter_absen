import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hallo Dunia'),
          backgroundColor: Color.fromARGB(255, 30, 116, 167),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TeksUtama(
              teks1: 'AFFAN NUR AFTO', 
              teks2: 'NIM: STI202102422'),
            TeksUtama(
              teks1: 'SURIPTO', 
              teks2: 'NIM: STI202102425'),
            TeksUtama(
              teks1: 'RIZKA NUR KHARIFAH ',
              teks2: 'NIM: STI202102431',
              backgroundColor: Color.fromARGB(255, 40, 211, 125),
            ),
            TeksUtama(
              teks1: 'LINDA SENJA ANGGRAENI', 
              teks2: 'NIM: STI2021433'),
            TeksUtama(
              teks1: 'YEZA YOFANKA', 
              teks2: 'NIM: STI202102443'),
          ],
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;
  final Color? backgroundColor;

  TeksUtama({
    required this.teks1,
    required this.teks2,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            teks1,
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 9, 9, 9),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0), // Atur padding di bagian bawah
            child: Text(
              teks2,
              style: TextStyle(
                color: gColor.fromARGB(255, 32, 32, 32),
              ),
            ),
          ),
        ],
      ),
    );
  }
}