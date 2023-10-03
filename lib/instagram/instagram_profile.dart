import 'package:demo/instagram/tab/feed_view+page.dart';
import 'package:demo/instagram/tab/reels_view_page.dart';
import 'package:demo/instagram/tab/tag_view_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ProfileInstaPage extends StatefulWidget {
  const ProfileInstaPage({Key? key}) : super(key: key);

  @override
  State<ProfileInstaPage> createState() => _ProfileInstaPageState();
}

class _ProfileInstaPageState extends State<ProfileInstaPage> {
  final List<Widget>tabs=const[
    Tab(
      icon: Icon(Icons.image,color: Colors.grey,),

    ),
    Tab(
      icon: Icon(Icons.video_collection,color: Colors.grey,),

    ),
    Tab(
      icon: Icon(Icons.bookmark,color: Colors.grey,),

    )
  ];

  final List<Widget>tabBarView=const[
    FeedViewPage(),
    ReelsViewPage(),
    TagViewPage()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text("20",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(height: 5,),
                    Text("Following",style: TextStyle(color:Colors.grey,fontWeight: FontWeight.w500),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15.0,),
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          image: AssetImage("assets/image4.jpg")
                      ),
                      color:Colors.grey[400]
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("125.25k",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(height: 5,),
                    Text("Followers",style: TextStyle(color:Colors.grey,fontWeight: FontWeight.w500),)
                  ],
                )
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:const [
                Text("Rehan Shaikh",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),
             Padding(
               padding: EdgeInsets.symmetric(horizontal:4.0),
               child: Text("|"),
             ),

                Text("Developer",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),
              ],
            ),
            const SizedBox(height: 5,),
             Text("FrontEnd + Backend + Web Developer",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.w500),),
            const SizedBox(height: 5,),
            const Text("http:rehanshaikh.in.com",textAlign: TextAlign.center,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600),),
            const SizedBox(height: 10,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
               children: [
                 Expanded(child: Container(
                   alignment: Alignment.center,
                   padding: const EdgeInsets.all(12),
                   decoration: BoxDecoration(
                     color: Colors.grey.shade300,
                     borderRadius: BorderRadius.circular(8)
                   ),
                   child:const Text("Edit Profile",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                 )),
                 const SizedBox(
                   width: 20,
                 ),
                 Expanded(child: Container(
                   alignment: Alignment.center,
                   padding: const EdgeInsets.all(12),
                   decoration: BoxDecoration(
                       color: Colors.black,
                       borderRadius: BorderRadius.circular(8)
                   ),
                   child:const Text("Contact",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                 ))
               ],
              ),
            ),
            const SizedBox(
              height:10,
            ),
            TabBar(tabs: tabs),
            SizedBox(
              height: MediaQuery.of(context).size.height*1.35,
                child: TabBarView(children: tabBarView))
          ],
        ),
      ),
    );
  }
}
