import 'package:flutter/material.dart';
import 'package:unity_converter/data/unidades_especiais.dart';
import 'package:unity_converter/widgets/convertion_tile_format.dart';
import 'package:unity_converter/widgets/unity_screen_scaffold.dart';

class TemperaturaScreen extends StatefulWidget {
  @override
  _TemperaturaScreenState createState() => _TemperaturaScreenState();
}

class _TemperaturaScreenState extends State<TemperaturaScreen> {
  @override
  Widget build(BuildContext context) {
    return UnityScreenScaffold(
      title: 'Conversor de Temperaturas',
      itemCount: temperaturas.length,
      itemBuilder: (context, index) {
        return ConvertionTileFormat(
          child: ListTile(
            leading: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.chevron_right_outlined,
                  color: Theme.of(context).accentColor,
                )),
            title: TextFormField(
              cursorColor: Colors.white,
              controller: temperaturas[index].controller,
              onFieldSubmitted: (newValue) {
                temperaturas.forEach((convertUnity) {
                  setState(() {
                    convertUnity
                        .controller.text = (((double.tryParse(newValue)! -
                                        temperaturas[index].aguacondensaEm) /
                                    temperaturas[index].distCondencaEbule) *
                                convertUnity.distCondencaEbule +
                            convertUnity.aguacondensaEm)
                        .toString();
                  });
                });
              },
              keyboardType:
                  TextInputType.numberWithOptions(signed: true, decimal: true),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: temperaturas[index].abreveatura,
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text(
                          '${temperaturas[index].unidade} (${temperaturas[index].abreveatura}).')),
                );
              },
              icon: Icon(Icons.help),
              color: Colors.black,
            ),
          ),
        );
      },
    );
  }
}
