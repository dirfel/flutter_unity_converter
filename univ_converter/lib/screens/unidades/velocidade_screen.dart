import 'package:flutter/material.dart';
import 'package:unity_converter/data/convertion_datas.dart';
import 'package:unity_converter/widgets/convertion_tile.dart';
import 'package:unity_converter/widgets/unity_screen_scaffold.dart';

class VelocidadeScreen extends StatefulWidget {
  @override
  _VelocidadeScreenState createState() => _VelocidadeScreenState();
}

class _VelocidadeScreenState extends State<VelocidadeScreen> {
  @override
  Widget build(BuildContext context) {
    return UnityScreenScaffold(
      title: 'Conversor de velocidade',
      itemCount: velocidade.length,
      itemBuilder: (context, index) {
        return ConvertionTile(
          listaUnidades: velocidade[index],
        );
      },
    );
  }
}
