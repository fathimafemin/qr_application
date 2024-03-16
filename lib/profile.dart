import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController phone = TextEditingController();
  TextEditingController email= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.cyan,
      body: Padding(
        padding: const EdgeInsets.all(8.10),
        child: Column(

          children: [
         CircleAvatar(radius:100,backgroundImage:NetworkImage('lib/images/img.png') ,),
           Text('VANILA MATHUES',style: TextStyle(fontSize: 25,color: Colors.white),),
            SizedBox(height: 10,),
            Text('FLUTTER DEVELOPER',style: TextStyle(fontSize: 25,color: Colors.white),),
            SizedBox(height: 10,),
           TextField(
          controller: phone,
          maxLines: 1,
          cursorColor: Colors.black,
          style: TextStyle(fontSize: 20, color: Colors.black),
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white70,
              border:
              OutlineInputBorder(borderSide: BorderSide(width: 10)),
              hintText: 'Enter phone'),
        ),
        SizedBox(height: 10,),
        TextField(
          controller: email,
          maxLines: 1,
          cursorColor: Colors.black,
          style: TextStyle(fontSize: 20, color: Colors.black),
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.cyan,
              border:
              OutlineInputBorder(borderSide: BorderSide(width: 10)),
              hintText: 'Enter Email Adress'),
        ),
            ],
            ),
      ),
    );





  }
}

