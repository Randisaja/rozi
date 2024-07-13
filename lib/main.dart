import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeksUtama',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TeksUtama'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TeksUtama(
                teks1: 'amanda refti mariska',
                teks2: 'STI202102342',
              ),
              TeksUtama(
                teks1: 'tri rahayu',
                teks2: 'STI202102347',
              ),
              TeksUtama(
                teks1: 'ghaza gymnastiar',
                teks2: 'STI202102370',
              ),
              TeksUtama(
                teks1: 'laely fabilah mizaluna',
                teks2: 'STI202102375',
              ),
              TeksUtama(
                teks1: 'danang fia adiantoro',
                teks2: 'STI202102379',
              ),
              TeksUtama(
                teks1: 'esa prayoga isnandar',
                teks2: 'STI202102381',
              ),
              TeksUtama(
                teks1: 'fahrul rozi junaedin',
                teks2: 'STI202102428',
              ),
              TeksUtama(
                teks1: 'rahman ramadani',
                teks2: 'STI202103130',
              ),
              TeksUtama(
                teks1: 'desta mutiara kardiansyah',
                teks2: 'STI202103394',
              ),
              TeksUtama(
                teks1: 'yusuf jauhar alif faqih',
                teks2: 'STI202103390',
              ),
              TeksUtama(
                teks1: 'randi pangestu',
                teks2: 'STI202102392',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  TeksUtama({required this.teks1, required this.teks2});

  @override
  Widget build(BuildContext context) {
    bool isHighlighted = teks1 == 'fahrul rozi junaedin' && teks2 == 'STI202102428';

    return Container(
      width: double.infinity,  // Ensures the container takes full width
      color: isHighlighted ? Color.fromARGB(255, 7, 112, 231) : Colors.transparent,
      padding: EdgeInsets.all(8.0),  // Padding to ensure the text has some space
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,  // Align text to the left
        children: [
          Text(teks1, style: TextStyle(fontSize: 14)),
          Text(teks2, style: TextStyle(fontSize: 14)),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}