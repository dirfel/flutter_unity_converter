import 'package:flutter/material.dart';
import 'package:unity_converter/data/convertion_datas.dart';
import 'package:unity_converter/widgets/convertion_tile.dart';
import 'package:unity_converter/widgets/unity_screen_scaffold.dart';

class VolumesScreen extends StatefulWidget {
  @override
  _VolumesScreenState createState() => _VolumesScreenState();
}

class _VolumesScreenState extends State<VolumesScreen> {
  @override
  Widget build(BuildContext context) {
    return UnityScreenScaffold(
      title: 'Conversão de Volumes',
      itemCount: volumes.length,
      itemBuilder: (context, index) {
        return ConvertionTile(
          listaUnidades: volumes[index],
        );
      },
    );
  }
}
