import 'package:flutter/material.dart';
import 'package:presentation/imports.dart';

class Fin extends StatefulWidget {
  @override
  _FinState createState() => _FinState();
}

int action = 0;

class _FinState extends State<Fin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('La Fin'),
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
                color: Color(fblue),
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: FadeAnimation(
                        child: TitleText(
                            text: 'Merci pour votre\nattention',
                            textAlign: TextAlign.center,
                            color: white),
                        order: 1,
                        action: action,
                      ),
                    ),
                    FadeUpBR(
                      child: Image(
                        image: AssetImage('images/logo_white.png'),
                      ),
                      order: 1,
                      action: action,
                      bottom: offset / 2,
                      right: offset / 2,
                    ),
                    FadeUpBL(
                      child: SimpleText(
                          text: 'Yassine Latreche',
                          textAlign: TextAlign.left,
                          color: white),
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
