import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Novo Comando'),
        actions: [
          TextButton(child: const Text('Salvar',
            style: TextStyle(color: Colors.greenAccent),),
            onPressed: () => { Navigator.pushNamed(context, '/lista')},)
        ],
      ),
      body: Column(
        children: const [
          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              label: Text("Nome"),
            ),
          ),
          TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                label: Text("Horário/Data")
            ),
          )
        ],
      ),
    );
  }
}