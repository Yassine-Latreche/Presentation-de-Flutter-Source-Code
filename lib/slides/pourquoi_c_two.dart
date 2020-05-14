import 'package:flutter/material.dart';
import 'package:presentation/imports.dart';

class PourquoiCTwo extends StatefulWidget {
  @override
  _PourquoiCTwoState createState() => _PourquoiCTwoState();
}

int action = 0;

class _PourquoiCTwoState extends State<PourquoiCTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pourquoi ?'),
      ),
      drawer: NavigationDrawer(),
      body: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Color(white),
                child: Stack(
                  children: <Widget>[
                    FadeFromLeft(
                      child: SubTitleText(
                          text: 'Pourquoi ?',
                          textAlign: TextAlign.left,
                          color: gray),
                      order: 1,
                      action: action,
                      top: offset,
                      left: offset,
                    ),
                    FadeUp(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SimpleText(
                            text: 'Flutter utilse Dart, mais Qu\'est-ce ce que c\'est ?',
                            textAlign: TextAlign.left,
                            color: gray,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SimpleText(
                            text: 'Dart est un langage de programmation développé par la communauté Google.',
                            textAlign: TextAlign.left,
                            color: gray,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SimpleText(
                            text: 'Il est utilisé pour la programmation des WebApps, Server\'s Back-End et maintenant le mobile.',
                            textAlign: TextAlign.left,
                            color: gray,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SimpleText(
                            text: 'Ce language est interprété (JavaScript, Python...) et compiler (C, C++...).',
                            textAlign: TextAlign.left,
                            color: gray,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SimpleText(
                            text: 'L\'avantage d\'être un language interprété est le "Hot-Reload",',
                            textAlign: TextAlign.left,
                            color: gray,
                          ),
                          SimpleText(
                            text: 'Mise à jour de l’application en temps réel sans recompiler.',
                            textAlign: TextAlign.left,
                            color: gray,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SimpleText(
                            text: 'L\'avantage d\'être un language compiler est: la vitesse,',
                            textAlign: TextAlign.left,
                            color: gray,
                          ),
                          SimpleText(
                            text: 'Notre code sera compilé en langage machine (l\'avantage de Java et Swift).',
                            textAlign: TextAlign.left,
                            color: gray,
                          ),
                        ],
                      ),
                      order: 2,
                      action: action,
                      top: offset * 2 + 50,
                      left: offset,
                    ),
                    FadeUpBL(
                      child: Image(
                        image: AssetImage('images/logo_small.png'),
                      ),
                      order: 1,
                      action: action,
                      bottom: offset / 2,
                      left: offset / 2,
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () => setState(() {
                    action--;
                    if (action == -1) {
                      Navigator.popAndPushNamed(
                          context,
                          '/' +
                              (int.parse(ModalRoute.of(context)
                                          .settings
                                          .name
                                          .substring(1)) -
                                      1)
                                  .toString());
                    }
                  }),
                  child: Icon(Icons.navigate_before),
                ),
                FlatButton(
                  onPressed: () => setState(() {
                    action++;
                    if (action == 3) {
                      Navigator.popAndPushNamed(context, '/'+(int.parse(ModalRoute.of(context).settings.name.substring(1))+1).toString());
                    }
                  }),
                  child: Icon(Icons.navigate_next),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
