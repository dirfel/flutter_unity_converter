import 'package:flutter/material.dart';
import 'package:unity_converter/data/convertion_datas.dart';
import 'package:unity_converter/widgets/convertion_tile.dart';
import 'package:unity_converter/widgets/unity_screen_scaffold.dart';

class EnergiaScreen extends StatefulWidget {
  @override
  _EnergiaScreenState createState() => _EnergiaScreenState();
}

class _EnergiaScreenState extends State<EnergiaScreen> {
  @override
  Widget build(BuildContext context) {
    return UnityScreenScaffold(
      title: 'Conversor de energia',
      itemCount: energia.length,
      itemBuilder: (context, index) {
        return ConvertionTile(
          listaUnidades: energia[index],
        );
      },
    );
  }
}
