import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(ImageApp());
}

class ImageApp extends StatelessWidget {
  const ImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAPP(),
    );
  }
}

class MyAPP extends StatefulWidget {
  const MyAPP({super.key});

  @override
  State<MyAPP> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  var random = Random();
  var pic = "dog";
  void search() {
    setState(() {
      pic = i.text;
    });
  }

  TextEditingController i = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Image-Loader",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 15),
            const Text(
              "Pets Collection",
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 360,
                width: 450,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.asset(
                        "images/$pic.jpg",
                        width: 400,
                        height: 250,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 300,
                          child: TextField(
                              controller: i,
                              decoration: const InputDecoration(
                                  hintText:
                                      "Enter the name of a pet to view an image: ",
                                  hintStyle: TextStyle(
                                      color: Colors.blue, fontSize: 13))),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(20)),
                          child: ElevatedButton(
                            onPressed: search,
                            child: const Text(
                              "Search",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
