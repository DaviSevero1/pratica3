import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Icon(Icons.add_alert, size: 72, color: Colors.amberAccent,),
          Text('Despertador', style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.orange
          ),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Email"),
            ),
          ),
          TextField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              label: Text("Senha"),
            ),
          ),
          TextButton(
            child: Text('ENTRAR'),
            onPressed: () {
              Navigator.pushNamed(context, '/lista');
            },
          )
        ],
      ),
    );
  }
}