import 'package:cubes/cubes.dart';
import 'package:eco_xepa/src/ui/pages/home/pages/education_page.dart';
import 'package:eco_xepa/src/ui/pages/home/pages/products_page.dart';
import 'package:eco_xepa/src/ui/pages/home/widgets/bottom_navigation.dart';
import 'package:eco_xepa/src/ui/pages/register_product/register_product_screen.dart';
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
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: _buildContent(),
      ),
      bottomNavigationBar: EcoBottomNavigation(
        onChange: (item) {
          setState(() {
            itemSelected = item;
          });
        },
        onAdd: () {
          context.goTo(RegisterProductScreen());
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
