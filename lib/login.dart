import 'package:flutter/material.dart';
import 'package:world_of_shopping/Model/API.dart';
import 'package:http/http.dart' as http;
import 'main.dart';
import 'dart:convert';
import 'Model/API.dart' as ht;

//import 'Model/API.dart';
import 'Model/user.dart';

void main() {
  runApp(Login());
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phone = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              textArea(),
              inputArea(),
            ],
          ),
        ),
      ),
    );
  }

  Widget textArea() {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 73, 0, 0),
          child: Text(
            'Welcome',
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'Lobster',
              color: Color.fromARGB(255, 22, 54, 91),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 123, 0, 0),
          child: Text(
            'To',
            style: TextStyle(
              fontFamily: 'Lobster',
              fontSize: 50,
              color: Color.fromARGB(255, 22, 54, 91),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 173, 0, 0),
          child: Text(
            'SnoWhite',
            style: TextStyle(
              fontFamily: 'Lobster',
              fontSize: 50,
              color: Color.fromARGB(255, 22, 54, 91),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(230, 160, 0, 0),
          child: Text(
            '.',
            style: TextStyle(
                fontFamily: 'Lobster',
                fontSize: 70,
                color: Color.fromARGB(255, 165, 192, 222),
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  GlobalKey<FormState> _key = new GlobalKey<FormState>();
  User user = new User();
  Widget inputArea() {
    return SingleChildScrollView(
        child: Form(
      key: _key,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Phone',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 22, 54, 91),
                  ),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter The Phone Number";
                } else if (value.length < 9) {
                  return "The phone number must consist from 9 numbers";
                } else
                  return null;
              },
              onChanged: (value) {
                user.phone = int.tryParse(value);
              },
              maxLength: 9,
              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'passoword',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 22, 54, 91),
                  ),
                ),
              ),
              obscureText: true,
              validator: ((value) {
                if (value!.isEmpty) {
                  return "Please Enter The Password";
                } else
                  return null;
              }),
              onChanged: (value) {
                user.password = value;
              },
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                alignment: Alignment(1, 0),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    'forget passowerd?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 22, 54, 91),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              child: Material(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(255, 165, 192, 222),
                  child: InkWell(
                    onTap: () {
                      if (_key.currentState!.validate()) {
                        Map<String, dynamic> data = user.toJson();
                        ht.Httprequestss.post(context, data);
                      }
                    },
                    child: Center(
                      child: Text(
                        'login',
                        style: TextStyle(
                          color: Color.fromARGB(255, 22, 54, 91),
                        ),
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    ));
  }
}
