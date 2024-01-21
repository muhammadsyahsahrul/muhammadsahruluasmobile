import 'package:flutter/material.dart';

class ProfileDeveloperScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Developer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama Developer: [Nama Anda]'),
            Text('NPM: [NPM Anda]'),
            Text('Kelas: [Kelas Anda]'),
            Text('Kontak: [Kontak Anda]'),
            Text('Alamat: [Alamat Anda]'),
          ],
        ),
      ),
    );
  }
}
