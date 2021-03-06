import 'package:cubes/cubes.dart';
import 'package:eco_xepa/src/ui/pages/home/contents/education/education_page.dart';
import 'package:eco_xepa/src/ui/pages/home/contents/products/products_page.dart';
import 'package:eco_xepa/src/ui/pages/home/widgets/bottom_navigation.dart';
import 'package:eco_xepa/src/ui/pages/home/widgets/header_home.dart';
import 'package:eco_xepa/src/ui/pages/product_register/product_register_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TypeItemMenu itemSelected = TypeItemMenu.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderHome(),
            Expanded(
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                child: _buildContent(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: EcoBottomNavigation(
        onChange: (item) {
          setState(() {
            itemSelected = item;
          });
        },
        onAdd: () {
          context.goTo(ProductRegisterScreen());
        },
      ),
    );
  }

  Widget _buildContent() {
    switch (itemSelected) {
      case TypeItemMenu.home:
        return ProductPage();
      case TypeItemMenu.education:
        return EducationPage();
      default:
        return Container();
    }
  }
}
