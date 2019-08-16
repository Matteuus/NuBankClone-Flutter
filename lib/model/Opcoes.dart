import 'package:flutter/material.dart';

class Opcoes{

  IconButton _iconeOpcao;
  String _nomeOpcao;

  Opcoes(this._iconeOpcao, this._nomeOpcao);

  String get nomeOpcao => _nomeOpcao;

  set nomeOpcao(String value) {
    _nomeOpcao = value;
  }

  IconButton get iconeOpcao => _iconeOpcao;

  set iconeOpcao(IconButton value) {
    _iconeOpcao = value;
  }


}