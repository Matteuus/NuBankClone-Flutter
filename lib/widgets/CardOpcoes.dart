import 'package:flutter/material.dart';
import 'package:nubank_flutter/model/Opcoes.dart';

class CardOpcoes extends StatefulWidget {

  IconButton _iconOpcao;
  String _nomeOpcao;

  CardOpcoes(this._iconOpcao, this._nomeOpcao);

  @override
  _CardOpcoesState createState() => _CardOpcoesState();
}

class _CardOpcoesState extends State<CardOpcoes> {

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)),
      color: Color.fromRGBO(135, 69, 166, 1),
      elevation: 5,
      child: Container(
        width: 100,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: widget._iconOpcao,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 8, right: 8),
              child: Text(
                widget._nomeOpcao,
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
