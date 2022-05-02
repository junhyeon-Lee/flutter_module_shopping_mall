import 'package:flutter/material.dart';
import 'package:flutter_module_shopping_mall/presentation/view/common_widgets/appbar_search_container.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/shopping_mall_main_screen/shopping_cart/shopping_cart.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'wish_list/wish_list.dart';

class ShoppingMAllMainScreenAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ShoppingMAllMainScreenAppbar({Key? key, required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: AppBarSearchContainer(controller: controller, hintText: '어떤 장비를 찾고 계신가요?',),
      bottom: const TabBar(labelColor: Colors.blue,unselectedLabelColor: Colors.grey,
        tabs: [
          Tab(text: '스토어홈',),
          Tab(text: '스토리',),
          Tab(text: '한정판',),
          Tab(text: '기획전',),
        ],),
        actions: <Widget>[
          IconButton( icon: SvgPicture.asset('assets/svgs/favorite.svg',),color: Colors.black, tooltip: '위시리스트!',
            onPressed: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const WishList()),)
            }, ),
          IconButton( icon: SvgPicture.asset('assets/svgs/shopping_cart.svg',), color: Colors.black,tooltip: '장바구니',
            onPressed: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ShoppingCart()),)
            }, )
        ],
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(100);
}
