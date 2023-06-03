import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/registration_controller.dart';
import 'for_field.dart';
class RegistrationPageScreen extends StatefulWidget {
  const RegistrationPageScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationPageScreen> createState() => _RegistrationPageScreenState();
}

class _RegistrationPageScreenState extends State<RegistrationPageScreen> {
 final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),

                const SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: ('Name'),
                      contentPadding: const EdgeInsets.only(top: 10,left: 10)),
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: ('Phone Number'),
                      contentPadding: const EdgeInsets.only(top: 10,left: 10)),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 160,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: const Text("Male",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: const Text("Female",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,),),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  alignment: Alignment.center,
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                     color: Colors.orange,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: const Text("Sign up",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

