import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class personProfile extends StatefulWidget {
  @override
  _personProfileState createState() => _personProfileState();
}

class _personProfileState extends State<personProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.redAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      // CircleAvatar(
                      //   radius: 30.0,
                      //   child:
                      ClipOval(
                        child: Image.asset('assets/images/personimage.png',
                            height: 120.0, width: 120.0, fit: BoxFit.cover),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Faysal Neowaz",
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "0",
                                style: TextStyle(fontSize: 16, color: Colors.white),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "Events",
                                style: TextStyle(fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(width: 20,),
                          Column(
                            children: <Widget>[
                              Text(
                                "0",
                                style: TextStyle(fontSize: 16, color: Colors.white),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "Followers",
                                style: TextStyle(fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(width: 20,),
                          Column(
                            children: <Widget>[
                              Text(
                                "0",
                                style: TextStyle(fontSize: 16, color: Colors.white),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "Following",
                                style: TextStyle(fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        constraints: BoxConstraints(maxHeight: 150.0),
                        child: Material(
                          color: Colors.redAccent,
                          child: TabBar(
                            tabs: [
                              Tab(icon: Icon(Icons.event,size: 30.0,),),
                              Tab(icon: Icon(Icons.image,size: 30.0,),),
                              Tab(icon: Icon(Icons.playlist_add_check,size: 30.0,),),
                              // Tab(text: 'EVENTS FOR ME',),
                              // Tab(text: 'EXPLORE',),
                            ],
                          ),
                        ),
                      ),
                      // Expanded(
                      //   child: TabBarView(children: <Widget>[
                      //
                      //     Icon(Icons.event),
                      //     Icon(Icons.image),
                      //     Icon(Icons.playlist_add_check),
                      //     // Icon(Icons.directions_car),
                      //     // Icon(Icons.directions_transit),
                      //   ],),
                      // ),
                    ],
                  ),

                ),

              ],

            ),


          ],
        ),
      ),
    );
  }
}
