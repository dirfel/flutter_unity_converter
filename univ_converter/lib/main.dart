import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:native_admob_flutter/native_admob_flutter.dart';
import 'package:unity_converter/screens/unidades/angulo_screen.dart';
import 'package:unity_converter/screens/unidades/areas_screen.dart';
import 'package:unity_converter/screens/home_screen.dart';
import 'package:unity_converter/screens/unidades/energia_screen.dart';
import 'package:unity_converter/screens/unidades/massa_screen.dart';
import 'package:unity_converter/screens/unidades/medidas_screen.dart';
import 'package:unity_converter/screens/unidades/pressao_screen.dart';
import 'package:unity_converter/screens/unidades/temperatura_screen.dart';
import 'package:unity_converter/screens/unidades/tempo_screen.dart';
import 'package:unity_converter/screens/unidades/velocidade_screen.dart';
import 'package:unity_converter/screens/unidades/volumes_screen.dart';

InterstitialAd interstitialAd = InterstitialAd(
  unitId: kDebugMode
      ? MobileAds.interstitialAdTestUnitId
      : 'ca-app-pub-9384445272804468/2869494666',
);
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await MobileAds.initialize(
    bannerAdUnitId: kDebugMode
        ? MobileAds.bannerAdTestUnitId
        : 'ca-app-pub-9384445272804468/3322449489',
    // interstitialAdUnitId: interstitialAd.unitId,
  );

  interstitialAd.load();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Univ Converter',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.amber,
        primaryColor: Colors.grey,
      ),
      home: HomeSrceen(),
      routes: {
        'Medidas': (context) => MedidasScreen(),
        'Áreas': (context) => AreasScreen(),
        'Volumes': (context) => VolumesScreen(),
        'Temperatura': (context) => TemperaturaScreen(),
        'Pressão': (context) => PressaoScreen(),
        'Moeda': (context) => MedidasScreen(),
        'Massa': (context) => MassaScreen(),
        'Energia': (context) => EnergiaScreen(),
        'Velocidade': (context) => VelocidadeScreen(),
        'Tempo': (context) => TempoScreen(),
        'Ângulo': (context) => AnguloScreen(),
      },
    );
  }
}
