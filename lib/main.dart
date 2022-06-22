import 'package:flutter/material.dart';
import './screens/login.dart';
import './screens/lista.dart';
import './screens/cadastro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      routes: {
        '/login': (context) => Login(),
        '/lista': (context) => Lista(),
        '/cadastro': (context) => Cadastro(),
      },
      initialRoute: '/login',
    );
  }
}