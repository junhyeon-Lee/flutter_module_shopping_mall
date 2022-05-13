import 'package:flutter/material.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body:
      Center(
        child: ListView(
          shrinkWrap: true,
          children: const [
          StoryItemContainer(),
          StoryItemContainer(),
          StoryItemContainer(),
        ],)


      ),
    );
  }
}


class StoryItemContainer extends StatelessWidget {
  const StoryItemContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        width: deviceWidth*0.9, height: deviceWidth*0.9,
        decoration:const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/sample.png',
            ),
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Container(padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius:  BorderRadius.all(Radius.circular(4.0)),
                      ),
                      child: const Text('#브랜드스토리',style: TextStyle(color: Colors.white),)),
                  IconButton( icon: const Icon(Icons.bookmark_border_outlined,), color: Colors.grey,iconSize: 25,tooltip: '북마크',
                    onPressed: () => {},)
                ],
              ),
            ),
            Container(width:deviceWidth*0.9 ,height: 150,
              padding: const EdgeInsets.only(right: 10),
              decoration:BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(10.0), bottomRight: Radius.circular(10)),
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('앵글러의, 앵글러에 의한, 앵글러를 위한',style: TextStyle(color: Colors.white, fontSize: 22),),
                  Text('런커몰',style: TextStyle(color: Colors.white, fontSize: 25))
                ],),
            )
          ],
        ),
      ),
    );
  }
}
