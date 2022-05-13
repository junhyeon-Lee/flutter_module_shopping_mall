import 'package:flutter/material.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/limited_edition/limited_edition.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/shopping_mall_main_screen/main_page_floating.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/shopping_mall_main_screen/main_screen_controller.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/shopping_mall_main_screen/side_my_information.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/special_exhibition/special_exhibition.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/store_home_screen/store_home_screen.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/story_screen/story_screen.dart';
import 'package:get/get.dart';
import 'Shopping_mall_main_screen_appbar.dart';


class ShoppingMallMainScreen extends StatelessWidget {

  const ShoppingMallMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isBool = false;

    Get.put(ReactiveDistanceController());
    final controller = Get.find<ReactiveDistanceController>();

    final deviceWidth = MediaQuery.of(context).size.width;
    return Obx(()=>controller.isSearchBarState.value?
     const Scaffold(
      appBar: ShoppingMAllMainScreenAppbar(isTab: false, isSearchBarActive: false,),body: Text('a'),)
        : Scaffold(
      floatingActionButton: ExpandableFab(
        distance: 112.0,
        children: [
          ActionButton(
            onPressed: (){},
            icon: const Icon(
              Icons.shopping_cart,color: Colors.white,
            ),

          ),
          ActionButton(
            onPressed: (){},
            icon: const Icon(
              Icons.bookmark_border,
            ),
          ),
          ActionButton(
            onPressed: (){},
            icon: const Icon(
              Icons.favorite_border,
            ),
          ),
        ],
      ),
      body: const DefaultTabController(length: 4,
        child: Scaffold(
          endDrawer: SideMyInformation(),
          appBar: ShoppingMAllMainScreenAppbar(isTab: true, isSearchBarActive: true,),
          body: TabBarView(children: [
            StoreHomeScreen(),
            StoryScreen(),
            LimitedEdition(),
            SpecialExhibitionScreen(),
          ]),

        ),

      ),
    ));
  }
}



