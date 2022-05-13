import 'package:flutter/material.dart';
import 'package:flutter_module_shopping_mall/presentation/view/common_widgets/common_appbar.dart';

class WishList extends StatelessWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CommonAppBar(title: '위시리스트',),

        body: Scaffold(
          appBar: TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 2.0,color: Colors.blue),
              insets: EdgeInsets.symmetric(horizontal:50.0),
            ),

            labelColor: Colors.blue,unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(child: Text('2\n상품',textAlign: TextAlign.center),),
              Tab(child: Text('2\n브랜드',textAlign: TextAlign.center),),
            ],),
        ),
      ),
    );
  }
}
