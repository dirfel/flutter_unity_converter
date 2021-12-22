import 'package:flutter/material.dart';
import 'package:unity_converter/widgets/admob.dart';
import 'package:unity_converter/widgets/my_banner.dart';

class UnityScreenScaffold extends StatelessWidget {
  final String title;
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;
  UnityScreenScaffold({
    required this.title,
    required this.itemCount,
    required this.itemBuilder,
  });
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: null,
      // onWillPop: showAdAndPop(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          leading: BackButton(
            onPressed: showAdAndPop(context),
            // onPressed: null,
          ),
        ),
        body: Container(
          color: Theme.of(context).accentColor,
          child: Column(
            children: [
              Form(
                child: Expanded(
                  child: GridView.builder(
                    itemCount: itemCount,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 5,
                    ),
                    itemBuilder: itemBuilder,
                  ),
                ),
              ),
              MyBanner(),
            ],
          ),
        ),
      ),
    );
  }
}
