import 'package:cadastropessoa/TelaResultado.dart';
import 'package:flutter/material.dart';

class CadastroPessoa extends StatefulWidget {
  @override
  _CadastroPessoaState createState() => _CadastroPessoaState();
}

class _CadastroPessoaState extends State<CadastroPessoa> {

  TextEditingController _nome = new TextEditingController();
  TextEditingController _sobrenome = new TextEditingController();
  TextEditingController _cpf = new TextEditingController();
  TextEditingController _usuario = new TextEditingController();
  TextEditingController _senha = new TextEditingController();
  TextEditingController _telefone = new TextEditingController();
  String _escolhaSexo;
  double _altura = 0;
  bool _hipertensao = false, _diabetes = false, _asma = false, _outro = false;
  String _resultado;

  void teste() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Pessoa"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20, top: 20, bottom: 20),
                child: Text(
                  "Insira os dados do cadastro",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.text,
                maxLength: 100,
                decoration: InputDecoration(labelText: "Informe seu nome"),
                controller: _nome,
              ),
              TextField(
                keyboardType: TextInputType.text,
                maxLength: 100,
                decoration: InputDecoration(labelText: "Informe seu sobrenome"),
                controller: _sobrenome,
              ),
              TextField(
                keyboardType: TextInputType.number,
                maxLength: 14,
                decoration: InputDecoration(labelText: "Informe seu CPF"),
                controller: _cpf,
              ),
              TextField(
                keyboardType: TextInputType.text,
                maxLength: 20,
                decoration: InputDecoration(labelText: "Defina um nome de usuário"),
                controller: _usuario,
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                maxLength: 15,
                decoration: InputDecoration(labelText: "Defina uma senha"),
                controller: _senha,
              ),
              TextField(
                keyboardType: TextInputType.number,
                maxLength: 14,
                decoration: InputDecoration(labelText: "Informe seu número de telefone"),
                controller: _telefone,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, top: 20, bottom: 20),
                child: Text(
                  "Sexo",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              RadioListTile(
                title: Text("Masculino"),
                value: "M",
                groupValue: _escolhaSexo,
                onChanged: (String escolhaSexo) {
                  setState(() {
                    _escolhaSexo = escolhaSexo;
                  });
                }
              ),
              RadioListTile(
                title: Text("Feminino"),
                value: "F",
                groupValue: _escolhaSexo,
                onChanged: (String escolhaSexo) {
                  setState(() {
                    _escolhaSexo = escolhaSexo;
                  });
                }
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, top: 20, bottom: 20),
                child: Text(
                  "Altura",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Slider(
                label: _altura.toStringAsPrecision(3),
                value: _altura,
                activeColor: Colors.purple,
                inactiveColor: Colors.purpleAccent,
                min: 0,
                max: 3,
                divisions: 100,
                onChanged: (double altura) {
                  setState(() {
                    _altura = altura;
                  });
                }
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, top: 20, bottom: 20),
                child: Text(
                  "Saúde",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              CheckboxListTile(
                title: Text("Hipertensão"),
                value: _hipertensao,
                onChanged: (bool value) {
                  setState(() {
                    _hipertensao = value;
                  });
                }
              ),
              CheckboxListTile(
                  title: Text("Diabetes"),
                  value: _diabetes,
                  onChanged: (bool value) {
                    setState(() {
                      _diabetes = value;
                    });
                  }
              ),
              CheckboxListTile(
                  title: Text("Asma"),
                  value: _asma,
                  onChanged: (bool value) {
                    setState(() {
                      _asma = value;
                    });
                  }
              ),
              CheckboxListTile(
                  title: Text("Outro"),
                  value: _outro,
                  onChanged: (bool value) {
                    setState(() {
                      _outro = value;
                    });
                  }
              ),
              Column(
                children: <Widget>[
                  Center(

                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: RaisedButton(
                      color: Colors.purple,
                      padding: EdgeInsets.all(10),
                      child: Text("Salvar", style: TextStyle(fontSize: 15, color: Colors.white),),
                      onPressed: () {
                        _resultado = "Nome: " + _nome.text + "\nSobrenome: " + _sobrenome.text
                            + "\nCPF : " + _cpf.text +  "\nSexo: " + _escolhaSexo
                            + "\nAltura: " + _altura.toStringAsPrecision(2)
                            + "\nCoriza: " + _hipertensao.toString()
                            + "\nTosse: " + _diabetes.toString()
                            + "\nEspiro: " + _asma.toString()
                            + "\nOutro: " + _outro.toString();
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TelaResultado(resultadoCadastro: _resultado,)));
                      },
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),

    );
  }
}
