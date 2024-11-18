import 'package:flutter/material.dart';
import 'package:psychology_app/design-classes-widgets/logo_image.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({super.key});

  final LogoImage logoImage = LogoImage(width: 30, height: 30);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Row(
        children: [
          Container(
            width: 12,
            height: MediaQuery.of(context).size.height,
            color: Color(0xFF063B6C),
          ),
          Expanded(
            //Sadece flex düzeni içinde çalışır (örn: row,column,flex)
            child: ListView(
              padding: EdgeInsets.only(top: 50),
              children: [
                SizedBox(
                  height: 200,
                  child: logoImage.buildImage(context),
                ),
                ListTile(
                  title: const Text('Kullanıcı Profili'),
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
