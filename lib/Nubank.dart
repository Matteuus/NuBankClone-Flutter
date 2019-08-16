import 'package:flutter/material.dart';
import 'package:nubank_flutter/model/Opcoes.dart';
import 'package:nubank_flutter/widgets/CardOpcoes.dart';
import 'package:nubank_flutter/widgets/CardPrincipal1.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:nubank_flutter/widgets/CardPrincipal2.dart';
import 'package:nubank_flutter/widgets/Cardprincipal3.dart';

class Nubank extends StatefulWidget {
  @override
  _NubankState createState() => _NubankState();
}

class _NubankState extends State<Nubank> with TickerProviderStateMixin {
  Opcoes opcoes1 = Opcoes(
      IconButton(
        icon: Icon(Icons.person_add, color: Colors.white),
      ),
      "Indicar amigos");
  Opcoes opcoes2 = Opcoes(
      IconButton(
        icon: Icon(Icons.attach_money, color: Colors.white),
      ),
      "Cobrar");
  Opcoes opcoes3 = Opcoes(
      IconButton(
        icon: Icon(Icons.attach_money, color: Colors.white),
      ),
      "Depositar");
  Opcoes opcoes4 = Opcoes(
      IconButton(
        icon: Icon(Icons.attach_money, color: Colors.white),
      ),
      "Transferir");
  Opcoes opcoes5 = Opcoes(
      IconButton(
        icon: Icon(Icons.settings, color: Colors.white),
      ),
      "Ajustar limite");
  Opcoes opcoes6 = Opcoes(
      IconButton(
        icon: Icon(Icons.attach_money, color: Colors.white),
      ),
      "Pagar");
  Opcoes opcoes7 = Opcoes(
      IconButton(
        icon: Icon(Icons.block, color: Colors.white),
      ),
      "Bloquear cartão");
  Opcoes opcoes8 = Opcoes(
      IconButton(
        icon: Icon(Icons.credit_card, color: Colors.white),
      ),
      "Cartão virtual");
  Opcoes opcoes9 = Opcoes(
      IconButton(
        icon: Icon(Icons.view_headline, color: Colors.white),
      ),
      "Organizar atalhos");

  int _paginaInicial = 0;

  bool _cardPrincipalVisivel = true;
  bool _cardOpcoesVisivel = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Opcoes> opcoes = List();
    opcoes.add(opcoes1);
    opcoes.add(opcoes2);
    opcoes.add(opcoes3);
    opcoes.add(opcoes4);
    opcoes.add(opcoes5);
    opcoes.add(opcoes6);
    opcoes.add(opcoes7);
    opcoes.add(opcoes8);
    opcoes.add(opcoes9);

    return Scaffold(
        backgroundColor: Color.fromRGBO(103, 33, 111, 1),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/nubank_logo.png"),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "Mateus",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
              ),
              SizedBox(
                height: 325,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    setState(() {
                      _paginaInicial = index;
                    });
                  },
                  children: <Widget>[
                    CardPrincipal1(),
                    CardPrincipal2(),
                    CardPrincipal3(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: SizedBox(
                  height: 10,
                  child: Center(
                    child: DotsIndicator(
                      dotsCount: 3,
                      position: _paginaInicial,
                      decorator: DotsDecorator(
                          color: Colors.grey,
                          activeColor: Colors.white,
                          spacing: EdgeInsets.all(2)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 45, left: 16),
                child: SizedBox(
                  height: 110,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: opcoes.length,
                      itemBuilder: (context, index) {
                        return CardOpcoes(opcoes.elementAt(index).iconeOpcao,
                            opcoes.elementAt(index).nomeOpcao);
                      }),
                ),
              ),
            ],
          ),
        )
    );
  }
}
