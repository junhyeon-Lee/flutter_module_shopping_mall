import 'package:flutter/material.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/limited_edition/limited_edition.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/shopping_mall_main_screen/Shopping_mall_main_screen_appbar.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/special_exhibition/special_exhibition.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/store_home_screen/store_home_screen.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/story_screen/story_screen.dart';





class ShoppingMallMainScreen extends StatelessWidget {
  const ShoppingMallMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchContainerController = TextEditingController();
    final deviceWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(length: 4,
      child: Scaffold(
        appBar: ShoppingMAllMainScreenAppbar(controller: searchContainerController,),
        body: const TabBarView(children: [

          StoreHomeScreen(),
          StoryScreen(),
          LimitedEdition(),
          SpecialExhibitionScreen(),
        ]),
      ),
    );
  }
}
