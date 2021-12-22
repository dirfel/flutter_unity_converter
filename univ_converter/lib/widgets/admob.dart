import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:native_admob_flutter/native_admob_flutter.dart';
import 'package:unity_converter/main.dart';

showAdAndClose() {
  interstitialAd.onEvent.listen((e) {
    final FullScreenAdEvent event = e.keys.first;
    switch (event) {
      case FullScreenAdEvent.closed:
        SystemNavigator.pop();
        break;
      default:
        break;
    }
  });
  if (!interstitialAd.isAvailable) {
    SystemNavigator.pop();
  } else {
    interstitialAd.show();
  }
  return true;
}

showAdAndPop(BuildContext context) {
  interstitialAd.onEvent.listen((e) {
    final FullScreenAdEvent event = e.keys.first;
    if (event == FullScreenAdEvent.closed) {
      interstitialAd.load();
    }
  });

  if (interstitialAd.isAvailable) {
    interstitialAd.show();
  }
}
