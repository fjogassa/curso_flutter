import 'package:flutter/material.dart';

class Desafio extends StatelessWidget {  

  String descricao = '';
  final void Function() quandoSelecionado;

  Desafio(this.descricao, this.quandoSelecionado);    

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(           
        child: Text(descricao),
        onPressed: quandoSelecionado
      ),               
    );
  }
}