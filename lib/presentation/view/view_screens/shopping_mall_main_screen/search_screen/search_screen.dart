import 'package:flutter/material.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/shopping_mall_main_screen/search_screen/search_bar.dart';
import 'search_screen_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final brandImage=['assets/images/pika.png','assets/images/pika.png','assets/images/pika.png','assets/images/pika.png',
      'assets/images/pika.png','assets/images/pika.png','assets/images/pika.png','assets/images/pika.png',];
    final category=['낚시대','릴','낚시줄','찌','루어,미끼(베이트)','낚시바늘(훅)','봉돌(싱커)추','세트','기타','가방/의류'];

    return  Scaffold(
      appBar: const SearchBar(),
      body: Container(

        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('최근 검색어',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                Text('모두 지우기',style: TextStyle(color: Colors.grey,fontSize: 12),),
              ],
            ),

            const SizedBox(height: 10,),

            Row(children: const [
              RecentSearches( text: '낚시줄',),
              RecentSearches( text: '낚시줄',),
              RecentSearches( text: '낚시줄',),
            ],),

            const SizedBox(height: 10,),
            Row(
              children: const [
                Text('카테고리',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
              ],
            ),
            const SizedBox(height: 10,),

            GridView.count(shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 5 / 1,
              children: List.generate(category.length, (index) {
                return SearchCategory(text: category[index], index: index,);
              }),),

            const SizedBox(height: 10,),

            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('브랜드 페이지',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                Text('전체 보기',style: TextStyle(color: Colors.grey,fontSize: 12),),
              ],
            ),
            const SizedBox(height: 10,),

            GridView.count(shrinkWrap: true,
              crossAxisCount: 4,
          mainAxisSpacing: 10, //수평 Padding
          crossAxisSpacing: 10, //수직 Padding
          children: List.generate(brandImage.length, (index) {  //item 의 반목문 항목 형성
            return  const CircleAvatar( backgroundImage: AssetImage('assets/images/pika.png'),);}),
            )
          ],
        ),
      ),
    );
  }
}
