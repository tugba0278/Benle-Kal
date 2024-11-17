import 'package:flutter/material.dart';
import 'package:psychology_app/design-classes/home_page_grid.dart';
import 'package:psychology_app/design-classes/logo_image.dart';
import 'package:psychology_app/design-classes/stroke_text_widget.dart';
import 'package:psychology_app/routes.dart';
import 'package:psychology_app/styles.dart';

class StudentHomePage extends StatefulWidget {
  const StudentHomePage({super.key});

  @override
  State<StudentHomePage> createState() => _StudentHomePage();
}

class _StudentHomePage extends State<StudentHomePage> {
  final List<HomePageGrid> items = gridItemsList;
  List<String> routeList = gridRouteList;
  LogoImage logoImage = LogoImage(width: 30, height: 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StrokeText(text: 'Anasayfa'),
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: homeMenuVectorStyle),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
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
      body: Center(
        child: SizedBox(
          height: 800,
          width: 400,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // İki sütun
                crossAxisSpacing:
                    20, //soldan sağa iki container arası boşluk miktarı
                mainAxisSpacing:
                    20, //yukarıdan aşağıya iki container arası boşluk miktarı
                childAspectRatio: 1.0),
            padding: const EdgeInsets.all(30),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return GestureDetector(
                  //grid'in üstüne tıklandığında sayfaya geçiş yapmak için
                  onTap: () {
                    Navigator.pushNamed(context, routeList[index]);
                  },
                  child: //grid görünümü için container widget'ı
                      HomePageGrid(imagePath: item.imagePath, text: item.text));
            },
          ),
        ),
      ),
    );
  }
}
