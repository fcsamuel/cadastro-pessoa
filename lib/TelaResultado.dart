import 'package:cadastropessoa/CadastroPessoa.dart';
import 'package:flutter/material.dart';

class TelaResultado extends StatefulWidget {
  String resultadoCadastro;
  TelaResultado({this.resultadoCadastro});

  @override
  _TelaResultadoState createState() => _TelaResultadoState();
}

class _TelaResultadoState extends State<TelaResultado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resultado do cadastro"),
      backgroundColor: Colors.purple,),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(widget.resultadoCadastro)
            ],
          ),
        ),
      ),
    );
  }
}
