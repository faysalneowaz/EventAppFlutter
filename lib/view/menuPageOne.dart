import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Bonspiels/view/profilePage.dart';
import 'package:Bonspiels/view/eventformetab.dart';
import 'package:Bonspiels/view/exploremetab.dart';
import 'package:google_fonts/google_fonts.dart';

class homepageMain extends StatefulWidget {
  @override
  _homepageMainState createState() => _homepageMainState();
}

class _homepageMainState extends State<homepageMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.red,
        title: Text("Bonspiels",
        style: GoogleFonts.roboto(fontSize: 18,color: Colors.white),),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 8.0,bottom: 8.0,top: 8.0),
             child: ClipOval(
                child: Material(
                   // button color
                  child: InkWell(
                    splashColor: Colors.blue, // inkwell color
                    child: SizedBox(width: 40, height: 56,
                        child:
                        Image.asset('assets/images/personimage.png')
                    ),
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => profilePage() ));},
                  ),
                ),
              )
          )
        ],
      ),
      body: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Column(
            children: <Widget>[
        Container(
        constraints: BoxConstraints(maxHeight: 150.0),
        child: Material(
          color: Colors.deepOrange,
          child: TabBar(
            tabs: [
                    Tab(text: 'EVENTS FOR ME',),
                    Tab(text: 'EXPLORE',),
            ],
          ),
        ),
      ),
           Expanded(
             child: TabBarView(children: <Widget>[

               eventforme(),
               exploreme(),
               // Icon(Icons.directions_car),
               // Icon(Icons.directions_transit),
             ],),
           ),
            ],
      ),

    ),
    );
  }
}
