import 'dart:convert';
import 'package:conversor_de_moedas/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const request = 'https://api.hgbrasil.com/finance?key=b3e784c2';

void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
          ),
          focusColor: Colors.red,
        ),
      ),
    ),
  );
}

Future<Map> getData() async {
  http.Response response = await http.get(Uri.parse(request));
  return json.decode(response.body);
}
