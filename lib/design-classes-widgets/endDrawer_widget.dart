// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:psychology_app/design-classes-widgets/drawer_line_container.dart';
import 'package:psychology_app/design-classes-widgets/logo_image.dart';
import 'package:psychology_app/error-dialogs/student_logout_dialog.dart';
import 'package:psychology_app/routes.dart';
import 'package:psychology_app/styles.dart';

class EndDrawerWidget extends StatelessWidget {
  EndDrawerWidget({super.key});

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
                //drawerLine.buildDrawerLine(context),
                ListTile(
                  title: const Text(
                    'Anasayfa',
                    style: drawerTextStyle,
                  ),
                  contentPadding: contentAligment,
                  leading: homeIcon,
                  onTap: () {
                    Navigator.pushNamed(context, studentHomePageRoute);
                  },
                ),
                // drawerLine.buildDrawerLine(context),
                ListTile(
                  title: const Text(
                    'Çıkış Yap',
                    style: drawerTextStyle,
                  ),
                  contentPadding: contentAligment,
                  leading: logoutIcon,
                  onTap: () {
                    LogoutDialog.showLogOutDialog(context);
                  },
                ),
                //drawerLine.buildDrawerLine(context),
              ],
            ),
          ),
          Container(
            width: 12,
            height: MediaQuery.of(context).size.height,
            color: bgColor,
          ),
        ],
      ),
    );
  }
}
