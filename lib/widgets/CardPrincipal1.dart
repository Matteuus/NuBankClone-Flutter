import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class CardPrincipal1 extends StatefulWidget {
  @override
  _CardPrincipalState createState() => _CardPrincipalState();
}

class _CardPrincipalState extends State<CardPrincipal1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)),
        color: Colors.white,
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.credit_card,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Cartão de crédito",
                          style: TextStyle(
                              color: Colors.grey
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "FATURA ATUAL",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(113, 193, 194, 1)),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "R\$",
                              style: TextStyle(
                                  fontSize: 32,
                                  color:
                                  Color.fromRGBO(113, 193, 194, 1)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                "1.258",
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color:
                                    Color.fromRGBO(113, 193, 194, 1)),
                              ),
                            ),
                            Text(
                              ",40",
                              style: TextStyle(
                                  fontSize: 32,
                                  color:
                                  Color.fromRGBO(113, 193, 194, 1)),
                            ),
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Limite disponível",
                            style: TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              "R\$ 4.830,00",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color:
                                  Color.fromRGBO(201, 213, 147, 1)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 60),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: Container(
                    height: 200,
                    width: 8,
                    child: FAProgressBar(
                      currentValue: 70,
                      maxValue: 100,
                      size: 5,
                      animatedDuration: Duration(seconds: 1),
                      direction: Axis.vertical,
                      verticalDirection: VerticalDirection.up,
                      borderRadius: 8,
                      backgroundColor: Colors.lightBlue,
                      progressColor: Colors.lightGreen,
                      changeColorValue: 75,
                      changeProgressColor: Colors.red,
                    ),
                  ),
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
                        Icons.fastfood,
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
