import 'package:flutter/material.dart';
import 'package:flutter_web_app/hitung_luas_persegi.dart';
import 'package:flutter_web_app/hitung_luas_lingkaran.dart';
import 'package:flutter_web_app/profile_developer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Hitung Luas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HitungLuasPersegiScreen()),
                );
              },
              child: Text('Hitung Luas Persegi'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HitungLuasLingkaranScreen()),
                );
              },
              child: Text('Hitung Luas Lingkaran'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileDeveloperScreen()),
                );
              },
              child: Text('Profile Developer'),
            ),
          ],
        ),
      ),
    );
  }
}
