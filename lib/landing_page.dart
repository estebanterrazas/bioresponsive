import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {

  @override 
  _LandingPageState createState() => _LandingPageState();
}

  

 class _LandingPageState extends State<LandingPage>{
   String descripcion = 'Soy apasionado del Ecommerce y Marketing Digital, creador de aplicaciones con Flutter para iOS y Android, trabajando como Freelance';


  _launchURL(String url) async {
  
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ const Color(0xff213A50), const Color(0xff071930) ] 
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,  
          children: <Widget>[

            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(70.0)),
              child: Image.asset('assets/perfil.jpg', width: 150.0 , height: 150.0,)
              ),
            SizedBox( height: 19.0, ),
            Container(
              padding: EdgeInsets.symmetric( horizontal:40 ),
              child: Text('Esteban Terrazas', style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500
              )  ),
            ),
            SizedBox( height: 20.0, ),
            Container(
              padding: EdgeInsets.symmetric(horizontal:80.0),
              child: Text(descripcion, textAlign: TextAlign.center ,style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400
                
              ) ),
            ),
            SizedBox( height: 20.0, ),
            Text('Connect with me', style: TextStyle(
              color: Colors.white,
              fontSize: 16,
               
            ), ),
            SizedBox( height: 35, ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    _launchURL("https://www.facebook.com/esteban.terrazasm");
                  },
                  child: Image.asset('assets/facebook.png', width: 25.0, height: 25.0, )
                  ),
                SizedBox( width: 12.0, ),
                GestureDetector(
                  onTap: (){
                    _launchURL("https://www.instagram.com/estebanterrazasm/");
                  },
                  child: Image.asset('assets/instagram.png', width: 25.0, height: 25.0,)
                  ),
                SizedBox( width: 12.0, ),
                GestureDetector(
                  onTap: (){
                    _launchURL("https://twitter.com/eterrazas");
                  },
                  child: Image.asset('assets/twitter.png', width: 25.0, height: 25.0,)),
                SizedBox( width: 12.0, ),
                GestureDetector(
                  onTap:(){
                     _launchURL("https://wa.me/52116643700214"); 
                  },
                  child: Image.asset('assets/whatsapp.png', width: 25.0, height: 25.0,)
                  ),
                SizedBox( width: 12.0, ),
              ],
            ),
            SizedBox( height: 20, ),
            GestureDetector(
                onTap: (){
                  _launchURL("https://www.linkedin.com/in/eterrazas/");
                },
                child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)) ,
                  gradient: LinearGradient(
                    colors: [
                        const Color(0xffA2834D),
                        const Color(0xffBC9A5F)
                  ])
                ),
                child: Text('Download My Resume',
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
              ),
            )

          ],
        ),
        
      ),
    );
  }
   
 
}