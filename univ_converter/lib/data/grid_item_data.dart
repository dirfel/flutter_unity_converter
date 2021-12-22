import 'package:unity_converter/data/convertion_datas.dart';
import 'package:unity_converter/data/unidades_especiais.dart';

class GridItemData {
  String gridItemName;
  String gridItemAdress;
  List<dynamic> gridItemList;

  GridItemData({
    required this.gridItemName,
    required this.gridItemAdress,
    required this.gridItemList,
  });
}

List<GridItemData> gridViewData = [
  GridItemData(
    gridItemName: 'Medidas',
    gridItemAdress: 'lib/assets/images/distance.png',
    gridItemList: medidas,
  ),
  GridItemData(
    gridItemName: 'Áreas',
    gridItemAdress: 'lib/assets/images/area.png',
    gridItemList: areas,
  ),
  GridItemData(
    gridItemName: 'Volumes',
    gridItemAdress: 'lib/assets/images/volume.png',
    gridItemList: volumes,
  ),
  GridItemData(
    gridItemName: 'Temperatura',
    gridItemAdress: 'lib/assets/images/temperatura.png',
    gridItemList: temperaturas, //corrigir
  ),
  GridItemData(
    gridItemName: 'Pressão',
    gridItemAdress: 'lib/assets/images/pressao.png',
    gridItemList: pressao,
  ),
  // GridItemData(
  //   gridItemName: 'Moeda',
  //   gridItemAdress: 'lib/assets/images/moeda.png',
  //   gridItemList: medidas,
  // ),
  GridItemData(
    gridItemName: 'Massa',
    gridItemAdress: 'lib/assets/images/peso.png',
    gridItemList: massa,
  ),
  GridItemData(
    gridItemName: 'Energia',
    gridItemAdress: 'lib/assets/images/energia.png',
    gridItemList: energia,
  ),
  GridItemData(
    gridItemName: 'Velocidade',
    gridItemAdress: 'lib/assets/images/velocidade.png',
    gridItemList: velocidade,
  ),
  GridItemData(
    gridItemName: 'Tempo',
    gridItemAdress: 'lib/assets/images/tempo.png',
    gridItemList: tempo,
  ),
  GridItemData(
    gridItemName: 'Ângulo',
    gridItemAdress: 'lib/assets/images/angulo.png',
    gridItemList: angulo,
  ),
];
