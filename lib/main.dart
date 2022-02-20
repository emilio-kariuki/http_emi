import 'package:flutter/material.dart';

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
  final age = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('http')),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    // icon: Icon(Icons.person,size:30,color: Colors.black),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    focusColor: Colors.red,
                    hintText: "Email",
                    prefixIcon: Icon(Icons.mail, color: Colors.blueGrey[900]),
                    fillColor: Colors.grey[200]),
                controller: first_name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    // icon: Icon(Icons.person,size:30,color: Colors.black),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    focusColor: Colors.red,
                    hintText: "Email",
                    prefixIcon: Icon(Icons.mail, color: Colors.blueGrey[900]),
                    fillColor: Colors.grey[200]),
                controller: second_name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    // icon: Icon(Icons.person,size:30,color: Colors.black),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    focusColor: Colors.red,
                    hintText: "Email",
                    prefixIcon: Icon(Icons.mail, color: Colors.blueGrey[900]),
                    fillColor: Colors.grey[200]),
                controller: age,
              ),
            ),
            Center(
                child: ElevatedButton(
              onPressed: () {},
              child: Text("Press me"),
            )),
          ],
        ));
  }
}
