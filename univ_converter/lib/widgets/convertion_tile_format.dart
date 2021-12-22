import 'package:flutter/material.dart';

class ConvertionTileFormat extends StatelessWidget {
  final Widget child;
  ConvertionTileFormat({
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child,
      ),
    );
  }
}
