import 'package:flutter/material.dart';
import 'package:side_menu_app/screens/appbar_screen.dart';
import 'package:side_menu_app/screens/wordpress.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarScreen(
        title: 'محصولات',
      ),
      body: SafeArea(
        child: WordPressPliginScreen(),
      ),
    );
  }
}
