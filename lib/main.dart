import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final first_name = TextEditingController();
  final second_name = TextEditingController();
  // final age = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('http')),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    // icon: Icon(Icons.person,size:30,color: Colors.black),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    focusColor: Colors.red,
                    hintText: "first name",
                    prefixIcon: Icon(Icons.mail, color: Colors.blueGrey[900]),
                    fillColor: Colors.grey[200]),
                controller: first_name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    // icon: Icon(Icons.person,size:30,color: Colors.black),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    focusColor: Colors.red,
                    hintText: "second name",
                    prefixIcon: Icon(Icons.mail, color: Colors.blueGrey[900]),
                    fillColor: Colors.grey[200]),
                controller: second_name,
              ),
            ),
            
            Center(
                child: ElevatedButton(
              onPressed: _makeGetRequest,
              child: Text("Press me"),
            )),
          ],
        ));
  }
  _makeGetRequest() async {
    final url = Uri.parse(_localhost());
    Response response = await post(url,
    headers: {"content-type":"application/json"},
    body: jsonEncode({
          "first_name": first_name.text,
          "second_name": second_name.text,
          
})
    );
    
  }

  String _localhost() {
    if (Platform.isAndroid)
      return 'http://127.0.0.1:5000/';
    else // for iOS simulator
      return 'http://localhost:5000/';
  }
}
