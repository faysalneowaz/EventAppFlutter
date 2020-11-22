import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'dart:convert';
import 'package:progress_dialog/progress_dialog.dart';

import 'package:Bonspiels/view/eventDetails.dart';
import 'package:Bonspiels/model/choice.dart';
class BookingHistory extends StatelessWidget {
  var titleap;
  BookingHistory(this.titleap);

  Future <List<Choice>> loadJson() async{
    var jsonText = await rootBundle.loadString('assets/data.json');
    var jsondata = json.decode(jsonText);
    List <Choice> myData = [];
    for(var i in jsondata){
      Choice choice = Choice(i["title"],i["date"],i["description"],i["imglink"]);
      myData.add(choice);


    }
    return myData;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(titleap,style: GoogleFonts.roboto(color: Colors.white),),

      ),
      body: FutureBuilder(
        future: loadJson(),
        builder: (context, snapshot){
          print(snapshot.data.toString());
          if(snapshot.data == null){

            // pr.show();
            return Container(
              child: Center(
                child: Text("Loading...", style: GoogleFonts.roboto(color: Colors.black),),
              ),
            );
          }else{
            // pr.hide();
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index){
                return GestureDetector(
                  onTap: () {
                    // print(snapshot.data[index].title);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index]) ));
                  },
                  child: Container(
                    height: 100.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, offset: Offset(0.5, 0.5))
                      ],
                    ),
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 10,top: 10),
                    child: Row(
                      children: <Widget>[
                        new Expanded(
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0)),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    snapshot.data[index].imglink,
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              // child: Image.network(choice.imglink, fit: BoxFit.fill,),
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              child: new Container(
                                width: 260.0,
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(snapshot.data[index].title,
                                        style: GoogleFonts.roboto(color: Colors.black),),
                                    Text(snapshot.data[index].date,
                                        style: GoogleFonts.roboto(color: Colors.black.withOpacity(0.5)),
                                        // TextStyle(
                                        //     color: Colors.black.withOpacity(0.5))
                                          ),
                                    Text(
                                      snapshot.data[index].description,
                                      overflow: TextOverflow.ellipsis, style: GoogleFonts.roboto(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],

                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }


        },
      ),
      //   body: ListView(
      //       scrollDirection: Axis.vertical,
      //       shrinkWrap: true,
      //       padding: const EdgeInsets.all(10.0),
      //
      //
      //       // children: List.generate(choices.length, (index) {
      //       //   return Center(
      //       //     child: ChoiceCard(choice: choices[index], item: choices[index]),
      //       //   );
      //       // })
      // ),
    );
  }
}
