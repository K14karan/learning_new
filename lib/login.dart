import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void login(String email, password) async {
    try {
      Response response = await get(Uri.parse('http://103.145.50.27:2086'),
         // body: {'email': email, 'password': password}
          );
      if (response.statusCode == 200) {
        print('login Successful');
      } else {
        print('Email or Password is wrong');
      }
    } catch (e) {
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .30,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(width: 1, color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(width: 2, color: Colors.deepPurple)),
                  hintText: 'Email'),
            ),
          ),
          Container(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(width: 1, color: Colors.red)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 2, color: Colors.green),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Password'),
            ),
          ),
          Container(
            height: 30,
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(10)),
            child: TextButton(
                onPressed: () {
                  login(emailController.text.toString(),
                      passwordController.text.toString());
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
          )
        ],
      ),
    );
  }
}
