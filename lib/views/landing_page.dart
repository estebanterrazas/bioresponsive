import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {

  @override 
  _LandingPageState createState() => _LandingPageState();
}

  

 class _LandingPageState extends State<LandingPage>{
   String descripcion = 'Apasionado de la Tecnología y los negocios por Internet, FAN declarado de los productos de Google, Google Cloud, G Suite, Pixel, Android y todos sus derivados. Creador de apps en Flutter.';


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
      body: 
      Stack(
        
        children: <Widget>[
          SingleChildScrollView(
            
          child: Container(
            
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
                  padding: EdgeInsets.symmetric( horizontal:20 ),
                  child: Text('Esteban Terrazas', style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500
                  )  ),
                ),
                SizedBox( height: 20.0, ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal:40.0),
                  child: Text(descripcion, textAlign: TextAlign.center ,style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400
                    
                  ) ),
                ),
                SizedBox( height: 20.0, ),
                Text('Colaboraciones', style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                   ), 
                ),
                SizedBox( height: 40.0, ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        _launchURL("https://hablemosdeecommerce.com/author/eterrazas/");
                      },
                      child: Image.asset('assets/hde.png', width: 200.0, height: 54.0, ),
                    ),
                    SizedBox( width: 30.0, ),
                    GestureDetector(
                      onTap: (){
                        _launchURL("https://dosisgeek.news/author/esteban/");
                      },
                      child: Image.asset('assets/dosis.png', width: 200.0, height: 54.0, ),
                    ),
                  ],
                ),
                SizedBox( height: 40, ),
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
        ),

        ],
              
      ),
    );
  }
   
 
}