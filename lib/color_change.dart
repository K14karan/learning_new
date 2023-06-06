import 'package:flutter/material.dart';
import 'model/sub_category_model.dart';
class ColorChane extends StatefulWidget {
  const ColorChane({Key? key}) : super(key: key);

  @override
  State<ColorChane> createState() => _ColorChaneState();
}

class _ColorChaneState extends State<ColorChane> {
  List<String> temp=[];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount:monthData.length,
          itemBuilder: (context,index){
        return  GestureDetector(
          onTap:(){
            setState(() {
              if(temp.contains(monthData[index].months.toString())){
                temp.remove(monthData[index].months.toString());
              }else{
                temp.add(monthData[index].months.toString());
              }
            });
          },
          child:Card(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5)
              ),
              child: ListTile(
                leading:Text(monthData[index].months.toString(),style:const TextStyle(color:Colors.black,fontWeight: FontWeight.w500,fontSize: 16),),
                trailing: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color:temp.contains(monthData[index].months.toString())?Colors.red:Colors.green,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Text(temp.contains(monthData[index].months.toString())?"Remove":"Add",style:TextStyle(color:Colors.white,fontSize:16,fontWeight: FontWeight.w500),),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
