import 'package:flutter/material.dart';
import 'package:unity_converter/data/convertion_datas.dart';
import 'package:unity_converter/widgets/convertion_tile.dart';
import 'package:unity_converter/widgets/unity_screen_scaffold.dart';

class MedidasScreen extends StatefulWidget {
  @override
  _MedidasScreenState createState() => _MedidasScreenState();
}

class _MedidasScreenState extends State<MedidasScreen> {
  @override
  Widget build(BuildContext context) {
    return UnityScreenScaffold(
      title: 'Conversor de medidas',
      itemCount: medidas.length,
      itemBuilder: (context, index) {
        return ConvertionTile(
          listaUnidades: medidas[index],
        );
      },
    );
  }
}
