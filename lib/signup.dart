import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:response/response.dart';
import 'package:get/get_connect.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: TextField(
                controller: email,
                cursorColor: Colors.grey,
                //style: const TextStyle(height: 0.4),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: ('Email'),
                    hintStyle:
                        GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                    contentPadding: EdgeInsets.only(top: 10, left: 10)),
              )),
          Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: TextField(
                controller: name,
                cursorColor: Colors.grey,
                //style: const TextStyle(height: 0.4),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: ('Name'),
                    hintStyle:
                        GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                    contentPadding: EdgeInsets.only(top: 10, left: 10)),
              )),
          Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: TextField(
                controller: pass,
                cursorColor: Colors.grey,
                //style: const TextStyle(height: 0.4),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: ('Password'),
                    hintStyle:
                        GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                    contentPadding: EdgeInsets.only(top: 10, left: 10)),
              )),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              const Signup();
            },
            child: Container(
              alignment: Alignment.center,
              width: 200,
              height: 40,
              color: Colors.pinkAccent,
              child: Text(
                'Signup',
                style: GoogleFonts.roboto(color: Colors.white),
              ),
            ),
          )
        ]),
      ),
    );
  }

  void registerUser() async {
    var url = "https://travelpartner.live/app/get-post.php";
    var data = {
      "email": email.text.toString(),
      " name": name.text.toString(),
      "pass": pass.text.toString(),
    };
    var body = json.encode(data);
    var urlParse = Uri.parse(url);
    // Response response = http.post(
    //   urlParse,
    //   body: body,
    // );
    // var data1 = jsonDecode(response.body);
    // if (kDebugMode) {
    //   print(data1);
    // }
  }
}
