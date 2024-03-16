import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrproject/scan.dart';

class Qr extends StatefulWidget {
  const Qr({Key? key}) : super(key: key);

  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Padding(
        padding: const EdgeInsets.all(8.8),
        child: Column(
          children: [
            Align(
              child: Icon(
                Icons.account_circle_rounded,
                size: 192,
              ),
            ),
            QrImageView(
              data: '1234567890',
              version: QrVersions.auto,
              size: 200.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Scan()));
                },
                child: Text('SCAN'))
          ],
        ),
      ),
    );
  }
}
