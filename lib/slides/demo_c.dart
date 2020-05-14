import 'package:flutter/material.dart';
import 'package:presentation/imports.dart';

class DemoC extends StatefulWidget {
  @override
  _DemoCState createState() => _DemoCState();
}

int action = 0;

class _DemoCState extends State<DemoC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Démo'),
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
                          text: 'Démo',
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
                            text: 'Une grande démonstration qui couvre ce dont nous avons parlé sera ...',
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
                    FadeUp(
                      child: TitleText(
                        text: 'Cette Présentation !',
                        textAlign: TextAlign.left,
                        color: gray,
                      ),
                      order: 3,
                      action: action,
                      top: offset * 2 + 50 + 80,
                      left: offset,
                    ),
                    FadeUp(
                      child: SimpleText(
                        text: 'Voyons donc le code sur GitHub !',
                        textAlign: TextAlign.left,
                        color: gray,
                      ),
                      order: 4,
                      action: action,
                      top: offset * 2 + 50 + 230, 
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
                    if (action == 5) {
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
