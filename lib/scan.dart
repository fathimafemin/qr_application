import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qrproject/profile.dart';

class Scan extends StatefulWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Padding(
        padding: const EdgeInsets.all(8.8),
        child: Column(
          children: [
            MobileScanner(
              // fit: BoxFit.contain,
              onDetect: (capture) {

              },
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Text('profile'))
          ],







        ),
      )

    );
  }
}
