import 'package:flutter/material.dart';
import 'admob.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: [
            Container(
              height: 100,
              child: DrawerHeader(
                child: ListTile(
                  title: Text('Univ Converter'),
                  subtitle: Text('Conversor de unidades'),
                  leading: Image.asset(
                    'lib/assets/images/img500-500.png',
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Theme.of(context).accentColor),
            ),
            ListTile(
              leading: Icon(Icons.info, color: Theme.of(context).accentColor),
              title: Text('Sobre o App'),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 300,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      onPressed: null,
                                      icon: Icon(
                                        Icons.close,
                                        color: Color.fromRGBO(1, 1, 1, 0),
                                      ),
                                    ),
                                    Text(
                                      'Sobre',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      icon: Icon(Icons.close),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Univ Converter permite que você converta unidades da mesma grandeza.\n\nNossas propagandas permitem que esse aplicativo seja grátis e cada vez melhor.\n\nDesenvolvido por FastUtilities.',
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton.icon(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      icon: Icon(
                                        Icons.arrow_back,
                                        color: Colors.black,
                                      ),
                                      label: Text('Voltar'),
                                    ),
                                    // TextButton.icon(
                                    //   onPressed: null,
                                    //   icon: Icon(
                                    //     Icons.star,
                                    //     color: Colors.black,
                                    //   ),
                                    //   label: Text('Avaliar'),
                                    // ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              },
            ),
            Divider(),
            // ListTile(
            //   leading: Icon(Icons.star_rate_rounded,
            //       color: Theme.of(context).accentColor),
            //   title: Text('Avaliar no Google Play'),
            //   onTap: () {
            //     // implementar
            //   },
            // ),
            // Divider(),
            // ListTile(
            //   title: Text('Compartilhar Aplicativo'),
            //   leading: Icon(Icons.share, color: Theme.of(context).accentColor),
            //   onTap: () {
            //     //implementar
            //   },
            // ),
            // Divider(),
            // ListTile(
            //   title: Text('Ajuda'),
            //   leading: Icon(Icons.help, color: Theme.of(context).accentColor),
            //   onTap: () {
            //     // implementar
            //   },
            // ),
            // Divider(),
            ListTile(
              leading:
                  Icon(Icons.arrow_back, color: Theme.of(context).accentColor),
              title: Text('Voltar'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.close, color: Theme.of(context).accentColor),
              title: Text('Fechar'),
              onTap: () async {
                Navigator.of(context).pop();
                showAdAndClose();
              },
            ),
          ],
        ),
      ),
    );
  }
}
