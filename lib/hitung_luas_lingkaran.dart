import 'package:flutter/material.dart';

class HitungLuasLingkaranScreen extends StatelessWidget {
  TextEditingController jariJariController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Luas Lingkaran'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: jariJariController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Jari-Jari'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double jariJari = double.parse(jariJariController.text);
                double luas = 3.14 * jariJari * jariJari;

                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Hasil Perhitungan'),
                      content: Text('Luas Lingkaran: $luas'),
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
