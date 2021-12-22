import 'package:flutter/material.dart';
import 'package:unity_converter/data/convertion_datas.dart';
import 'package:unity_converter/widgets/convertion_tile.dart';
import 'package:unity_converter/widgets/unity_screen_scaffold.dart';

class MassaScreen extends StatefulWidget {
  @override
  _MassaScreenState createState() => _MassaScreenState();
}

class _MassaScreenState extends State<MassaScreen> {
  @override
  Widget build(BuildContext context) {
    return UnityScreenScaffold(
      title: 'Conversor de massa',
      itemCount: massa.length,
      itemBuilder: (context, index) {
        return ConvertionTile(
          listaUnidades: massa[index],
        );
      },
    );
  }
}
