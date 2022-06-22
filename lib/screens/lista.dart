import 'package:flutter/material.dart';

class Lista extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Cadastrados'), actions: [
        IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () { Navigator.pushNamed(context, '/login');},
        ),
      ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            title: Text("Comando ${index+1}"),
            trailing: Text("00:00 - 00/00/0000"),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.orange),

          onPressed: () {
            Navigator.pushNamed(context, '/cadastro');
        },
      ),
    );
  }
}