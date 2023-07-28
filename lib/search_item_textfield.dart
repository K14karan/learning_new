import 'package:flutter/material.dart';
class SearchFromListView extends StatefulWidget {
  const SearchFromListView({Key? key}) : super(key: key);

  @override
  State<SearchFromListView> createState() => _SearchFromListViewState();
}

class _SearchFromListViewState extends State<SearchFromListView> {
  List <Map<String,dynamic>>allUser=[
    {"id":1,"name":"ram","age":20},
    {"id":2,"name":"shyam","age":21},
    {"id":3,"name":"rohit","age":22},
    {"id":4,"name":"mojito","age":23},
    {"id":5,"name":"kanban","age":24},
    {"id":6,"name":"ram","age":25},
    {"id":7,"name":"sharia","age":26},
    {"id":8,"name":"Prabhakar","age":27},
    {"id":9,"name":"karan","age":28},
    {"id":10,"name":"brackish","age":29},
  ];

  List <Map<String,dynamic>>getList=[];
  @override
  void initState() {
    // TODO: implement initState
    getList=allUser;
    super.initState();
  }
  void _runFilter(String enterKeyword){
    List <Map<String,dynamic>>?result=[];
    if(enterKeyword.isEmpty){
      result=allUser;
    }
    else{
      result =allUser.where((user) =>
      user["name"].toLowerCase().contains(enterKeyword.toLowerCase())).toList();
    }
   setState(() {

     getList=result!;
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        child: Column(
          children: [
            TextFormField(
              onChanged:(value)=>_runFilter(value),
              decoration: const InputDecoration(
                hintText: "Search"
              ),
            ),
            Expanded(child: ListView.builder(
                itemCount: getList.length,
                itemBuilder: (context,index){
                  return Container(
                    key: ValueKey(getList[index]["id"]),
                    child: ListTile(
                      title:Text(getList[index]["name"].toString()) ,
                      subtitle:Text("${getList[index]["age"].toString()} year old") ,
                    ),
                  );
                }),)
          ],
        ),
      )
    );
  }
}
