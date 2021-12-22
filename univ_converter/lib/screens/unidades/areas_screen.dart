import 'package:flutter/material.dart';
import 'package:unity_converter/data/convertion_datas.dart';
import 'package:unity_converter/widgets/convertion_tile.dart';
import 'package:unity_converter/widgets/unity_screen_scaffold.dart';

class AreasScreen extends StatefulWidget {
  @override
  _AreasScreenState createState() => _AreasScreenState();
}

class _AreasScreenState extends State<AreasScreen> {
  @override
  Widget build(BuildContext context) {
    return UnityScreenScaffold(
      title: 'Conversão de Áreas',
      itemCount: areas.length,
      itemBuilder: (context, index) {
        return ConvertionTile(
          listaUnidades: areas[index],
        );
      },
    );
  }
}
