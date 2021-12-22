import 'package:flutter/material.dart';
import 'package:unity_converter/data/convertion_datas.dart';
import 'package:unity_converter/widgets/convertion_tile.dart';
import 'package:unity_converter/widgets/unity_screen_scaffold.dart';

class AnguloScreen extends StatefulWidget {
  @override
  _AnguloScreenState createState() => _AnguloScreenState();
}

class _AnguloScreenState extends State<AnguloScreen> {
  @override
  Widget build(BuildContext context) {
    return UnityScreenScaffold(
      title: 'Conversor de Ângulos',
      itemCount: angulo.length,
      itemBuilder: (context, index) {
        return ConvertionTile(
          listaUnidades: angulo[index],
        );
      },
    );
  }
}
