import 'package:flutter/material.dart';
import 'package:psychology_app/design-classes-widgets/drawer_line_container.dart';
import 'package:psychology_app/design-classes-widgets/logo_image.dart';
import 'package:psychology_app/styles.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({super.key});

  final LogoImage logoImage = LogoImage(width: 30, height: 30);
  final DrawerLineContainer drawerLine = DrawerLineContainer();
  final contentAligment = const EdgeInsets.only(left: 40);

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
                const SizedBox(
                  height: 30,
                ),
                drawerLine.buildDrawerLine(context),
                ListTile(
                  title: const Text(
                    'Terapiler',
                    style: drawerTextStyle,
                  ),
                  contentPadding: contentAligment,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                drawerLine.buildDrawerLine(context),
                ListTile(
                  title: const Text(
                    'Chat Bot',
                    style: drawerTextStyle,
                  ),
                  contentPadding: contentAligment,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                drawerLine.buildDrawerLine(context),
                ListTile(
                  title: const Text(
                    'Grup Terapisi',
                    style: drawerTextStyle,
                  ),
                  contentPadding: contentAligment,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                drawerLine.buildDrawerLine(context),
                ListTile(
                  title: const Text(
                    'Psikoloğum',
                    style: drawerTextStyle,
                  ),
                  contentPadding: contentAligment,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                drawerLine.buildDrawerLine(context),
                ListTile(
                  title: const Text(
                    'Hakkımızda',
                    style: drawerTextStyle,
                  ),
                  contentPadding: contentAligment,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                drawerLine.buildDrawerLine(context),
                ListTile(
                  title: const Text(
                    'Profilim',
                    style: drawerTextStyle,
                  ),
                  contentPadding: contentAligment,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                drawerLine.buildDrawerLine(context),
                ListTile(
                  title: const Text(
                    'İletişim',
                    style: drawerTextStyle,
                  ),
                  contentPadding: contentAligment,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                drawerLine.buildDrawerLine(context),
                ListTile(
                  title: const Text(
                    'Çıkış Yap',
                    style: drawerTextStyle,
                  ),
                  contentPadding: contentAligment,
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
