import 'package:flutter/material.dart';
import 'presentation/view/view_screens/shopping_mall_main_screen/shopping_mall_main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ShoppingMallMainScreen(),
    );
  }
}


