import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class EventDetails extends StatelessWidget {
  final imagelink;
  final title;
  final date;
  final discription;

  const EventDetails(this.imagelink, this.title, this.date, this.discription);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          title,
          style:  GoogleFonts.roboto(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(bottom: 80.0),
              child:
              // Stack(
              //   children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0)),
                          image: DecorationImage(
                            image: NetworkImage(
                              imagelink,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10.0),
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                    children: [
                                      WidgetSpan(
                                        child: Icon(Icons.location_on),
                                      ),
                                      TextSpan(
                                        text: 'Location',style: GoogleFonts.roboto(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                    "Satori Meditations,\nHouse #100, Banani, Dhaka, Bangladesh",style: GoogleFonts.roboto(color: Colors.black),),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                    children: [
                                      WidgetSpan(
                                        child: Icon(Icons.watch_later_outlined),
                                      ),
                                      TextSpan(
                                        text: 'Date',style: GoogleFonts.roboto(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                Text("Mon " + date + "\n10.00 pm\nto\n11.00 am",style: GoogleFonts.roboto(color: Colors.black),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Container(
                        // margin: EdgeInsets.only(left: 20.0,right: 20.0),
                        // padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(1.5, 1.5))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                  left: 10.0,
                                ),
                                child: Text(
                                  "ARE YOU ATTENDING?",
                                  style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),
                                )),
                            RaisedButton(
                              color: Colors.redAccent,
                              // padding: EdgeInsets.all(8.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                "YES",
                                style: GoogleFonts.roboto(color: Colors.white,fontSize: 14),
                              ),
                              onPressed: () {
                                Fluttertoast.showToast(
                                    msg: "Yes I am attending..",
                                    toastLength: Toast.LENGTH_SHORT,
                                    // gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.white,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 0.0,
                              ),
                              child: RaisedButton(
                                color: Colors.redAccent,
                                // padding: EdgeInsets.all(8.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Text(
                                  "MAY BE",
                                  style: GoogleFonts.roboto(color: Colors.white,fontSize: 14),
                                ),
                                onPressed: () {
                                  Fluttertoast.showToast(
                                      msg: "May be or May be not",
                                      toastLength: Toast.LENGTH_SHORT,
                                      // gravity: ToastGravity.CENTER,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.white,
                                      textColor: Colors.black,
                                      fontSize: 16.0);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Card(
                        margin: EdgeInsets.only(left: 10.0, right: 5.0),
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "EVENT DETAILS",
                                style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              ReadMoreText(
                                discription,
                                trimLines: 3,
                                colorClickableText: Colors.pink,
                                trimMode: TrimMode.Line,
                                trimCollapsedText: '...Show more',
                                trimExpandedText: ' show less',
                              ),
                              // Text(discription,textAlign: TextAlign.justify,style: TextStyle(fontSize: 18),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      InkWell(
                        onTap: () {
                          final Event event = Event(
                            title: title,
                            description: discription,
                            location: 'Event location',
                            startDate: DateTime(2020, DateTime.november, 12),
                            endDate: DateTime(2020, DateTime.october, 15),
                          );
                          Add2Calendar.addEvent2Cal(event);
                          Fluttertoast.showToast(
                              msg: "Date Added Successful",
                              toastLength: Toast.LENGTH_SHORT,
                              // gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.white,
                              textColor: Colors.black,
                              fontSize: 16.0);
                        },
                        child: Card(
                          margin: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: Colors.redAccent,
                                ),
                                VerticalDivider(
                                  color: Colors.black,
                                ),
                                Text(
                                  "ADD TO CALENDER",
                                  style:
                                  GoogleFonts.roboto(color: Colors.black, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      InkWell(
                        onTap: () {
                          Fluttertoast.showToast(
                              msg: "Photo Posted..",
                              toastLength: Toast.LENGTH_SHORT,
                              // gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.white,
                              textColor: Colors.black,
                              fontSize: 16.0);
                        },
                        child: Card(
                          margin: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.camera_alt,
                                  color: Colors.redAccent,
                                ),
                                VerticalDivider(
                                  color: Colors.black,
                                ),
                                Text(
                                  "POST EVENT PHOTOS",
                                  style: GoogleFonts.roboto(color: Colors.black, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      InkWell(
                        onTap: () {
                          Fluttertoast.showToast(
                              msg: "e-Mail Sent..",
                              toastLength: Toast.LENGTH_SHORT,
                              // gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.white,
                              textColor: Colors.black,
                              fontSize: 16.0);
                        },
                        child: Card(
                          margin: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  color: Colors.redAccent,
                                ),
                                VerticalDivider(
                                  color: Colors.black,
                                ),
                                Text(
                                  "CONTACT EVENT ORGANIZER",
                                  style:GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      InkWell(
                        onTap: () {
                          Fluttertoast.showToast(
                              msg: "Event Saved..",
                              toastLength: Toast.LENGTH_SHORT,
                              // gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.white,
                              textColor: Colors.black,
                              fontSize: 16.0);
                        },
                        child: Card(
                          margin: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.playlist_add,
                                  color: Colors.redAccent,
                                ),
                                VerticalDivider(
                                  color: Colors.black,
                                ),
                                Text(
                                  "SAVE THIS EVENT",
                                  style: GoogleFonts.roboto(color: Colors.black, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                // ],
              // ),
            ),
          ),
          Positioned(
              bottom: 10.0,
              left: MediaQuery.of(context).size.width * 0.3,
              child: RaisedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "Buy Ticket Successful..",
                      toastLength: Toast.LENGTH_SHORT,
                      // gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      fontSize: 16.0);
                },
                child: Container(
                  width: 120.0,
                  child: Text("Get Tichket", textAlign: TextAlign.center,style: GoogleFonts.roboto(color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                elevation: 5,
                splashColor: Colors.white,
                color: Colors.redAccent,
              )),
        ],
      ),
    );
  }
}
