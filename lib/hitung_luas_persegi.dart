import 'package:flutter/material.dart';

class HitungLuasPersegiScreen extends StatelessWidget {
  TextEditingController panjangController = TextEditingController();
  TextEditingController lebarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Luas Persegi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: panjangController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Panjang'),
            ),
            TextField(
              controller: lebarController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Lebar'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double panjang = double.parse(panjangController.text);
                double lebar = double.parse(lebarController.text);
                double luas = panjang * lebar;

                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Hasil Perhitungan'),
                      content: Text('Luas Persegi: $luas'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Hitung'),
            ),
          ],
        ),
      ),
    );
  }
}
