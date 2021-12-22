import 'package:flutter/material.dart';
import 'package:native_admob_flutter/native_admob_flutter.dart';

class MyBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BannerAd(
      builder: (context, child) {
        return Container(
          color: Colors.black,
          child: child,
          // alignment: Alignment.center,
        );
      },
      loading: Row(
        children: [CircularProgressIndicator()],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      error: Text(''),
      size: BannerSize.ADAPTIVE,
    );
  }
}
