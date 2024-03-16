import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:qrproject/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController names = TextEditingController();
  TextEditingController roll = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  void register() async {
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/register');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Access-Control-Allow-Origin": "*",
          'Accept': '*/*'
          // Required for CORS support to work

        },
        body: jsonEncode({
          'name': names.text,
          'email': email.text,
          'rollno': roll.text,
          'password': pass.text,
        }));
   print(response.statusCode);
   print(response.body);
   var data =jsonDecode(response.body);
   print(data['message']);
    if (response.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['message'])));
    }
  }


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          title: Text(
            'REGISTERATION',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.8),
          child: Center(
            child: Column(
              children: [
                TextField(
                  controller: names,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.cyan,
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 10)),
                    hintText: 'Enter your NAME',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: roll,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.cyan,
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 10)),
                    hintText: 'Enter your rollnumber',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: email,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.cyan,
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 10)),
                      hintText: 'Enter your email'),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: pass,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.cyan,
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 10)),
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      register();
                    },
                    child: Text('SUBMIT')),
              ],
            ),
          ),
        ),
      );
    }
  }

