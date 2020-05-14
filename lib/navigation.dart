import 'package:flutter/material.dart';
import 'package:presentation/imports.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: SimpleText(text: 'Diapositives', textAlign: TextAlign.left, color: gray,),
          ),
          ListTile(
            title: Text('1 • Couverture'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/1');
            },
          ),
          ListTile(
            title: Text('2 • Introduction'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/2');
            },
          ),
          ListTile(
            title: Text('3 • Introduction'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/3');
            },
          ),
          ListTile(
            title: Text('4 • Pourquoi ?'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/4');
            },
          ),
          ListTile(
            title: Text('5 • Pourquoi ?'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/5');
            },
          ),
          ListTile(
            title: Text('6 • Pourquoi ?'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/6');
            },
          ),
          ListTile(
            title: Text('7 • Pourquoi ?'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/7');
            },
          ),
          ListTile(
            title: Text('8 • Comment ?'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/8');
            },
          ),
          ListTile(
            title: Text('9 • Comment ?'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/9');
            },
          ),
          ListTile(
            title: Text('10 • Comment ?'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/10');
            },
          ),
          ListTile(
            title: Text('11 • Comment ?'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/11');
            },
          ),
          ListTile(
            title: Text('12 • Démo'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/12');
            },
          ),
          ListTile(
            title: Text('13 • Démo'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/13');
            },
          ),
          ListTile(
            title: Text('14 • Apprendre'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/14');
            },
          ),
          ListTile(
            title: Text('15 • Apprendre'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/15');
            },
          ),
          ListTile(
            title: Text('16 • La Fin'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/16');
            },
          ),
        ],
      ),
    );
  }
}
