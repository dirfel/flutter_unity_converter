import 'package:flutter/material.dart';
import 'package:unity_converter/data/convertion_datas.dart';
import 'package:unity_converter/widgets/convertion_tile_format.dart';

class ConvertionTile extends StatefulWidget {
  final listaUnidades;
  ConvertionTile({required this.listaUnidades});

  @override
  _ConvertionTileState createState() =>
      _ConvertionTileState(medida: listaUnidades);
}

class _ConvertionTileState extends State<ConvertionTile> {
  Medida medida;
  _ConvertionTileState({required this.medida});
  @override
  Widget build(BuildContext context) {
    return ConvertionTileFormat(
      child: ListTile(
        leading: IconButton(
            onPressed: null,
            icon: Icon(
              Icons.chevron_right_outlined,
              color: Colors.yellow,
            )),
        title: Padding(
          padding: EdgeInsets.all(8),
          child: TextFormField(
            cursorColor: Colors.white,
            controller: medida.controller,
            onFieldSubmitted: (newValue) {
              args.forEach((convertUnity) {
                setState(() {
                  convertUnity.controller.text =
                      ((double.tryParse(newValue)! / convertUnity.fator) *
                              medida.fator)
                          .toString();
                });
              });
            },
            keyboardType:
                TextInputType.numberWithOptions(signed: true, decimal: true),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              labelText: medida.abreveatura,
              labelStyle: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        trailing: IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text(
                      '1 ${medida.unidade} (${medida.abreveatura}) = ${medida.fator} da unidade padão.')),
            );
            // Adicionar a favoritos
          },
          icon: Icon(Icons.help),
          color: Colors.black,
        ),
      ),
    );
  }
}
