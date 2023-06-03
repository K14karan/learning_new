import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
class TermCondition extends StatefulWidget {
  const TermCondition({Key? key}) : super(key: key);

  @override
  State<TermCondition> createState() => _TermConditionState();
}

class _TermConditionState extends State<TermCondition> {
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
            Container(
              alignment: Alignment.center,
              child: Text('Voyage Partner Private Ltd.',style: GoogleFonts.roboto(color: Colors.black,fontSize: 18),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child:Text('CIN: U63040DL2022PTC398528 ',style:GoogleFonts.roboto(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child:Text('Terms & Conditions (as at 28 December 2022) ',style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,fontStyle: FontStyle.italic),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:5,right: 5),
              child:Text('Terms And Conditions',style:GoogleFonts.roboto(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:5,right: 5),
              child:Text('•	All rights reserved, including logos and all content on this App/website. Reproduction is prohibited other than authorized by Travel Partner.',style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:5,right: 5),
              child:Text('•	By using this app, you consent to our privacy policy and terms and conditions contained in this agreement. By using Travel Partner you agree to be legally bound by these terms, which take effect immediately on your first use.',style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:5,right: 5),
              child:Text("•	The content of the app is for your general information and use only and may change without notice. We act to ensure that all information published on this app is up-to-date and accurate. However, we disclaim any liability for any loss or damage caused by errors, omissions, wrong information or any travel problem caused by information provided via Travel Partner. We don't provide any warrant or guarantee of any of the information found on this App.. You acknowledge that this information may contain mistakes and we exclude liability for any errors. Your use of any material on this website is totally at your own risk, for which we are not liable. We disclaim all responsibility and liability for uses of any content obtained or in connection with the Travel Partner App",style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:5,right: 5),
              child:Text("•	Travel Partner grants you limited license to access and make personal use of our App, not including any resale or commercial use of Travel Partner app or its contents, any collection and use of any members' listing or profiles or any derivative use of this app or its contents. This app or any portion of it may not be reproduced in any way without our written consent. Any unauthorized use terminates the license or permission granted by Travel Partner",style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:5,right: 5),
              child:Text("•	Unauthorized use of Travel Partner may give rise to a claim for damages and/or be a criminal offence. This App may contain links to other websites, provided for your convenience, what doesn't mean that we endorse these websites. We have no responsibility for the content of linked websites/App",style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:5,right: 5),
              child:Text("•	Uploading any image, it gives us the permission to publish it on our website and grant us a non-exclusive, royalty-free, worldwide license to republish it in any format. Hotel/Hostel listing are submitted and updated by or with the permission of hostels. We do our best so that the travel providers provide honest and accurate information.",style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:5,right: 5),
              child:Text("•	If you as a Local Expert cannot make an arranged stay-itinerary then you must inform the Traveler as soon as you realize you cannot do it. It is unfair on Travelers to expect for a Locals help in vain. In a no-show case, Travel Partner may cancel your membership.",style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:5,right: 5),
              child:Text("•	If helping in a foreign country you must obtain your own appropriate visa. Travel Partner cannot assist with your visa applications or help with your travel expenses. We won't be responsible for any problem arising from your failure to ensure that you meet any visa requirement or obligations for any country you visit while traveling. All questions regarding travel and visas should be put to the relevant embassy before traveling.",style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:5,right: 5),
              child:Text("•	Travel Partner reserves the right to cancel any membership without refund if the terms and conditions are not respected, if hospitality or help offered are abused or if we consider any misuse of the App/website at our sole discretion. We may suspend membership if the account is not being used by the original subscriber or if joint persons are using it. Accounts are not transferable and members should inform Travel Partner of any apparent breach of security, like theft of account, or unauthorized use of an account`s login name and password. This website should never be used for promoting anything not related to arrange genuine help exchanges.",style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:5,right: 5),
              child:Text("•	Travel Partner won't be responsible if you get damaged or harmed in any way from the interaction with other users in any way. We recommend that you have some personal/travel insurance prior to your trip. Travel Partner is not responsible for providing any insurance or guarantees for a helper or a hostel and we accept no liability in any way for work or host related incidents under any circumstances. By registering you acknowledge that you have read, understood and accepted the terms and conditions and that they have same value as a signed agreement contract. It is your responsibility to check these terms of use before each use of Travel Partner, since we reserve the right to change, add or remove portions at any time. Your continued use of Travel Partner after changes on it means that you accept and agree to the changes.",style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:5,right: 5),
              child:Text("•	You shall not use our service for unauthorized purpose, to impersonate any person or entity, to register for more than one user account, to use it for spam or any commercial purpose, to transmit any information about other person or entity, stalk or harass any other user, interfere our service or violate any law or regulation in any way.",style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:5,right: 5),
              child:Text("•	You accept and permit that Travel Partner has the right to use any data material on this website and all belonging services that are part of this site, like social medias, newsletter, etc. We will collect personal information from users only if they voluntarily submit such information to us. Non-personal information may be collected each time you access or use or sites.",style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:5,right: 5),
              child:Text("•	We may use collected information to send periodic e-mails, to display volunteer information to registered hostels, to show hostel's position on a map. We may use cookies to understand and save your preferences for future visits and compile aggregate data about site traffic and interaction, in order to offer better site experiences in the future.",style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:5,right: 5),
              child:Text("•	Our guides and all the information provided here are suggestive. Information provided by hostels and volunteers are not our responsibility, although we try to filter any fake information. Make sure you double-check all the details with the other part and visa status. Travel Partner is not responsible for the interaction and information exchanged between hostels and volunteers.",style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:5,right: 5),
              child:Text("•	If you sign up at our website, you accept to receive newsletters. When you use Google Maps, you are subject to the Google privacy policy. When you use our social medias, you are subject to their privacy policy.",style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:5,right: 5),
              child:Text("•	It must be informed that Travel Partner only provides the connect to enable travelers and Travel Providers to find each other. We are not a travel agency or a tour operator. All arrangements are entirely between travelers and travel providers . We do not introduce one party to another; we are merely a meeting point. It is your decision as a traveler to make contact with other Travelers and Travel Providers. We have no control over if the given information is truth and no resources to check every person's reliability. If you choose to talk to a traveler/travel provider or to go to meet them ,it is at your own risk. Be aware that we don't investigate any person or travel providers background but we will strongly urge you to use the Ratings and Review system on the app. We advise you to check website, Google, Facebook, exchange e-mails in order to know the most as possible about the other party.",style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:5,right: 5),
              child:Text("•	Since Travel Partner is a Social Platform, we reserve the right to ban/block any user who is doing any of the following : Spreading Misinformation, Posting Nude Photos and Videos, Inciting hate speech and violence, Building Fake Profiles, Doing Spam or Fraud, Using others photos and videos. You can appeal the same at support@travelpartner.live",style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),



















            Container(
              padding: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child:Text('Customer Support Manager',style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("email: support@travelpartner.live",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("WA-117, 3rd Floor, Laxmi Nagar,",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
              child: Text("Delhi-110092, INDIA",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
          ],
        ),
      ),
    );
  }
}
