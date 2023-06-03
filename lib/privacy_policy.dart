import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
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
              child:Text('CIN: U63040DL2022PTC398528 ',style:GoogleFonts.roboto(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child:Text('Terms & Conditions (as at 28 December 2022) ',style:GoogleFonts.roboto(color: Colors.black,fontSize: 16,fontStyle: FontStyle.italic),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              alignment: Alignment.center,
              child:Text('Voyage Partner Pvt. Ltd. takes the issue of the privacy of your Personal Data very seriously. ',style:GoogleFonts.roboto(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Personal data means any information relating to an identified or identifiable natural person ('Data Subject') and an identifiable person is one who can be identified, directly or indirectly, in particular by reference to an identification number or to one or more factors specific to his physical, physiological, mental, economic, cultural or social identity.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	This privacy policy applies to your permitted access to this website https://www.travelpartner.live and/or the use of the Travel Partner App as regards to any Personal Data that may be collected from you or provided by you during such access or as a result of your access to our website or as a result of your using the Travel Partner App.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	This privacy policy has been published to provide you a clear and concise outline of how and when Personal Data is collected, stored and/or used by us.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	IF YOU USE ANY SERVICE PROVIDED BY OUR PLATFORM OR YOU PROVIDE VOLUNTARILY ANY PERSONAL DATA TO US THEN YOU SPECIFICALLY REPRESENT THAT YOU HAVE READ, UNDERSTOOD AND CONSENTED TO THE COLLECTION, USE AND STORAGE OF YOUR PERSONAL DATA. ",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	From time to time, we may change the provisions of this Privacy Policy without specific notice to you. We strongly recommend that you check this document on a regular basis to ensure that you understand the obligations detailed in this Privacy Policy. This Privacy Policy will be accessible by you either through our website https://www.travelpartner.live/ or through the Travel Partner App.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("Personal Information that You Provide to Us",style: GoogleFonts.roboto(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	We do not generally collect Personal Data about you except when you provide that information voluntarily and in accordance with our various application forms that are available on this web site https://www.travelpartner.live/ or through the Travel Partner App. Once you have provided Personal Data it will only be used for purposes of registration so that we can forward to you the information that you have requested via the Travel Partner App. In other words, all collected Personal Data about you will be used solely for the purpose to which you have consented. Such information will not be transferred to other parties unless you are fully informed prior to such transference and you have agreed to such transference, unless we are required by law to transfer the information to an authorised organisation.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	The above only relates to your Personal Data and does not relate to any aggregated or other information that may be developed or created internally by us, provided this other information cannot later be used or combined with other information to identify you in any way whatsoever and therefore maintains our privacy commitment to you.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("The information we collect which we collectively call Personal data are:",style: GoogleFonts.roboto(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Basic user information, such as your name, username, gender, birth date, email and phone number;",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Messages and interactive post information from the Travel Partner App feed, such as messages to other users and information you provide in connection with those activities and events;",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Other background, contact and demographic information, such other interests and self-descriptions you choose to provide;",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Debit and Credit card information which may be processed by a third party engaged by us to validate such credit and debit card information. We do not store such information as that information is passed through to our debit and credit card validator.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Travel Partner has a legitimate reason to add your email address to Travel Partner™s email marketing database at the time of account creation in Travel Partner so that Travel Partner can send you the Welcome Email which has instructions & tips for using the app for the first time. However as a subscriber you have always had and always will have the opportunity to unsubscribe at any time from the unsubscribe link at the bottom of all our emails.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("Information We May Collect Automatically",style: GoogleFonts.roboto(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	When you access or use our Services, we may also automatically collect information about you, including:",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Usage Information: We collect information about your activity through our services. For example, we may collect information about:",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	How you interact with our services, such as which posts you like, which hashtags you search on the feed, what type of groups or interests you use.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	How you communicate with other users, such as their names, the time and date of your communications, the number of messages you exchange with your friends, which friends you exchange messages with the most, and your interactions with messages;",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Content Information: We collect content you create on our services, such as posts, meetups etc. and information about the content you create or provide, such as if recipients have viewed the content. We also collect the metadata that is associated with the content.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Camera and Photos: Many of our services require us to collect images and other information from your device's camera and photos. For example, you won't be able to post on the feed or upload photos from your camera roll unless we can access your camera or photos.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Location Information: We may collect information about your location when you access our mobile application or website, or otherwise consent to the collection of this information. With your permission, we may also collect information about your precise location using methods that include GPS, wireless networks, cell towers, Wi-Fi access points.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Device Information: We may collect device-specific information when you access our Services, including your hardware model, operating system and version, unique device identifiers, mobile network information and information about the device's interaction with our Services, browser type, language and time zone, information about your wireless and mobile network connections, such as mobile phone number, service provider, and signal strength.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Log Information: We may collect log information about how you access or use our Services, including your access times, browser type and language, Internet Service Provider and Internet Protocol address.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("Use & Disclosure of Personal Data",style: GoogleFonts.roboto(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Unless you have advised us not to do so, your Personal Data is not be shared with other Travel Partner users. It is our goal to only use the information you provide us in a manner that better provides our services to you such as:",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Develop, operate, improve, deliver, maintain, and protect our products and services. send you communications, including by email. For example, we may use email to respond to support inquiries or to share information about our products, services, and promotional offers that we think may interest you",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Monitor and analyse trends and usage.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Personalize our services by, among other things, suggesting friends or profile information, or customizing the content we show you, including ads.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Contextualize your experience by, among other things, tagging post content using your precise location information (if, of course, you™ve given us permission to collect that information) and applying other labels based on the content.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Provide and improve ad targeting and measurement, including through the use of your precise location information (again, if you’ve given us permission to collect that information), both on and off our services. See the sections below for more information and your choices.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Enhance the safety and security of our products and services.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Verify your identity and reduce the risk of fraud or other unauthorized or illegal activity.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Use information we™ve collected from cookies and other technology to enhance our services and your experience with them.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Enforce our Terms of Service and other usage policies.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	In addition we undertake not to sell, rent or trade your Personal Data.We will not disclose information about you unless the disclosure is:\n(a) required by law (eg the Indian Tax Office);\n(b) is authorised by law (eg to protect our interests or where we have a duty to make such disclosure); or\n(c) you have consented for us to disclose the information about you. ",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	By sharing your details, you agree to receive updates on SMS, RCS, Email & Whatsapp and call.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("Personal Data Quality",style: GoogleFonts.roboto(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	It is our goal to ensure that your Personal Data is correct, accurate, relevant, timely and secure. For us to meet this goal would you please ensure that if there is any change to any of the details you have provided to us, you will promptly advise us so that we can continue to provide the services that we have agreed.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Further, if it comes to your attention that we possess certain information about you that is not correct, accurate, complete or up-to-date, then contact us and we will use all reasonable efforts to correct the information we have about you. Such corrections may take time as we will only correct such information once we have verified that the new information is correct.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("Personal Data Security",style: GoogleFonts.roboto(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	The Travel Partner Team undertakes to use our best endeavours to keep secure your Personal Data and we further undertake to take all reasonable precautions to protect that information against any unauthorised loss, misuse or alteration.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Although we strive to employ reasonable protections for your information that are appropriate to its sensitivity, we do not guarantee or warrant the security of the information you share with us and we are not responsible for the theft, destruction, loss or inadvertent disclosure of your information or content. No system is 100% secure. The Services uses industry standard Secure Sockets Layer (SSL) technology to allow for the encryption of personal information",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Access to Personal Information If you request us to provide you with access to personal information we hold about you, then we will provide such information to you in a timely manner in accordance with GDPR requirements. Please submit your request with the Subject: Access To My Personal Travel Partner Information to the following address: support@travelpartner.live",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Unauthorised Access to Personal Data (Data Breach) For the purposes of this Privacy Policy a “Data Breach” is a breach of the security concerning the protection of Personal Data which leads to the accidental or unlawful destruction, loss, alteration, unauthorised disclosure or access to your Personal Data transmitted, stored or otherwise processed by us. ",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("Changes to this Policy",style: GoogleFonts.roboto(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	We reserve the right to make changes to this privacy policy from time to time for any reason. We will accordingly make those changes and display those changes on this website.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	This privacy statement was last amended on 28 December 2022.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Text("•	Contact us about privacy : If you would like to contact us as regards to anything concerning this privacy policy, or if you think that we have breached any aspect of this privacy policy, then please contact us by support@travelpartner.live ",style: GoogleFonts.roboto(color: Colors.black,fontSize: 16,),),
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
