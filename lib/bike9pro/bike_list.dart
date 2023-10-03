import 'package:flutter/material.dart';

class BikeList extends StatefulWidget {
  const BikeList({Key? key}) : super(key: key);

  @override
  State<BikeList> createState() => _BikeListState();
}

class _BikeListState extends State<BikeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "My Vehicles",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/image1.jpg",height: 100,width: 100,),
                      SizedBox(width: MediaQuery.of(context).size.width*.02,),
                      Text("HF Delex Bike",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*.2,),
                  Row(
                    children: [
                      GestureDetector(
                        onTap:(){
                          showBottom();
                        },
                          child: Icon(Icons.edit,color: Colors.pink,size: 20,)),
                      SizedBox(width: MediaQuery.of(context).size.width*.02,),
                      Icon(Icons.delete,color: Colors.pink,size: 20,)

                    ],
                  ),
                  
                ],
              ),
              SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
              children: [
                Text("Registration No",style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(width: 10,),
                Text("1234555",style: TextStyle(color:Colors.grey,fontWeight:FontWeight.w500,fontSize: 16),)
              ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text("Year of Making",style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(width: 10,),
                    Text("2023",style: TextStyle(color:Colors.grey,fontWeight:FontWeight.w500,fontSize: 16),)
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }
  showBottom() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) => Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration:const BoxDecoration(
              color: Colors.white,
              borderRadius:BorderRadius.only(
                topLeft:Radius.circular(20.0),
                topRight:Radius.circular(20.0),
              ),
            ),
            child:Column(
              children: [
                const Text("Registration No,",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color:Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: ('Registration No'),
                      helperStyle: const TextStyle(
                          color: Colors.grey, ),
                      contentPadding:
                      const EdgeInsets.only(top: 10, left: 20),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                const Text("Year of Making,",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color:Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: ('Year of Making'),
                      helperStyle: const TextStyle(
                        color: Colors.grey, ),
                      contentPadding:
                      const EdgeInsets.only(top: 10, left: 20),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  height: 45,
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Text("Save",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                )

              ],

            )
        ) );
  }
}
