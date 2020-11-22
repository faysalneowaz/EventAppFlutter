// import 'dart:html';

import 'package:Bonspiels/view/bookingHistory.dart';
import 'package:Bonspiels/view/friendListPage.dart';
import 'package:Bonspiels/view/inboxPage.dart';
import 'package:Bonspiels/view/personProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class profilePage extends StatefulWidget {
  @override
  __profilePageState createState() => __profilePageState();
}

class __profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Profile",style: GoogleFonts.roboto(color: Colors.white)),

      ),
      body: SingleChildScrollView(
        child: Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20,),
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: <Widget>[
                      ClipOval(
                        child: Material(
                          color: Colors.redAccent, // button color
                          child: InkWell(
                            splashColor: Colors.blue, // inkwell color
                            child: SizedBox(width: 65, height: 65,
                                child: Image.asset('assets/images/personimage.png'),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: InkWell(
                          child: SizedBox(width: 250, height: 56,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Faysal Neowaz", style: GoogleFonts.roboto(color: Colors.black87,fontSize: 22),),
                                Text("view Profile",style: GoogleFonts.roboto(color: Colors.black38,fontSize: 18,),),
                              // Divider(color: Colors.black26,)
                              ],
                            ),

                          ),
                          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => personProfile() ));},
                        ),
                      )

                    ],
                  ),

                ),
              ),
              SizedBox(height: 50,),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text("MY ACCOUNT",style: GoogleFonts.roboto(fontSize: 20, letterSpacing: 1.0),),
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.history,color: Colors.redAccent,),
                                SizedBox(width: 8,),
                                Text("Booking History", style: GoogleFonts.roboto(fontSize: 16,color: Colors.black87,letterSpacing: 0.5),),
                              ],

                            ),
                          ],

                        ),

                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BookingHistory("Booking History")));
                      },
                    ),
                    Divider(color: Colors.black26,height: 30,),
                    InkWell(
                      child: Column(children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.email,color: Colors.redAccent,),
                            SizedBox(width: 8,),
                            Text("Inbox", style: GoogleFonts.roboto(fontSize: 16,color: Colors.black87,letterSpacing: 0.5),),
                          ],
                        ),
                      ],
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => InboxPage()));
                      },
                    ),
                    Divider(color: Colors.black26,height: 30,),
                    InkWell(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.people,color: Colors.redAccent,),
                              SizedBox(width: 8,),
                              Text("Make New Friends", style: GoogleFonts.roboto(fontSize: 16,color: Colors.black87,letterSpacing: 0.5),),
                            ],
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FriendList()));
                      },
                    ),
                    Divider(color: Colors.black26,height: 30,),
                    InkWell(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.notifications,color: Colors.redAccent,),
                              SizedBox(width: 8,),
                              Text("Notifications", style: GoogleFonts.roboto(fontSize: 16,color: Colors.black87,letterSpacing: 0.5),),
                            ],
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BookingHistory("Notifications")));
                      },
                    ),
                    Divider(color: Colors.black26,height: 30,),


                    SizedBox(height: 40,),
                    Text("EVENTS",style: GoogleFonts.roboto(fontSize: 20,),),
                    SizedBox(height: 25,),
                    InkWell(
                      child: Column(
                        children: <Widget>[

                          Row(
                            children: <Widget>[
                              Icon(Icons.list,color: Colors.redAccent,),
                              SizedBox(width: 8,),
                              Text("Cruated Lists", style: GoogleFonts.roboto(fontSize: 16,color: Colors.black87,letterSpacing: 0.5),),
                              // Expanded(child: Divider(color: Colors.black26,))
                            ],
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BookingHistory("Cruated Lists")));
                      },
                    ),
                    Divider(color: Colors.black26,height: 30,),
                    InkWell(
                      child: Column(
                        children: <Widget>[

                          Row(
                            children: <Widget>[
                              Icon(Icons.event_note,color: Colors.redAccent,),
                              SizedBox(width: 8,),
                              Text("Recently Viewed Events", style: GoogleFonts.roboto(fontSize: 16,color: Colors.black87,letterSpacing: 0.5),),
                              // Expanded(child: Divider(color: Colors.black26,))
                            ],
                          ),
                        ],

                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BookingHistory("Recently Viewed Events")));
                      },
                    ),
                    Divider(color: Colors.black26,height: 30,),
                    InkWell(
                      child: Column(
                        children: <Widget>[

                          Row(
                            children: <Widget>[
                              Icon(Icons.event_available,color: Colors.redAccent,),
                              SizedBox(width: 8,),
                              Text("Create an Event", style: GoogleFonts.roboto(fontSize: 16,color: Colors.black87,letterSpacing: 0.5),),
                              // Expanded(child: Divider(color: Colors.black26,))
                            ],
                          ),
                        ],

                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BookingHistory("Create an Event")));
                      },
                    ),
                    Divider(color: Colors.black26,height: 30,),
                    InkWell(
                      child: Column(
                        children: <Widget>[

                          Row(
                            children: <Widget>[
                              Icon(Icons.event,color: Colors.redAccent,),
                              SizedBox(width: 8,),
                              Text("My Events", style: GoogleFonts.roboto(fontSize: 16,color: Colors.black87,letterSpacing: 0.5),),
                              // Expanded(child: Divider(color: Colors.black26,))
                            ],
                          ),
                        ],

                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BookingHistory("My Events")));
                      },
                    ),
                    Divider(color: Colors.black26,height: 30,),
                    InkWell(
                      child: Column(
                        children: <Widget>[

                          Row(
                            children: <Widget>[
                              Icon(Icons.add_box,color: Colors.redAccent,),
                              SizedBox(width: 8,),
                              Text("Event Manager App", style: GoogleFonts.roboto(fontSize: 16,color: Colors.black87,letterSpacing: 0.5),),
                              // Expanded(child: Divider(color: Colors.black26,))
                            ],
                          ),
                        ],

                      ),
                      onTap: () {},
                    ),
                    Divider(color: Colors.black26,height: 30,),

                    SizedBox(height: 30,),
                    Text("PERSONALIZE EVENTS UPDATE",style: GoogleFonts.roboto(fontSize: 20,),),
                    SizedBox(height: 20,),
                    InkWell(
                      child: Column(
                        children: <Widget>[

                          Row(
                            children: <Widget>[
                              Icon(Icons.location_city,color: Colors.redAccent,),
                              SizedBox(width: 8,),
                              Text("City Subscriptions", style: GoogleFonts.roboto(fontSize: 16,color: Colors.black87,letterSpacing: 0.5),),
                              // Expanded(child: Divider(color: Colors.black26,))
                            ],
                          ),
                        ],

                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BookingHistory("City Subscriptions")));
                      },
                    ),
                    Divider(color: Colors.black26,height: 30,),
                    InkWell(
                      child: Column(
                        children: <Widget>[

                          Row(
                            children: <Widget>[
                              Icon(Icons.settings_input_component,color: Colors.redAccent,),
                              SizedBox(width: 8,),
                              Text("Category preference", style: GoogleFonts.roboto(fontSize: 16,color: Colors.black87,letterSpacing: 0.5),),
                              // Expanded(child: Divider(color: Colors.black26,))
                            ],
                          ),

                        ],

                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BookingHistory("Category preference")));
                      },
                    ),
                    Divider(color: Colors.black26,height: 30,),
                    InkWell(

                      child: Column(
                        children: <Widget>[

                          Row(
                            children: <Widget>[
                              Icon(Icons.calendar_view_day,color: Colors.redAccent,),
                              SizedBox(width: 8,),
                              Text("Organizers to Follow", style: GoogleFonts.roboto(fontSize: 16,color: Colors.black87,letterSpacing: 0.5),),
                              // Expanded(child: Divider(color: Colors.black26,))
                            ],
                          ),

                        ],

                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BookingHistory("Organizers to Follow")));
                      },
                    ),
                    Divider(color: Colors.black26,height: 30,),
                    InkWell(
                      child: Column(
                        children: <Widget>[

                          Row(
                            children: <Widget>[
                              Icon(Icons.phonelink_erase,color: Colors.redAccent,),
                              SizedBox(width: 8,),
                              Text("Push Notifications", style: GoogleFonts.roboto(fontSize: 16,color: Colors.black87,letterSpacing: 0.5),),
                              // Expanded(child: Divider(color: Colors.black26,))
                            ],
                          ),

                        ],

                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BookingHistory("Push Notifications")));
                      },
                    ),
                    Divider(color: Colors.black26,height: 30,),
                  ],
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
