import 'package:flutter/material.dart';
class VerticalTabbarScreen extends StatefulWidget {
  const VerticalTabbarScreen({Key? key}) : super(key: key);

  @override
  State<VerticalTabbarScreen> createState() => _VerticalTabbarScreenState();
}

class _VerticalTabbarScreenState extends State<VerticalTabbarScreen> {
  int selectedIndex=0;
  PageController pageController=PageController();
  int pageCount=25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.cyanAccent,
      ),
      body:SafeArea(child: Row(
        children: [
          SizedBox(
            width:100,
            child:ListView.separated(itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){
                  setState(() {
                    selectedIndex=index;
                    pageController.jumpToPage(index);
                  });
                },
                child: Row(
                  children: [
                    AnimatedContainer(duration: const Duration(milliseconds: 400),
                   height: (selectedIndex==index)?50:0,
                      color: Colors.pinkAccent,
                      width: 5,
                    ),
                    Expanded(child: AnimatedContainer(
                      duration: const Duration(milliseconds: 400),
                      alignment: Alignment.center,
                      height: 40,
                      color: (selectedIndex==index)?Colors.green.withOpacity(.1):Colors.transparent,
                      padding: const EdgeInsets.symmetric(vertical:0,horizontal: 5),
                      child:Text("Tab $index"),
                    ))
                  ],
                ),
              );
            },
                separatorBuilder: (BuildContext context, int index){
              return const SizedBox(height: 5,);
                },
                itemCount:pageCount),
          ),
          Expanded(child: PageView(
            controller: pageController,
            children: [
             for(int i=0;i<pageCount;i++)
              Container(
                color: Colors.red,
                child:Text("data ${i}"),
              )
            ],
          ))
        ],
      ))
    );
  }
}
