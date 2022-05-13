import 'package:flutter/material.dart';
import 'package:flutter_module_shopping_mall/presentation/view/common_widgets/appbar_search_container.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/shopping_mall_main_screen/main_screen_controller.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/shopping_mall_main_screen/search_screen/search_screen.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/shopping_mall_main_screen/shopping_cart/shopping_cart.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'wish_list/wish_list.dart';

class ShoppingMAllMainScreenAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ShoppingMAllMainScreenAppbar({Key? key, required this.isTab, required this.isSearchBarActive,}) : super(key: key);

  final bool isTab;
  final bool isSearchBarActive;

  @override
  Widget build(BuildContext context) {
    Get.put(ReactiveDistanceController());

    final controller = Get.find<ReactiveDistanceController>();

    return AppBar(
      backgroundColor: Colors.white,
      title:  AppBarSearchContainer(hintText: '어떤 장비를 찾고 계십니까', isReadOnly: isSearchBarActive,),

      leading: isTab?null:Container(
          padding: const EdgeInsets.all((0)),
          child: IconButton(onPressed: (){
            controller.focusOut();
          }, icon: const Icon(Icons.arrow_back, color: Colors.black),)),

      bottom: isTab?const TabBar(labelColor: Colors.blue,unselectedLabelColor: Colors.grey,
        tabs: [
          Tab(text: '스토어홈',),
          Tab(text: '스토리',),
          Tab(text: '한정판',),
          Tab(text: '기획전',),
        ],):null,
      iconTheme: const IconThemeData(color: Colors.black),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(100);
}
