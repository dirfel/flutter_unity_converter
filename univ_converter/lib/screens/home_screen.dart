import 'package:flutter/material.dart';
import 'package:unity_converter/data/convertion_datas.dart';
import 'package:unity_converter/data/grid_item_data.dart';
import 'package:unity_converter/widgets/admob.dart';
import 'package:unity_converter/widgets/app_drawer.dart';
import 'package:unity_converter/widgets/my_banner.dart';

class HomeSrceen extends StatefulWidget {
  @override
  _HomeSrceenState createState() => _HomeSrceenState();
}

class _HomeSrceenState extends State<HomeSrceen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return showAdAndClose();
      },
      child: Scaffold(
        drawer: AppDrawer(),
        floatingActionButton: MyBanner(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          title: Text('Univ Converter'),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: Theme.of(context).accentColor,
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  itemCount: gridViewData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all(9)),
                        onPressed: () {
                          args = gridViewData[index].gridItemList;
                          Navigator.of(context)
                              .pushNamed(gridViewData[index].gridItemName);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: GridTile(
                            footer: Container(
                              height: 16,
                              child: FittedBox(
                                child: Text(
                                  gridViewData[index].gridItemName,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            child: Image.asset(
                              gridViewData[index].gridItemAdress,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: (MediaQuery.of(context).size.height >=
                              MediaQuery.of(context).size.width)
                          ? 3
                          : 5),
                ),
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
