import 'package:flutter/material.dart';

class UnidadeDeTemperatura {
  String abreveatura = '';
  String unidade = '';
  double distCondencaEbule = 100;
  double aguacondensaEm = 0;
  bool padrao = false;
  TextEditingController controller = TextEditingController(text: '');

  UnidadeDeTemperatura({
    required this.abreveatura,
    required this.unidade,
    required this.distCondencaEbule,
    required this.aguacondensaEm,
    this.padrao = true,
    required this.controller,
  });
}

List<UnidadeDeTemperatura> temperaturas = [
  UnidadeDeTemperatura(
    abreveatura: 'ºC',
    unidade: 'Graus Celcius',
    distCondencaEbule: 100,
    aguacondensaEm: 0,
    padrao: true,
    controller: TextEditingController(text: ''),
  ),
  UnidadeDeTemperatura(
    abreveatura: 'K',
    unidade: 'Kelvin',
    distCondencaEbule: 100,
    aguacondensaEm: 273.15,
    controller: TextEditingController(text: ''),
  ),
  UnidadeDeTemperatura(
    abreveatura: 'ºF',
    unidade: 'Graus Fahrenheit',
    distCondencaEbule: 180,
    aguacondensaEm: 32,
    controller: TextEditingController(text: ''),
  ),
];
