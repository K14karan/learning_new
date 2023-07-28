import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
class FeedViewPage extends StatefulWidget {
  const FeedViewPage({Key? key}) : super(key: key);

  @override
  State<FeedViewPage> createState() => _FeedViewPageState();
}

class _FeedViewPageState extends State<FeedViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MasonryGridView.builder(
        itemCount:9 ,
         physics: const NeverScrollableScrollPhysics(),
          padding:const EdgeInsets.symmetric(horizontal:2,),
          gridDelegate:const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/image${index+1}.jpg')),
            );
          }
      ),
    );
  }
}
