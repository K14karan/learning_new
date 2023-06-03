import 'package:demo/otp_page.dart';
import 'package:demo/utils/provider/login_google.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
class MobileLogin extends StatefulWidget {
  static String verify= "";

  const MobileLogin({Key? key}) : super(key: key);
  @override
  State<MobileLogin> createState() => _MobileLoginState();
}

class _MobileLoginState extends State<MobileLogin> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController otpEditingController = TextEditingController();
  var Phone='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),
          Container(
            width: 300,
            child:TextFormField(
              onChanged: (value){
                Phone=value;
              },
              controller: otpEditingController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter Mobile Number'
              ),
            ),
          ),
            InkWell(
              onTap: () async {
                await FirebaseAuth.instance.verifyPhoneNumber(
                  phoneNumber:"+91"+Phone,
                  verificationCompleted: (PhoneAuthCredential credential) {},
                  verificationFailed: (FirebaseAuthException e) {},
                  codeSent: (String verificationId, int? resendToken) {
                    MobileLogin.verify = verificationId;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) =>  OtpPage()));
                  },
                  codeAutoRetrievalTimeout: (String verificationId) {},
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 50),
                alignment: Alignment.center,
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text(
                  'Login',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
            ),
            InkWell(
              onTap: () async {
          final provider=Provider.of<GoogleSign>(context,listen: false);
          provider.googleLogin();
              },
              child: Container(
                margin: const EdgeInsets.only(left: 20,right: 20,top: 50),
                alignment: Alignment.center,
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text(
                  'Login with google',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
