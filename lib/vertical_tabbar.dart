import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model/sub_category_data.dart';
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
        backgroundColor: Colors.cyanAccent.withOpacity(.1),
        title:const Text("Category",style:TextStyle(color: Colors.black),),
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
                color:Colors.blueGrey,
                child:GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent:180,
                        childAspectRatio: 0.7,
                        crossAxisSpacing:3,
                        mainAxisSpacing: 0.2),
                    itemCount:subCategoryData.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return GestureDetector(
                        onTap: () {
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top:1, bottom: 2),
                          height: MediaQuery.of(context).size.height * .11,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Image.asset(
                                    subCategoryData[index].image,
                                    height: 80,
                                    width:80,
                                  ),
                                )
                              ]),
                              Container(
                                padding: const EdgeInsets.fromLTRB(2, 5, 2, 2),
                                child:  Text(
                                  subCategoryData[index].productName,
                                ),
                              ),
                              Container(
                                  padding: const EdgeInsets.fromLTRB(5, 0, 2, 2),
                                  child: Row(
                                    children: [
                                      Text(subCategoryData[index].price, style: const TextStyle(
                                          fontSize: 15,
                                          color:Colors.white,
                                          fontFamily: "Avalon_Bold",
                                          fontWeight: FontWeight.bold),),
                                      const SizedBox(width: 10,),
                                      Text(subCategoryData[index].quantity,),
                                    ],
                                  )),
                              Container(
                                  padding: const EdgeInsets.fromLTRB(5, 5, 2, 2),
                                  child: Row(
                                    children: [
                                      Text(subCategoryData[index].discount,
                                      ),
                                      const SizedBox(width: 15,),
                                      Text(subCategoryData[index].off,
                                         )
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ))
        ],
      ))
    );
  }
}
