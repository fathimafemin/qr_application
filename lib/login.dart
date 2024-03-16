import 'package:flutter/material.dart';
import 'package:qrproject/code.dart';
import 'package:qrproject/registeration.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController log = TextEditingController();
  void enter() {
    print('login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Text(
          'LOGIN',
          style: TextStyle(
              color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.cyan,
      body: Padding(
        padding: const EdgeInsets.all(50.50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: name,
              style: TextStyle(fontSize: 20, color: Colors.black),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.cyan,
                  border: OutlineInputBorder(borderSide: BorderSide(width: 50)),
                  hintText: 'Enter NAME'),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              controller: password,
              style: TextStyle(fontSize: 20, color: Colors.black),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.cyan,
                  border:
                      OutlineInputBorder(borderSide: BorderSide(width: 100)),
                  hintText: 'Enter password'),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Qr()));
                },
                child: Text('LOGIN')),
            SizedBox(
              height: 20,
            ),
            TextButton(
              child: Text(
                'DONT HAVE AN ACCOUNT',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register()));

                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
