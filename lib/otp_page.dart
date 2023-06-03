import 'package:demo/login_mobile.dart';
import 'package:demo/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'intro.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  String smsCode = 'xxxx';
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*.25,
            ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: Text(
                'Enter The OTP',
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.center,
              child: Text(
                'We have sent 4 digit verification code in the given ',
                style: GoogleFonts.roboto(
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              alignment: Alignment.center,
              child: Text(
                'Mobile Number ',
                style: GoogleFonts.roboto(
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            OtpPinField(
              onChange: (value){
                smsCode=value;
              },
              otpPinFieldInputType: OtpPinFieldInputType.none,
              // otpPinInputCustom: "\$",
              onSubmit: (text) {
                print('Entered pin is $text');
              },
              otpPinFieldStyle: const OtpPinFieldStyle(
                defaultFieldBorderColor: Colors.grey,
                activeFieldBorderColor: Colors.black,
                // defaultFieldBackgroundColor: Colors.pinkAccent,
                // activeFieldBackgroundColor: Colors.cyanAccent,
              ),
              //fieldCount: 4,
              maxLength: 6,
              highlightBorder: true,
              fieldWidth: 50,
              fieldHeight: 50,
              keyboardType: TextInputType.number,
              autoFocus: false,
              otpPinFieldDecoration:
              OtpPinFieldDecoration.defaultPinBoxDecoration,
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: ()async{
                try{
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(
                      verificationId: MobileLogin.verify,
                      smsCode: smsCode);

                  await _auth.signInWithCredential(credential);
                  // ignore: use_build_context_synchronously
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Signup()));
                }catch(e){
                  print('Wrong otp');
                }
              },
              child: Container(
                margin: const EdgeInsets.only(left: 20,right: 20),
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
            )
          ],
        ),
      ),
    );
  }
}
