import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class CardPrincipal2 extends StatefulWidget {
  @override
  _CardPrincipalState createState() => _CardPrincipalState();
}

class _CardPrincipalState extends State<CardPrincipal2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        color: Colors.white,
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.attach_money,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "NuConta",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    "Saldo disponível",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "R\$ 2.000,00",
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.black
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 60),
                ),
              ],
            ),
            Container(
              color: Color.fromRGBO(240, 240, 240, 1),
              child: Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.attach_money,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 220,
                      child: Text(
                          "Compra mais recente em Cantina Nero no valor de R\$ 84,00 hoje"),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
