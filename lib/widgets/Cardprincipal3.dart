import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class CardPrincipal3 extends StatefulWidget {
  @override
  _CardPrincipalState createState() => _CardPrincipalState();
}

class _CardPrincipalState extends State<CardPrincipal3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)),
        color: Colors.white,
        elevation: 5,
        child: Center(
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.card_giftcard, color: Colors.grey,),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Nubank Rewards",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40, top: 16, right: 40, bottom: 40),
                child: Text(
                  "Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usa.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black
                  ),
                ),
              ),
              FlatButton(
                child: Text(
                  "ATIVE SEU REWARDS",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(103, 33, 111, 1),
                  ),
                ),
                shape: RoundedRectangleBorder(side: BorderSide(
                  color: Color.fromRGBO(103, 33, 111, 1),
                  width: 1,
                  style: BorderStyle.solid,
                ), borderRadius: BorderRadius.circular(5)),
              )
            ],
          ),
        )
      ),
    );
  }
}
