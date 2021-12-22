import 'package:flutter/material.dart';

class Medida {
  String abreveatura = '';
  String unidade = '';
  double fator = 1;
  bool padrao = false;
  TextEditingController controller = TextEditingController(text: '');

  Medida({
    required this.abreveatura,
    required this.unidade,
    required this.fator,
    this.padrao = true,
    required this.controller,
  });
}

List args = [];
/*----------------MEDIDAS----------------------------*/
List<Medida> medidas = [
  Medida(
    abreveatura: 'm',
    unidade: 'metro',
    fator: 1,
    padrao: true,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'μm',
    unidade: 'micrômetro',
    fator: 0.000001,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'mm',
    unidade: 'milímetro',
    fator: 0.001,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'cm',
    unidade: 'centimetro',
    fator: 0.01,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'dm',
    unidade: 'decímetro',
    fator: 0.1,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'dam',
    unidade: 'decâmetro',
    fator: 10,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'hm',
    unidade: 'hectômetro',
    fator: 100,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'km',
    unidade: 'quilômetro',
    fator: 1000,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'pol',
    unidade: 'polegada',
    fator: 0.0254,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'pé',
    unidade: 'pé',
    fator: 0.3048,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'jd',
    unidade: 'jarda',
    fator: 0.91,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'ml',
    unidade: 'milha',
    fator: 1609.34,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'lg',
    unidade: 'légua',
    fator: 4828.032,
    controller: TextEditingController(text: ''),
  ),
];

/*----------------AREAS----------------------------*/
List<Medida> areas = [
  Medida(
    abreveatura: 'm²',
    unidade: 'metro quadrado',
    fator: 1,
    padrao: true,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'mm²',
    unidade: 'milímetro quadrado',
    fator: 0.000001,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'cm²',
    unidade: 'centimetro quadrado',
    fator: 0.0001,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'dm²',
    unidade: 'decímetro quadrado',
    fator: 0.01,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'dam²',
    unidade: 'decâmetro quadrado',
    fator: 100,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'hm²',
    unidade: 'hectômetro quadrado',
    fator: 10000,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'km²',
    unidade: 'quilômetro quadrado',
    fator: 1000000,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'ha',
    unidade: 'hequitare',
    fator: 10000,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'Alq SP',
    unidade: 'alqueire SP',
    fator: 24200,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'Alq GO, MG',
    unidade: 'alqueire GO, MG',
    fator: 48400,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'Alq BA',
    unidade: 'Alqueire BA',
    fator: 96800,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'Alq Norte',
    unidade: 'Alqueire Norte',
    fator: 27225,
    controller: TextEditingController(text: ''),
  ),
];

/*----------------VOLUMES----------------------------*/
List<Medida> volumes = [
  Medida(
    abreveatura: 'm³',
    unidade: 'metro cúbico',
    fator: 1,
    padrao: true,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'mm³',
    unidade: 'milímetro cúbico',
    fator: 0.000000001,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'cm³',
    unidade: 'centimetro cúbico',
    fator: 0.000001,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'dm³',
    unidade: 'decímetro cúbico',
    fator: 0.001,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'dam³',
    unidade: 'decâmetro cúbico',
    fator: 1000,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'hm³',
    unidade: 'hectômetro cúbico',
    fator: 1000000,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'km³',
    unidade: 'quilômetro cúbico',
    fator: 1000000000,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'l',
    unidade: 'litro',
    fator: 1000,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'ml',
    unidade: 'litro',
    fator: 1000000000000,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'cl',
    unidade: 'litro',
    fator: 1000000000,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'dl',
    unidade: 'litro',
    fator: 1000000,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'dal',
    unidade: 'litro',
    fator: 1,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'hl',
    unidade: 'litro',
    fator: 0.001,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'kl',
    unidade: 'litro',
    fator: 0.000001,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'oz',
    unidade: 'onça',
    fator: 35211267605.6338028,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'bbl EUA',
    unidade: 'barril estadunidense',
    fator: 1000 / 158.987,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'bbl Imp',
    unidade: 'barril imperial',
    fator: 1000 / 159.113,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'gal EUA',
    unidade: 'galão americano',
    fator: 1000 / 3.78541,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'gal Imp',
    unidade: 'galão imperial',
    fator: 1000 / 4.54609,
    controller: TextEditingController(text: ''),
  ),
];

/*----------------PRESSÃO----------------------------*/
List<Medida> pressao = [
  Medida(
    abreveatura: 'Pa',
    unidade: 'Pascal ou N/m²',
    fator: 1,
    padrao: true,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'atm',
    unidade: 'Atmosfera',
    fator: 1 / 0.0000098692,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'mmHg',
    unidade: 'Milímetro de mercúrio',
    fator: 1 / 0.00750062,
    controller: TextEditingController(text: ''),
  ),
];

/*----------------ENERGIA----------------------------*/

List<Medida> energia = [
  Medida(
    abreveatura: 'J',
    unidade: 'Joule',
    fator: 1,
    padrao: true,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'Cal',
    unidade: 'Caloria',
    fator: 1 / 4.186, //corrigir
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'Kwh',
    unidade: 'Quilowatt-hora',
    fator: 1 / 3600000,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'eV',
    unidade: 'Elétron-Volt',
    fator: 10000000000000000 / 0.001602,
    controller: TextEditingController(text: ''),
  ),
];

/*---------------MASSA--------------------*/
List<Medida> massa = [
  Medida(
    abreveatura: 'g',
    unidade: 'metro',
    fator: 1,
    padrao: true,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'μg',
    unidade: 'micrômetro',
    fator: 0.000001,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'mg',
    unidade: 'milímetro',
    fator: 0.001,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'cg',
    unidade: 'centimetro',
    fator: 0.01,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'dg',
    unidade: 'decímetro',
    fator: 0.1,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'dag',
    unidade: 'decâmetro',
    fator: 10,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'hg',
    unidade: 'hectômetro',
    fator: 100,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'kg',
    unidade: 'quilômetro',
    fator: 1000,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'oz',
    unidade: 'onça',
    fator: 28.3495,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'Quilate',
    unidade: 'Quilate',
    fator: 0.2,
    controller: TextEditingController(text: ''),
  ),
];

/*----------------Velocidade-----------------------*/
List<Medida> velocidade = [
  Medida(
    abreveatura: 'm/s',
    unidade: 'metros por segundo',
    fator: 1,
    padrao: true,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'Km/h',
    unidade: 'quilômetros por hora',
    fator: 0.277778,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'Mi/h',
    unidade: 'milha por hora',
    fator: 0.44704,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'Pe/s',
    unidade: 'Pés por segundo',
    fator: 0.3048,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'No',
    unidade: 'Nós',
    fator: 0.514444,
    controller: TextEditingController(text: ''),
  ),
];
/*----------------tempo-----------------------*/
List<Medida> tempo = [
  Medida(
    abreveatura: 's',
    unidade: 'segundos',
    fator: 1,
    padrao: true,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'min',
    unidade: 'minutos',
    fator: 60,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'h',
    unidade: 'hora',
    fator: 3600,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: 'd',
    unidade: 'dias',
    fator: 86400,
    controller: TextEditingController(text: ''),
  ),
];

/*------------------Angulo-----------------------*/
List<Medida> angulo = [
  Medida(
    abreveatura: 'º',
    unidade: 'grau',
    fator: 1,
    padrao: true,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: "'",
    unidade: 'minutos',
    fator: 1 / 60,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: "''",
    unidade: 'segundos',
    fator: 1 / 3600,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: "Rad",
    unidade: 'radianos',
    fator: 57.29577951308,
    controller: TextEditingController(text: ''),
  ),
  Medida(
    abreveatura: "'''",
    unidade: 'milesimos',
    fator: 0.05625,
    controller: TextEditingController(text: ''),
  ),
];
