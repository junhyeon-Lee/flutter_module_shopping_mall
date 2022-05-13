import 'package:flutter/material.dart';
import 'package:flutter_module_shopping_mall/presentation/view/common_widgets/appbar_search_container.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/shopping_mall_main_screen/search_screen/search_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget
    implements PreferredSizeWidget{
  const SearchBar({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      title:  const AppBarSearchContainer(hintText: '검색어를 입력하세요', isReadOnly: false,),
      leading: Container(
        padding: const EdgeInsets.all((0)),
          child: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back, color: Colors.black),)),


      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}







