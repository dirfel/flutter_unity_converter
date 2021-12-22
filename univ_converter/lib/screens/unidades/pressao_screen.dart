import 'package:flutter/material.dart';
import 'package:unity_converter/data/convertion_datas.dart';
import 'package:unity_converter/widgets/convertion_tile.dart';
import 'package:unity_converter/widgets/unity_screen_scaffold.dart';

class PressaoScreen extends StatefulWidget {
  @override
  _PressaoScreenState createState() => _PressaoScreenState();
}

class _PressaoScreenState extends State<PressaoScreen> {
  @override
  Widget build(BuildContext context) {
    return UnityScreenScaffold(
      title: 'Conversão de Pressão',
      itemCount: pressao.length,
      itemBuilder: (context, index) {
        return ConvertionTile(
          listaUnidades: pressao[index],
        );
      },
    );
  }
}
