import 'package:flutter/material.dart';
import 'package:unity_converter/data/convertion_datas.dart';
import 'package:unity_converter/widgets/convertion_tile.dart';
import 'package:unity_converter/widgets/unity_screen_scaffold.dart';

class TempoScreen extends StatefulWidget {
  @override
  _TempoScreenState createState() => _TempoScreenState();
}

class _TempoScreenState extends State<TempoScreen> {
  @override
  Widget build(BuildContext context) {
    return UnityScreenScaffold(
      title: 'Conversor de tempo',
      itemCount: tempo.length,
      itemBuilder: (context, index) {
        return ConvertionTile(
          listaUnidades: tempo[index],
        );
      },
    );
  }
}
