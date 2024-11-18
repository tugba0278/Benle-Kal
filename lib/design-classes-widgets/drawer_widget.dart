import 'package:flutter/material.dart';
import 'package:psychology_app/design-classes-widgets/drawer_line_container.dart';
import 'package:psychology_app/design-classes-widgets/logo_image.dart';
import 'package:psychology_app/styles.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({super.key});

  final LogoImage logoImage = LogoImage(width: 30, height: 30);
  final DrawerLineContainer drawerLine = DrawerLineContainer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.7,
      backgroundColor: whiteColor,
      child: Row(
        children: [
          Container(
            width: 12,
            height: MediaQuery.of(context).size.height,
            color: bgColor,
          ),
          Expanded(
            //Sadece flex düzeni içinde çalışır (örn: row,column,flex)
            child: ListView(
              padding: const EdgeInsets.only(top: 50),
              children: [
                SizedBox(
                  height: 200,
                  child: logoImage.buildImage(context),
                ),
                drawerLine.buildDrawerLine(context),
                ListTile(
                  title: const Text('Terapiler'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                drawerLine.buildDrawerLine(context),
                ListTile(
                  title: const Text('Chat Bot'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                drawerLine.buildDrawerLine(context),
                ListTile(
                  title: const Text('Grup Terapisi'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                drawerLine.buildDrawerLine(context),
                ListTile(
                  title: const Text('Psikoloğum'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                drawerLine.buildDrawerLine(context),
                ListTile(
                  title: const Text('Hakkımızda'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                drawerLine.buildDrawerLine(context),
                ListTile(
                  title: const Text('Profilim'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                drawerLine.buildDrawerLine(context),
                ListTile(
                  title: const Text('İletişim'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                drawerLine.buildDrawerLine(context),
                ListTile(
                  title: const Text('Çıkış Yap'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
