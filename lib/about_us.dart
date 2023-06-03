import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child:Image.asset('assets/img.png',height: 100,width: 100,),
            ),
            // Container(
            //   alignment: Alignment.center,
            //   child: Text('Voyage Partner Private Ltd.',style: GoogleFonts.roboto(color: Colors.black,fontSize: 18),),
            // ),
            // Container(
            //   padding: EdgeInsets.only(top: 10),
            //   alignment: Alignment.center,
            //   child:Text('CIN: U63040DL2022PTC398528 ',style:GoogleFonts.roboto(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
            // ),
            // Container(
            //   padding: EdgeInsets.only(top: 10),
            //   alignment: Alignment.center,
            //   child:Text('Terms & Conditions (as at 28 December 2022) ',style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,fontStyle: FontStyle.italic),),
            // ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 10,left: 5),
              child:Text('About',style:GoogleFonts.roboto(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 12,left:5,right: 5),
              child:RichText(
                text:TextSpan(children: [
                  TextSpan(
                      text: 'Our vision ',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, color: Colors.black,fontSize: 17)),
                  TextSpan(
                      text: 'is for all travel buddies to make the world a better place through travel. ',
                      style: GoogleFonts.roboto(
                           color: Colors.black,fontSize: 16)),
                ]
                ),
              ),

            ),

            Container(
              padding: EdgeInsets.only(top: 12,left:5,right: 5),
              child:RichText(
                text:TextSpan(children: [
                  TextSpan(
                      text: 'Our mission ',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, color: Colors.black,fontSize: 17)),
                  TextSpan(
                      text: 'is to empower all to travel the world safely and sustainably by providing them with a global support network. ',
                      style: GoogleFonts.roboto(
                          color: Colors.black,fontSize: 16)),
                ]
                ),
              ),

            ),
            Container(
              padding: EdgeInsets.only(top: 12,left:5,right: 5),
              child:RichText(
                text:TextSpan(children: [
                  TextSpan(
                      text: 'How it works?  ',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, color: Colors.black,fontSize: 17)),
                  TextSpan(
                      text: 'Travel Partner is a tech based service that connects a global community of travelers and travel providers. ',
                      style: GoogleFonts.roboto(
                          color: Colors.black,fontSize: 16)),
                  TextSpan(
                      text: 'Travel Partner ',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, color: Colors.black,fontSize: 17)),
                  TextSpan(
                      text: 'is your one-stop travel related solution either you are looking for solo partner, any travel group for your trip, information about any location or search for a travel related service.',
                      style: GoogleFonts.roboto(
                          color: Colors.black,fontSize: 16)),
                ]
                ),
              ),

            ),
            Container(
              padding: EdgeInsets.only(top: 12,left:5,right: 5),
              child:RichText(
                text:TextSpan(children: [
                  TextSpan(
                      text: 'Our story',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, color: Colors.black,fontSize: 17)),
                  TextSpan(
                      text: ' Once upon a time, Chirag wanted to go Vaishno Devi trip but no any friend was ready to go with him that time. After that, he planned about',
                      style: GoogleFonts.roboto(
                          color: Colors.black,fontSize: 16)),
                  TextSpan(
                      text: ' Travel Partner',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, color: Colors.black,fontSize: 17)),
                  TextSpan(
                      text: '  app. With this application, users can connect with new travel partners and go on any trips together. Asks travel related questions and find information from travel community. In this app, users can easily find verified and like-minded travelers, plan fun trips with them, or meet up.',
                      style: GoogleFonts.roboto(
                          color: Colors.black,fontSize: 16)),
                ]
                ),
              ),

            ),


          ],
        ),
      ),
    );
  }
}
