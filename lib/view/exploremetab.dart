import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'dart:convert';
import 'package:progress_dialog/progress_dialog.dart';

import 'package:Bonspiels/view/eventDetails.dart';
import 'package:Bonspiels/model/choice.dart';

class exploreme extends StatefulWidget {
  @override
  _exploremeState createState() => _exploremeState();
}

class _exploremeState extends State<exploreme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listView1(),
    );
  }
}

class listView1 extends StatelessWidget {
  // final title = "Nested ListView List";
  Future<List<Choice>> loadJson() async {
    var jsonText = await rootBundle.loadString('assets/data.json');
    var jsondata = json.decode(jsonText);
    List<Choice> myData = [];
    for (var i in jsondata) {
      Choice choice =
          Choice(i["title"], i["date"], i["description"], i["imglink"]);
      myData.add(choice);
    }
    return myData;
  }

  @override
  Widget build(BuildContext context) {
    // List<Choice> choices = const <Choice>[
    //   const Choice(
    //       title: 'Marrage event',
    //       date: '1 June 2019',
    //       description:
    //           'MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.',
    //       imglink:
    //           'http://www.fedracongressi.com/fedra/wp-content/uploads/2016/02/revelry-event-designers-homepage-slideshow-38.jpeg'),
    //   const Choice(
    //       title: 'MacBook Air',
    //       date: '1 June 2016',
    //       description:
    //           'MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.',
    //       imglink:
    //           'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c71.0.206.206a/p206x206/118356958_3412513515467787_5329539925929349462_n.jpg?_nc_cat=109&_nc_sid=b386c4&_nc_ohc=PSNdKH1TgfsAX97sQ2x&_nc_ht=scontent.xx&tp=5&oh=00b1bc8f571f41888ac2317d0d3d8b33&oe=5F8F8FE2'),
    //   const Choice(
    //       title: 'iMac',
    //       date: '1 June 2019',
    //       description:
    //           'iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.',
    //       imglink:
    //           'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/p206x206/119447108_3568298839874933_6885976814567593621_o.jpg?_nc_cat=105&_nc_sid=b386c4&_nc_ohc=MhKn-oczUaMAX_ugYd4&_nc_ht=scontent.xx&tp=3&oh=976aa1a9f82dc6eac213c6a6bc7e7f0d&oe=5F8F3FFA'),
    //   const Choice(
    //       title: 'Mac Mini',
    //       date: '1 June 2017',
    //       description:
    //           'Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.',
    //       imglink:
    //           'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c80.0.206.206a/p206x206/118193290_1998571216933212_7997842866461013686_o.jpg?_nc_cat=101&_nc_sid=b386c4&_nc_ohc=g3mTgoS7z_oAX82ClSP&_nc_ht=scontent.xx&tp=5&oh=4a1cbe1c4c7cae7fe617673c8f7fcdd1&oe=5F8E8F4C'),
    //   const Choice(
    //       title: 'Mac Pro',
    //       date: '1 June 2018',
    //       description:
    //           'Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.',
    //       imglink:
    //           'https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2017/01/mac-pro-2-concept-image.png?resize=1000%2C500&quality=82&strip=all&ssl=1'),
    //   const Choice(
    //       title: 'Marrage event',
    //       date: '1 June 2019',
    //       description:
    //           'MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.',
    //       imglink:
    //           'http://www.fedracongressi.com/fedra/wp-content/uploads/2016/02/revelry-event-designers-homepage-slideshow-38.jpeg'),
    //   const Choice(
    //       title: 'MacBook Air',
    //       date: '1 June 2016',
    //       description:
    //           'MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.',
    //       imglink:
    //           'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c71.0.206.206a/p206x206/118356958_3412513515467787_5329539925929349462_n.jpg?_nc_cat=109&_nc_sid=b386c4&_nc_ohc=PSNdKH1TgfsAX97sQ2x&_nc_ht=scontent.xx&tp=5&oh=00b1bc8f571f41888ac2317d0d3d8b33&oe=5F8F8FE2'),
    //   const Choice(
    //       title: 'iMac',
    //       date: '1 June 2019',
    //       description:
    //           'iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.',
    //       imglink:
    //           'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/p206x206/119447108_3568298839874933_6885976814567593621_o.jpg?_nc_cat=105&_nc_sid=b386c4&_nc_ohc=MhKn-oczUaMAX_ugYd4&_nc_ht=scontent.xx&tp=3&oh=976aa1a9f82dc6eac213c6a6bc7e7f0d&oe=5F8F3FFA'),
    //   const Choice(
    //       title: 'Mac Mini',
    //       date: '1 June 2017',
    //       description:
    //           'Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.',
    //       imglink:
    //           'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c80.0.206.206a/p206x206/118193290_1998571216933212_7997842866461013686_o.jpg?_nc_cat=101&_nc_sid=b386c4&_nc_ohc=g3mTgoS7z_oAX82ClSP&_nc_ht=scontent.xx&tp=5&oh=4a1cbe1c4c7cae7fe617673c8f7fcdd1&oe=5F8E8F4C'),
    //   const Choice(
    //       title: 'Mac Pro',
    //       date: '1 June 2018',
    //       description:
    //           'Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.',
    //       imglink:
    //           'https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2017/01/mac-pro-2-concept-image.png?resize=1000%2C500&quality=82&strip=all&ssl=1'),
    //   const Choice(
    //       title: 'Marrage event',
    //       date: '1 June 2019',
    //       description:
    //           'MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.',
    //       imglink:
    //           'http://www.fedracongressi.com/fedra/wp-content/uploads/2016/02/revelry-event-designers-homepage-slideshow-38.jpeg'),
    //   const Choice(
    //       title: 'MacBook Air',
    //       date: '1 June 2016',
    //       description:
    //           'MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.',
    //       imglink:
    //           'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c71.0.206.206a/p206x206/118356958_3412513515467787_5329539925929349462_n.jpg?_nc_cat=109&_nc_sid=b386c4&_nc_ohc=PSNdKH1TgfsAX97sQ2x&_nc_ht=scontent.xx&tp=5&oh=00b1bc8f571f41888ac2317d0d3d8b33&oe=5F8F8FE2'),
    //   const Choice(
    //       title: 'iMac',
    //       date: '1 June 2019',
    //       description:
    //           'iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.',
    //       imglink:
    //           'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/p206x206/119447108_3568298839874933_6885976814567593621_o.jpg?_nc_cat=105&_nc_sid=b386c4&_nc_ohc=MhKn-oczUaMAX_ugYd4&_nc_ht=scontent.xx&tp=3&oh=976aa1a9f82dc6eac213c6a6bc7e7f0d&oe=5F8F3FFA'),
    //   const Choice(
    //       title: 'Mac Mini',
    //       date: '1 June 2017',
    //       description:
    //           'Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.',
    //       imglink:
    //           'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c80.0.206.206a/p206x206/118193290_1998571216933212_7997842866461013686_o.jpg?_nc_cat=101&_nc_sid=b386c4&_nc_ohc=g3mTgoS7z_oAX82ClSP&_nc_ht=scontent.xx&tp=5&oh=4a1cbe1c4c7cae7fe617673c8f7fcdd1&oe=5F8E8F4C'),
    //   const Choice(
    //       title: 'Mac Pro',
    //       date: '1 June 2018',
    //       description:
    //           'Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.',
    //       imglink:
    //           'https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2017/01/mac-pro-2-concept-image.png?resize=1000%2C500&quality=82&strip=all&ssl=1'),
    //   const Choice(
    //       title: 'Marrage event',
    //       date: '1 June 2019',
    //       description:
    //           'MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.',
    //       imglink:
    //           'http://www.fedracongressi.com/fedra/wp-content/uploads/2016/02/revelry-event-designers-homepage-slideshow-38.jpeg'),
    //   const Choice(
    //       title: 'MacBook Air',
    //       date: '1 June 2016',
    //       description:
    //           'MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.',
    //       imglink:
    //           'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c71.0.206.206a/p206x206/118356958_3412513515467787_5329539925929349462_n.jpg?_nc_cat=109&_nc_sid=b386c4&_nc_ohc=PSNdKH1TgfsAX97sQ2x&_nc_ht=scontent.xx&tp=5&oh=00b1bc8f571f41888ac2317d0d3d8b33&oe=5F8F8FE2'),
    //   const Choice(
    //       title: 'iMac',
    //       date: '1 June 2019',
    //       description:
    //           'iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.',
    //       imglink:
    //           'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/p206x206/119447108_3568298839874933_6885976814567593621_o.jpg?_nc_cat=105&_nc_sid=b386c4&_nc_ohc=MhKn-oczUaMAX_ugYd4&_nc_ht=scontent.xx&tp=3&oh=976aa1a9f82dc6eac213c6a6bc7e7f0d&oe=5F8F3FFA'),
    //   const Choice(
    //       title: 'Mac Mini',
    //       date: '1 June 2017',
    //       description:
    //           'Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.',
    //       imglink:
    //           'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c80.0.206.206a/p206x206/118193290_1998571216933212_7997842866461013686_o.jpg?_nc_cat=101&_nc_sid=b386c4&_nc_ohc=g3mTgoS7z_oAX82ClSP&_nc_ht=scontent.xx&tp=5&oh=4a1cbe1c4c7cae7fe617673c8f7fcdd1&oe=5F8E8F4C'),
    //   const Choice(
    //       title: 'Mac Pro',
    //       date: '1 June 2018',
    //       description:
    //           'Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.',
    //       imglink:
    //           'https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2017/01/mac-pro-2-concept-image.png?resize=1000%2C500&quality=82&strip=all&ssl=1'),
    //   const Choice(
    //       title: 'Marrage event',
    //       date: '1 June 2019',
    //       description:
    //           'MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.',
    //       imglink:
    //           'http://www.fedracongressi.com/fedra/wp-content/uploads/2016/02/revelry-event-designers-homepage-slideshow-38.jpeg'),
    //   const Choice(
    //       title: 'MacBook Air',
    //       date: '1 June 2016',
    //       description:
    //           'MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.',
    //       imglink:
    //           'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c71.0.206.206a/p206x206/118356958_3412513515467787_5329539925929349462_n.jpg?_nc_cat=109&_nc_sid=b386c4&_nc_ohc=PSNdKH1TgfsAX97sQ2x&_nc_ht=scontent.xx&tp=5&oh=00b1bc8f571f41888ac2317d0d3d8b33&oe=5F8F8FE2'),
    //   const Choice(
    //       title: 'iMac',
    //       date: '1 June 2019',
    //       description:
    //           'iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.',
    //       imglink:
    //           'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/p206x206/119447108_3568298839874933_6885976814567593621_o.jpg?_nc_cat=105&_nc_sid=b386c4&_nc_ohc=MhKn-oczUaMAX_ugYd4&_nc_ht=scontent.xx&tp=3&oh=976aa1a9f82dc6eac213c6a6bc7e7f0d&oe=5F8F3FFA'),
    //   const Choice(
    //       title: 'Mac Mini',
    //       date: '1 June 2017',
    //       description:
    //           'Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.',
    //       imglink:
    //           'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c80.0.206.206a/p206x206/118193290_1998571216933212_7997842866461013686_o.jpg?_nc_cat=101&_nc_sid=b386c4&_nc_ohc=g3mTgoS7z_oAX82ClSP&_nc_ht=scontent.xx&tp=5&oh=4a1cbe1c4c7cae7fe617673c8f7fcdd1&oe=5F8E8F4C'),
    //   const Choice(
    //       title: 'Mac Pro',
    //       date: '1 June 2018',
    //       description:
    //           'Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.',
    //       imglink:
    //           'https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2017/01/mac-pro-2-concept-image.png?resize=1000%2C500&quality=82&strip=all&ssl=1'),
    // ];

    return FutureBuilder(
        future: loadJson(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            // pr.show();
            return Container(
              child: Center(
                child: Text("Loading..."),
              ),
            );
          } else {
            // pr.hide();
            return ListView(
              children: [
                // Column(
                //   children: [
                //     Container(
                //       height: 260.0,
                //       child: ListView.builder(
                //           scrollDirection: Axis.horizontal,
                //           itemCount: snapshot.data.length,
                //           itemBuilder: (BuildContext context, int index){
                //             // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                //             // // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index]) ));
                //             return GestureDetector(
                //               onTap: () {
                //                 Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                //               },
                //               child: Stack(
                //                 children: [
                //                   Container(
                //                     height: 260.0,
                //                     width: 260.0,
                //                     decoration: BoxDecoration(
                //                         color: Colors.white,
                //                         borderRadius: BorderRadius.all(Radius.circular(8.0)),
                //                         boxShadow: [
                //                           BoxShadow(color: Colors.black26, offset: Offset(0.5, 0.5))
                //                         ]),
                //                     margin: EdgeInsets.only(left: 10, right: 5),
                //                     child: Column(
                //                       crossAxisAlignment: CrossAxisAlignment.start,
                //                       children: <Widget>[
                //                         Stack(
                //                           children: [
                //                             new Expanded(
                //                                 child: Container(
                //                                   width: 260.0,
                //                                   height: 150.0,
                //                                   decoration: BoxDecoration(
                //                                     borderRadius: BorderRadius.only(
                //                                         topLeft: Radius.circular(8.0),
                //                                         topRight: Radius.circular(8.0)),
                //                                     image: DecorationImage(
                //                                       image: NetworkImage(
                //                                         snapshot.data[index].imglink,
                //                                       ),
                //                                       fit: BoxFit.fill,
                //                                     ),
                //                                   ),
                //                                   // child: Image.network(choice.imglink, fit: BoxFit.fill,),
                //                                 )),
                //                             Positioned(
                //                               top: 80.0,
                //                               left: 20.0,
                //                               child: Container(
                //                                 height: 50.0,
                //                                 width: 50.0,
                //                                 padding: EdgeInsets.all(8.0),
                //                                 decoration: BoxDecoration(
                //                                     color: Colors.blueGrey.withOpacity(0.8),
                //                                     borderRadius:
                //                                     BorderRadius.all(Radius.circular(10.0))),
                //                                 child: Text(
                //                                   snapshot.data[index].date.substring(0, 5),
                //                                   style: TextStyle(
                //                                     color: Colors.white,
                //                                     fontSize: 16.0,
                //                                   ),
                //                                   textAlign: TextAlign.center,
                //                                 ),
                //                               ),
                //                             ),
                //                           ],
                //                         ),
                //                         new Container(
                //                           width: 260.0,
                //                           padding: const EdgeInsets.all(10.0),
                //                           child: Column(
                //                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //                             crossAxisAlignment: CrossAxisAlignment.start,
                //                             children: <Widget>[
                //                               Text(snapshot.data[index].title,
                //                                   style: Theme.of(context).textTheme.title),
                //                               Text(
                //                                 snapshot.data[index].description,
                //                                 overflow: TextOverflow.ellipsis,
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             );
                //           }),
                //     ),
                //     SizedBox(height: 20.0,),
                //     Container(
                //       height: 260.0,
                //       child: ListView.builder(
                //           scrollDirection: Axis.horizontal,
                //           itemCount: snapshot.data.length,
                //           itemBuilder: (BuildContext context, int index){
                //             // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                //             // // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index]) ));
                //             return GestureDetector(
                //               onTap: () {
                //                 Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                //               },
                //               child: Stack(
                //                 children: [
                //                   Container(
                //                     height: 260.0,
                //                     width: 260.0,
                //                     decoration: BoxDecoration(
                //                         color: Colors.white,
                //                         borderRadius: BorderRadius.all(Radius.circular(8.0)),
                //                         boxShadow: [
                //                           BoxShadow(color: Colors.black26, offset: Offset(0.5, 0.5))
                //                         ]),
                //                     margin: EdgeInsets.only(left: 10, right: 5),
                //                     child: Column(
                //                       crossAxisAlignment: CrossAxisAlignment.start,
                //                       children: <Widget>[
                //                         Stack(
                //                           children: [
                //                             new Expanded(
                //                                 child: Container(
                //                                   width: 260.0,
                //                                   height: 150.0,
                //                                   decoration: BoxDecoration(
                //                                     borderRadius: BorderRadius.only(
                //                                         topLeft: Radius.circular(8.0),
                //                                         topRight: Radius.circular(8.0)),
                //                                     image: DecorationImage(
                //                                       image: NetworkImage(
                //                                         snapshot.data[index].imglink,
                //                                       ),
                //                                       fit: BoxFit.fill,
                //                                     ),
                //                                   ),
                //                                   // child: Image.network(choice.imglink, fit: BoxFit.fill,),
                //                                 )),
                //                             Positioned(
                //                               top: 80.0,
                //                               left: 20.0,
                //                               child: Container(
                //                                 height: 50.0,
                //                                 width: 50.0,
                //                                 padding: EdgeInsets.all(8.0),
                //                                 decoration: BoxDecoration(
                //                                     color: Colors.blueGrey.withOpacity(0.8),
                //                                     borderRadius:
                //                                     BorderRadius.all(Radius.circular(10.0))),
                //                                 child: Text(
                //                                   snapshot.data[index].date.substring(0, 5),
                //                                   style: TextStyle(
                //                                     color: Colors.white,
                //                                     fontSize: 16.0,
                //                                   ),
                //                                   textAlign: TextAlign.center,
                //                                 ),
                //                               ),
                //                             ),
                //                           ],
                //                         ),
                //                         new Container(
                //                           width: 260.0,
                //                           padding: const EdgeInsets.all(10.0),
                //                           child: Column(
                //                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //                             crossAxisAlignment: CrossAxisAlignment.start,
                //                             children: <Widget>[
                //                               Text(snapshot.data[index].title,
                //                                   style: Theme.of(context).textTheme.title),
                //                               Text(
                //                                 snapshot.data[index].description,
                //                                 overflow: TextOverflow.ellipsis,
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             );
                //           }),
                //     ),
                //     SizedBox(height: 20.0,),
                //     Container(
                //       height: 260.0,
                //       child: ListView.builder(
                //           scrollDirection: Axis.horizontal,
                //           itemCount: snapshot.data.length,
                //           itemBuilder: (BuildContext context, int index){
                //             // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                //             // // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index]) ));
                //             return GestureDetector(
                //               onTap: () {
                //                 Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                //               },
                //               child: Stack(
                //                 children: [
                //                   Container(
                //                     height: 260.0,
                //                     width: 260.0,
                //                     decoration: BoxDecoration(
                //                         color: Colors.white,
                //                         borderRadius: BorderRadius.all(Radius.circular(8.0)),
                //                         boxShadow: [
                //                           BoxShadow(color: Colors.black26, offset: Offset(0.5, 0.5))
                //                         ]),
                //                     margin: EdgeInsets.only(left: 10, right: 5),
                //                     child: Column(
                //                       crossAxisAlignment: CrossAxisAlignment.start,
                //                       children: <Widget>[
                //                         Stack(
                //                           children: [
                //                             new Expanded(
                //                                 child: Container(
                //                                   width: 260.0,
                //                                   height: 150.0,
                //                                   decoration: BoxDecoration(
                //                                     borderRadius: BorderRadius.only(
                //                                         topLeft: Radius.circular(8.0),
                //                                         topRight: Radius.circular(8.0)),
                //                                     image: DecorationImage(
                //                                       image: NetworkImage(
                //                                         snapshot.data[index].imglink,
                //                                       ),
                //                                       fit: BoxFit.fill,
                //                                     ),
                //                                   ),
                //                                   // child: Image.network(choice.imglink, fit: BoxFit.fill,),
                //                                 )),
                //                             Positioned(
                //                               top: 80.0,
                //                               left: 20.0,
                //                               child: Container(
                //                                 height: 50.0,
                //                                 width: 50.0,
                //                                 padding: EdgeInsets.all(8.0),
                //                                 decoration: BoxDecoration(
                //                                     color: Colors.blueGrey.withOpacity(0.8),
                //                                     borderRadius:
                //                                     BorderRadius.all(Radius.circular(10.0))),
                //                                 child: Text(
                //                                   snapshot.data[index].date.substring(0, 5),
                //                                   style: TextStyle(
                //                                     color: Colors.white,
                //                                     fontSize: 16.0,
                //                                   ),
                //                                   textAlign: TextAlign.center,
                //                                 ),
                //                               ),
                //                             ),
                //                           ],
                //                         ),
                //                         new Container(
                //                           width: 260.0,
                //                           padding: const EdgeInsets.all(10.0),
                //                           child: Column(
                //                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //                             crossAxisAlignment: CrossAxisAlignment.start,
                //                             children: <Widget>[
                //                               Text(snapshot.data[index].title,
                //                                   style: Theme.of(context).textTheme.title),
                //                               Text(
                //                                 snapshot.data[index].description,
                //                                 overflow: TextOverflow.ellipsis,
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             );
                //           }),
                //     ),
                //     SizedBox(height: 20.0,),
                //     Container(
                //       height: 260.0,
                //       child: ListView.builder(
                //           scrollDirection: Axis.horizontal,
                //           itemCount: snapshot.data.length,
                //           itemBuilder: (BuildContext context, int index){
                //             // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                //             // // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index]) ));
                //             return GestureDetector(
                //               onTap: () {
                //                 Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                //               },
                //               child: Stack(
                //                 children: [
                //                   Container(
                //                     height: 260.0,
                //                     width: 260.0,
                //                     decoration: BoxDecoration(
                //                         color: Colors.white,
                //                         borderRadius: BorderRadius.all(Radius.circular(8.0)),
                //                         boxShadow: [
                //                           BoxShadow(color: Colors.black26, offset: Offset(0.5, 0.5))
                //                         ]),
                //                     margin: EdgeInsets.only(left: 10, right: 5),
                //                     child: Column(
                //                       crossAxisAlignment: CrossAxisAlignment.start,
                //                       children: <Widget>[
                //                         Stack(
                //                           children: [
                //                             new Expanded(
                //                                 child: Container(
                //                                   width: 260.0,
                //                                   height: 150.0,
                //                                   decoration: BoxDecoration(
                //                                     borderRadius: BorderRadius.only(
                //                                         topLeft: Radius.circular(8.0),
                //                                         topRight: Radius.circular(8.0)),
                //                                     image: DecorationImage(
                //                                       image: NetworkImage(
                //                                         snapshot.data[index].imglink,
                //                                       ),
                //                                       fit: BoxFit.fill,
                //                                     ),
                //                                   ),
                //                                   // child: Image.network(choice.imglink, fit: BoxFit.fill,),
                //                                 )),
                //                             Positioned(
                //                               top: 80.0,
                //                               left: 20.0,
                //                               child: Container(
                //                                 height: 50.0,
                //                                 width: 50.0,
                //                                 padding: EdgeInsets.all(8.0),
                //                                 decoration: BoxDecoration(
                //                                     color: Colors.blueGrey.withOpacity(0.8),
                //                                     borderRadius:
                //                                     BorderRadius.all(Radius.circular(10.0))),
                //                                 child: Text(
                //                                   snapshot.data[index].date.substring(0, 5),
                //                                   style: TextStyle(
                //                                     color: Colors.white,
                //                                     fontSize: 16.0,
                //                                   ),
                //                                   textAlign: TextAlign.center,
                //                                 ),
                //                               ),
                //                             ),
                //                           ],
                //                         ),
                //                         new Container(
                //                           width: 260.0,
                //                           padding: const EdgeInsets.all(10.0),
                //                           child: Column(
                //                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //                             crossAxisAlignment: CrossAxisAlignment.start,
                //                             children: <Widget>[
                //                               Text(snapshot.data[index].title,
                //                                   style: Theme.of(context).textTheme.title),
                //                               Text(
                //                                 snapshot.data[index].description,
                //                                 overflow: TextOverflow.ellipsis,
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             );
                //           }),
                //     ),
                //     SizedBox(height: 20.0,),
                //     Container(
                //       height: 260.0,
                //       child: ListView.builder(
                //           scrollDirection: Axis.horizontal,
                //           itemCount: snapshot.data.length,
                //           itemBuilder: (BuildContext context, int index){
                //             // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                //             // // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index]) ));
                //             return GestureDetector(
                //               onTap: () {
                //                 Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                //               },
                //               child: Stack(
                //                 children: [
                //                   Container(
                //                     height: 260.0,
                //                     width: 260.0,
                //                     decoration: BoxDecoration(
                //                         color: Colors.white,
                //                         borderRadius: BorderRadius.all(Radius.circular(8.0)),
                //                         boxShadow: [
                //                           BoxShadow(color: Colors.black26, offset: Offset(0.5, 0.5))
                //                         ]),
                //                     margin: EdgeInsets.only(left: 10, right: 5),
                //                     child: Column(
                //                       crossAxisAlignment: CrossAxisAlignment.start,
                //                       children: <Widget>[
                //                         Stack(
                //                           children: [
                //                             new Expanded(
                //                                 child: Container(
                //                                   width: 260.0,
                //                                   height: 150.0,
                //                                   decoration: BoxDecoration(
                //                                     borderRadius: BorderRadius.only(
                //                                         topLeft: Radius.circular(8.0),
                //                                         topRight: Radius.circular(8.0)),
                //                                     image: DecorationImage(
                //                                       image: NetworkImage(
                //                                         snapshot.data[index].imglink,
                //                                       ),
                //                                       fit: BoxFit.fill,
                //                                     ),
                //                                   ),
                //                                   // child: Image.network(choice.imglink, fit: BoxFit.fill,),
                //                                 )),
                //                             Positioned(
                //                               top: 80.0,
                //                               left: 20.0,
                //                               child: Container(
                //                                 height: 50.0,
                //                                 width: 50.0,
                //                                 padding: EdgeInsets.all(8.0),
                //                                 decoration: BoxDecoration(
                //                                     color: Colors.blueGrey.withOpacity(0.8),
                //                                     borderRadius:
                //                                     BorderRadius.all(Radius.circular(10.0))),
                //                                 child: Text(
                //                                   snapshot.data[index].date.substring(0, 5),
                //                                   style: TextStyle(
                //                                     color: Colors.white,
                //                                     fontSize: 16.0,
                //                                   ),
                //                                   textAlign: TextAlign.center,
                //                                 ),
                //                               ),
                //                             ),
                //                           ],
                //                         ),
                //                         new Container(
                //                           width: 260.0,
                //                           padding: const EdgeInsets.all(10.0),
                //                           child: Column(
                //                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //                             crossAxisAlignment: CrossAxisAlignment.start,
                //                             children: <Widget>[
                //                               Text(snapshot.data[index].title,
                //                                   style: Theme.of(context).textTheme.title),
                //                               Text(
                //                                 snapshot.data[index].description,
                //                                 overflow: TextOverflow.ellipsis,
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             );
                //           }),
                //     ),
                //     SizedBox(height: 20.0,),
                //     Container(
                //       height: 260.0,
                //       child: ListView.builder(
                //           scrollDirection: Axis.horizontal,
                //           itemCount: snapshot.data.length,
                //           itemBuilder: (BuildContext context, int index){
                //             // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                //             // // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index]) ));
                //             return GestureDetector(
                //               onTap: () {
                //                 Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                //               },
                //               child: Stack(
                //                 children: [
                //                   Container(
                //                     height: 260.0,
                //                     width: 260.0,
                //                     decoration: BoxDecoration(
                //                         color: Colors.white,
                //                         borderRadius: BorderRadius.all(Radius.circular(8.0)),
                //                         boxShadow: [
                //                           BoxShadow(color: Colors.black26, offset: Offset(0.5, 0.5))
                //                         ]),
                //                     margin: EdgeInsets.only(left: 10, right: 5),
                //                     child: Column(
                //                       crossAxisAlignment: CrossAxisAlignment.start,
                //                       children: <Widget>[
                //                         Stack(
                //                           children: [
                //                             new Expanded(
                //                                 child: Container(
                //                                   width: 260.0,
                //                                   height: 150.0,
                //                                   decoration: BoxDecoration(
                //                                     borderRadius: BorderRadius.only(
                //                                         topLeft: Radius.circular(8.0),
                //                                         topRight: Radius.circular(8.0)),
                //                                     image: DecorationImage(
                //                                       image: NetworkImage(
                //                                         snapshot.data[index].imglink,
                //                                       ),
                //                                       fit: BoxFit.fill,
                //                                     ),
                //                                   ),
                //                                   // child: Image.network(choice.imglink, fit: BoxFit.fill,),
                //                                 )),
                //                             Positioned(
                //                               top: 80.0,
                //                               left: 20.0,
                //                               child: Container(
                //                                 height: 50.0,
                //                                 width: 50.0,
                //                                 padding: EdgeInsets.all(8.0),
                //                                 decoration: BoxDecoration(
                //                                     color: Colors.blueGrey.withOpacity(0.8),
                //                                     borderRadius:
                //                                     BorderRadius.all(Radius.circular(10.0))),
                //                                 child: Text(
                //                                   snapshot.data[index].date.substring(0, 5),
                //                                   style: TextStyle(
                //                                     color: Colors.white,
                //                                     fontSize: 16.0,
                //                                   ),
                //                                   textAlign: TextAlign.center,
                //                                 ),
                //                               ),
                //                             ),
                //                           ],
                //                         ),
                //                         new Container(
                //                           width: 260.0,
                //                           padding: const EdgeInsets.all(10.0),
                //                           child: Column(
                //                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //                             crossAxisAlignment: CrossAxisAlignment.start,
                //                             children: <Widget>[
                //                               Text(snapshot.data[index].title,
                //                                   style: Theme.of(context).textTheme.title),
                //                               Text(
                //                                 snapshot.data[index].description,
                //                                 overflow: TextOverflow.ellipsis,
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             );
                //           }),
                //     ),
                //     SizedBox(height: 20.0,),
                //     Container(
                //       height: 260.0,
                //       child: ListView.builder(
                //           scrollDirection: Axis.horizontal,
                //           itemCount: snapshot.data.length,
                //           itemBuilder: (BuildContext context, int index){
                //             // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                //             // // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index]) ));
                //             return GestureDetector(
                //               onTap: () {
                //                 Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                //               },
                //               child: Stack(
                //                 children: [
                //                   Container(
                //                     height: 260.0,
                //                     width: 260.0,
                //                     decoration: BoxDecoration(
                //                         color: Colors.white,
                //                         borderRadius: BorderRadius.all(Radius.circular(8.0)),
                //                         boxShadow: [
                //                           BoxShadow(color: Colors.black26, offset: Offset(0.5, 0.5))
                //                         ]),
                //                     margin: EdgeInsets.only(left: 10, right: 5),
                //                     child: Column(
                //                       crossAxisAlignment: CrossAxisAlignment.start,
                //                       children: <Widget>[
                //                         Stack(
                //                           children: [
                //                             new Expanded(
                //                                 child: Container(
                //                                   width: 260.0,
                //                                   height: 150.0,
                //                                   decoration: BoxDecoration(
                //                                     borderRadius: BorderRadius.only(
                //                                         topLeft: Radius.circular(8.0),
                //                                         topRight: Radius.circular(8.0)),
                //                                     image: DecorationImage(
                //                                       image: NetworkImage(
                //                                         snapshot.data[index].imglink,
                //                                       ),
                //                                       fit: BoxFit.fill,
                //                                     ),
                //                                   ),
                //                                   // child: Image.network(choice.imglink, fit: BoxFit.fill,),
                //                                 )),
                //                             Positioned(
                //                               top: 80.0,
                //                               left: 20.0,
                //                               child: Container(
                //                                 height: 50.0,
                //                                 width: 50.0,
                //                                 padding: EdgeInsets.all(8.0),
                //                                 decoration: BoxDecoration(
                //                                     color: Colors.blueGrey.withOpacity(0.8),
                //                                     borderRadius:
                //                                     BorderRadius.all(Radius.circular(10.0))),
                //                                 child: Text(
                //                                   snapshot.data[index].date.substring(0, 5),
                //                                   style: TextStyle(
                //                                     color: Colors.white,
                //                                     fontSize: 16.0,
                //                                   ),
                //                                   textAlign: TextAlign.center,
                //                                 ),
                //                               ),
                //                             ),
                //                           ],
                //                         ),
                //                         new Container(
                //                           width: 260.0,
                //                           padding: const EdgeInsets.all(10.0),
                //                           child: Column(
                //                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //                             crossAxisAlignment: CrossAxisAlignment.start,
                //                             children: <Widget>[
                //                               Text(snapshot.data[index].title,
                //                                   style: Theme.of(context).textTheme.title),
                //                               Text(
                //                                 snapshot.data[index].description,
                //                                 overflow: TextOverflow.ellipsis,
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             );
                //           }),
                //     ),
                //     SizedBox(height: 20.0,),
                //     Container(
                //       height: 260.0,
                //       child: ListView.builder(
                //           scrollDirection: Axis.horizontal,
                //           itemCount: snapshot.data.length,
                //           itemBuilder: (BuildContext context, int index){
                //             // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                //             // // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index]) ));
                //             return GestureDetector(
                //               onTap: () {
                //                 Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                //               },
                //               child: Stack(
                //                 children: [
                //                   Container(
                //                     height: 260.0,
                //                     width: 260.0,
                //                     decoration: BoxDecoration(
                //                         color: Colors.white,
                //                         borderRadius: BorderRadius.all(Radius.circular(8.0)),
                //                         boxShadow: [
                //                           BoxShadow(color: Colors.black26, offset: Offset(0.5, 0.5))
                //                         ]),
                //                     margin: EdgeInsets.only(left: 10, right: 5),
                //                     child: Column(
                //                       crossAxisAlignment: CrossAxisAlignment.start,
                //                       children: <Widget>[
                //                         Stack(
                //                           children: [
                //                             new Expanded(
                //                                 child: Container(
                //                                   width: 260.0,
                //                                   height: 150.0,
                //                                   decoration: BoxDecoration(
                //                                     borderRadius: BorderRadius.only(
                //                                         topLeft: Radius.circular(8.0),
                //                                         topRight: Radius.circular(8.0)),
                //                                     image: DecorationImage(
                //                                       image: NetworkImage(
                //                                         snapshot.data[index].imglink,
                //                                       ),
                //                                       fit: BoxFit.fill,
                //                                     ),
                //                                   ),
                //                                   // child: Image.network(choice.imglink, fit: BoxFit.fill,),
                //                                 )),
                //                             Positioned(
                //                               top: 80.0,
                //                               left: 20.0,
                //                               child: Container(
                //                                 height: 50.0,
                //                                 width: 50.0,
                //                                 padding: EdgeInsets.all(8.0),
                //                                 decoration: BoxDecoration(
                //                                     color: Colors.blueGrey.withOpacity(0.8),
                //                                     borderRadius:
                //                                     BorderRadius.all(Radius.circular(10.0))),
                //                                 child: Text(
                //                                   snapshot.data[index].date.substring(0, 5),
                //                                   style: TextStyle(
                //                                     color: Colors.white,
                //                                     fontSize: 16.0,
                //                                   ),
                //                                   textAlign: TextAlign.center,
                //                                 ),
                //                               ),
                //                             ),
                //                           ],
                //                         ),
                //                         new Container(
                //                           width: 260.0,
                //                           padding: const EdgeInsets.all(10.0),
                //                           child: Column(
                //                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //                             crossAxisAlignment: CrossAxisAlignment.start,
                //                             children: <Widget>[
                //                               Text(snapshot.data[index].title,
                //                                   style: Theme.of(context).textTheme.title),
                //                               Text(
                //                                 snapshot.data[index].description,
                //                                 overflow: TextOverflow.ellipsis,
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             );
                //           }),
                //     ),
                //     SizedBox(height: 20.0,),
                //
                //
                //
                //
                //   ],
                // ),

                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  height: 260.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                        // // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index]) ));
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 260.0,
                                width: 260.0,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                    boxShadow: [
                                      // BoxShadow(color: Colors.black26, offset: Offset(0.5, 0.5))
                                    ]),
                                margin: EdgeInsets.only(left: 10, right: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    // Stack(
                                    //   children: [
                                        new Expanded(
                                            child: Container(
                                              width: 260.0,
                                              height: 150.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(8.0),
                                                    topRight: Radius.circular(8.0)),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                    snapshot.data[index].imglink,
                                                  ),
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              // child: Image.network(choice.imglink, fit: BoxFit.fill,),
                                            )),
                                        // Positioned(
                                        //   top: 80.0,
                                        //   left: 20.0,
                                        //   child: Container(
                                        //     height: 50.0,
                                        //     width: 50.0,
                                        //     padding: EdgeInsets.all(8.0),
                                        //     decoration: BoxDecoration(
                                        //         color: Colors.blueGrey.withOpacity(0.8),
                                        //         borderRadius:
                                        //         BorderRadius.all(Radius.circular(10.0))),
                                        //     child: Text(
                                        //       snapshot.data[index].date.substring(0, 5),
                                        //       style: TextStyle(
                                        //         color: Colors.white,
                                        //         fontSize: 16.0,
                                        //       ),
                                        //       textAlign: TextAlign.center,
                                        //     ),
                                        //   ),
                                        // ),
                                    //   ],
                                    // ),
                                    new Container(
                                      width: 260.0,
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(snapshot.data[index].title,
                                              style: Theme.of(context).textTheme.title),
                                          Text(
                                            snapshot.data[index].description,
                                            overflow: TextOverflow.ellipsis,style: GoogleFonts.roboto(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 80.0,
                                left: 20.0,
                                child: Container(
                                  height: 50.0,
                                  width: 50.0,
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey.withOpacity(0.8),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                                  child: Text(
                                    snapshot.data[index].date.substring(0, 5),
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(height: 20.0,),
                Container(
                  height: 260.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                        // // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index]) ));
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 260.0,
                                width: 260.0,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                    boxShadow: [
                                      // BoxShadow(color: Colors.black26, offset: Offset(0.5, 0.5))
                                    ]),
                                margin: EdgeInsets.only(left: 10, right: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    // Stack(
                                    //   children: [
                                    new Expanded(
                                        child: Container(
                                          width: 260.0,
                                          height: 150.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8.0),
                                                topRight: Radius.circular(8.0)),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                snapshot.data[index].imglink,
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          // child: Image.network(choice.imglink, fit: BoxFit.fill,),
                                        )),
                                    // Positioned(
                                    //   top: 80.0,
                                    //   left: 20.0,
                                    //   child: Container(
                                    //     height: 50.0,
                                    //     width: 50.0,
                                    //     padding: EdgeInsets.all(8.0),
                                    //     decoration: BoxDecoration(
                                    //         color: Colors.blueGrey.withOpacity(0.8),
                                    //         borderRadius:
                                    //         BorderRadius.all(Radius.circular(10.0))),
                                    //     child: Text(
                                    //       snapshot.data[index].date.substring(0, 5),
                                    //       style: TextStyle(
                                    //         color: Colors.white,
                                    //         fontSize: 16.0,
                                    //       ),
                                    //       textAlign: TextAlign.center,
                                    //     ),
                                    //   ),
                                    // ),
                                    //   ],
                                    // ),
                                    new Container(
                                      width: 260.0,
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(snapshot.data[index].title,
                                              style: Theme.of(context).textTheme.title),
                                          Text(
                                            snapshot.data[index].description,
                                            overflow: TextOverflow.ellipsis,style: GoogleFonts.roboto(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 80.0,
                                left: 20.0,
                                child: Container(
                                  height: 50.0,
                                  width: 50.0,
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey.withOpacity(0.8),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                                  child: Text(
                                    snapshot.data[index].date.substring(0, 5),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(height: 20.0,),
                Container(
                  height: 260.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                        // // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index]) ));
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 260.0,
                                width: 260.0,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                    boxShadow: [
                                      // BoxShadow(color: Colors.black26, offset: Offset(0.5, 0.5))
                                    ]),
                                margin: EdgeInsets.only(left: 10, right: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    // Stack(
                                    //   children: [
                                    new Expanded(
                                        child: Container(
                                          width: 260.0,
                                          height: 150.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8.0),
                                                topRight: Radius.circular(8.0)),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                snapshot.data[index].imglink,
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          // child: Image.network(choice.imglink, fit: BoxFit.fill,),
                                        )),
                                    // Positioned(
                                    //   top: 80.0,
                                    //   left: 20.0,
                                    //   child: Container(
                                    //     height: 50.0,
                                    //     width: 50.0,
                                    //     padding: EdgeInsets.all(8.0),
                                    //     decoration: BoxDecoration(
                                    //         color: Colors.blueGrey.withOpacity(0.8),
                                    //         borderRadius:
                                    //         BorderRadius.all(Radius.circular(10.0))),
                                    //     child: Text(
                                    //       snapshot.data[index].date.substring(0, 5),
                                    //       style: TextStyle(
                                    //         color: Colors.white,
                                    //         fontSize: 16.0,
                                    //       ),
                                    //       textAlign: TextAlign.center,
                                    //     ),
                                    //   ),
                                    // ),
                                    //   ],
                                    // ),
                                    new Container(
                                      width: 260.0,
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(snapshot.data[index].title,
                                              style: Theme.of(context).textTheme.title),
                                          Text(
                                            snapshot.data[index].description,
                                            overflow: TextOverflow.ellipsis,style: GoogleFonts.roboto(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 80.0,
                                left: 20.0,
                                child: Container(
                                  height: 50.0,
                                  width: 50.0,
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey.withOpacity(0.8),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                                  child: Text(
                                    snapshot.data[index].date.substring(0, 5),
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(height: 20.0,),
                Container(
                  height: 260.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                        // // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index]) ));
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                          },
                          child: Stack(
                        children: [
                        Container(
                        height: 260.0,
                          width: 260.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              boxShadow: [
                                // BoxShadow(color: Colors.black26, offset: Offset(0.5, 0.5))
                              ]),
                          margin: EdgeInsets.only(left: 10, right: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // Stack(
                              //   children: [
                              new Expanded(
                                  child: Container(
                                    width: 260.0,
                                    height: 150.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8.0),
                                          topRight: Radius.circular(8.0)),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          snapshot.data[index].imglink,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    // child: Image.network(choice.imglink, fit: BoxFit.fill,),
                                  )),
                              // Positioned(
                              //   top: 80.0,
                              //   left: 20.0,
                              //   child: Container(
                              //     height: 50.0,
                              //     width: 50.0,
                              //     padding: EdgeInsets.all(8.0),
                              //     decoration: BoxDecoration(
                              //         color: Colors.blueGrey.withOpacity(0.8),
                              //         borderRadius:
                              //         BorderRadius.all(Radius.circular(10.0))),
                              //     child: Text(
                              //       snapshot.data[index].date.substring(0, 5),
                              //       style: TextStyle(
                              //         color: Colors.white,
                              //         fontSize: 16.0,
                              //       ),
                              //       textAlign: TextAlign.center,
                              //     ),
                              //   ),
                              // ),
                              //   ],
                              // ),
                              new Container(
                                width: 260.0,
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(snapshot.data[index].title,
                                        style: Theme.of(context).textTheme.title),
                                    Text(
                                      snapshot.data[index].description,
                                      overflow: TextOverflow.ellipsis, style: GoogleFonts.roboto(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                        top: 80.0,
                        left: 20.0,
                        child: Container(
                        height: 50.0,
                        width: 50.0,
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(0.8),
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0))),
                        child: Text(
                        snapshot.data[index].date.substring(0, 5),
                        style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 16.0,
                        ),
                        textAlign: TextAlign.center,
                        ),
                        ),
                        ),
                        ],
                        ),
                        );
                      }),
                ),
                SizedBox(height: 20.0,),
                Container(
                  height: 260.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                        // // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index]) ));
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 260.0,
                                width: 260.0,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                    boxShadow: [
                                      // BoxShadow(color: Colors.black26, offset: Offset(0.5, 0.5))
                                    ]),
                                margin: EdgeInsets.only(left: 10, right: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    // Stack(
                                    //   children: [
                                    new Expanded(
                                        child: Container(
                                          width: 260.0,
                                          height: 150.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8.0),
                                                topRight: Radius.circular(8.0)),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                snapshot.data[index].imglink,
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          // child: Image.network(choice.imglink, fit: BoxFit.fill,),
                                        )),
                                    // Positioned(
                                    //   top: 80.0,
                                    //   left: 20.0,
                                    //   child: Container(
                                    //     height: 50.0,
                                    //     width: 50.0,
                                    //     padding: EdgeInsets.all(8.0),
                                    //     decoration: BoxDecoration(
                                    //         color: Colors.blueGrey.withOpacity(0.8),
                                    //         borderRadius:
                                    //         BorderRadius.all(Radius.circular(10.0))),
                                    //     child: Text(
                                    //       snapshot.data[index].date.substring(0, 5),
                                    //       style: TextStyle(
                                    //         color: Colors.white,
                                    //         fontSize: 16.0,
                                    //       ),
                                    //       textAlign: TextAlign.center,
                                    //     ),
                                    //   ),
                                    // ),
                                    //   ],
                                    // ),
                                    new Container(
                                      width: 260.0,
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(snapshot.data[index].title,
                                              style: Theme.of(context).textTheme.title),
                                          Text(
                                            snapshot.data[index].description,
                                            overflow: TextOverflow.ellipsis, style: GoogleFonts.roboto(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 80.0,
                                left: 20.0,
                                child: Container(
                                  height: 50.0,
                                  width: 50.0,
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey.withOpacity(0.8),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                                  child: Text(
                                    snapshot.data[index].date.substring(0, 5),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(height: 20.0,),
                Container(
                  height: 260.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                        // // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index]) ));
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 260.0,
                                width: 260.0,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                    boxShadow: [
                                      // BoxShadow(color: Colors.black26, offset: Offset(0.5, 0.5))
                                    ]),
                                margin: EdgeInsets.only(left: 10, right: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    // Stack(
                                    //   children: [
                                    new Expanded(
                                        child: Container(
                                          width: 260.0,
                                          height: 150.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8.0),
                                                topRight: Radius.circular(8.0)),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                snapshot.data[index].imglink,
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          // child: Image.network(choice.imglink, fit: BoxFit.fill,),
                                        )),
                                    // Positioned(
                                    //   top: 80.0,
                                    //   left: 20.0,
                                    //   child: Container(
                                    //     height: 50.0,
                                    //     width: 50.0,
                                    //     padding: EdgeInsets.all(8.0),
                                    //     decoration: BoxDecoration(
                                    //         color: Colors.blueGrey.withOpacity(0.8),
                                    //         borderRadius:
                                    //         BorderRadius.all(Radius.circular(10.0))),
                                    //     child: Text(
                                    //       snapshot.data[index].date.substring(0, 5),
                                    //       style: TextStyle(
                                    //         color: Colors.white,
                                    //         fontSize: 16.0,
                                    //       ),
                                    //       textAlign: TextAlign.center,
                                    //     ),
                                    //   ),
                                    // ),
                                    //   ],
                                    // ),
                                    new Container(
                                      width: 260.0,
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(snapshot.data[index].title,
                                              style: Theme.of(context).textTheme.title),
                                          Text(
                                            snapshot.data[index].description,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 80.0,
                                left: 20.0,
                                child: Container(
                                  height: 50.0,
                                  width: 50.0,
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey.withOpacity(0.8),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                                  child: Text(
                                    snapshot.data[index].date.substring(0, 5),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(height: 20.0,),
                Container(
                  height: 260.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                        // // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index]) ));
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 260.0,
                                width: 260.0,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                    boxShadow: [
                                      // BoxShadow(color: Colors.black26, offset: Offset(0.5, 0.5))
                                    ]),
                                margin: EdgeInsets.only(left: 10, right: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    // Stack(
                                    //   children: [
                                    new Expanded(
                                        child: Container(
                                          width: 260.0,
                                          height: 150.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8.0),
                                                topRight: Radius.circular(8.0)),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                snapshot.data[index].imglink,
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          // child: Image.network(choice.imglink, fit: BoxFit.fill,),
                                        )),
                                    // Positioned(
                                    //   top: 80.0,
                                    //   left: 20.0,
                                    //   child: Container(
                                    //     height: 50.0,
                                    //     width: 50.0,
                                    //     padding: EdgeInsets.all(8.0),
                                    //     decoration: BoxDecoration(
                                    //         color: Colors.blueGrey.withOpacity(0.8),
                                    //         borderRadius:
                                    //         BorderRadius.all(Radius.circular(10.0))),
                                    //     child: Text(
                                    //       snapshot.data[index].date.substring(0, 5),
                                    //       style: TextStyle(
                                    //         color: Colors.white,
                                    //         fontSize: 16.0,
                                    //       ),
                                    //       textAlign: TextAlign.center,
                                    //     ),
                                    //   ),
                                    // ),
                                    //   ],
                                    // ),
                                    new Container(
                                      width: 260.0,
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(snapshot.data[index].title,
                                              style: Theme.of(context).textTheme.title),
                                          Text(
                                            snapshot.data[index].description,
                                            overflow: TextOverflow.ellipsis, style: GoogleFonts.roboto(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 80.0,
                                left: 20.0,
                                child: Container(
                                  height: 50.0,
                                  width: 50.0,
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey.withOpacity(0.8),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                                  child: Text(
                                    snapshot.data[index].date.substring(0, 5),
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(height: 20.0,),
                Container(
                  height: 260.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                        // // Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index]) ));
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetails(snapshot.data[index].imglink,snapshot.data[index].title,snapshot.data[index].date,snapshot.data[index].description)));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 260.0,
                                width: 260.0,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                    boxShadow: [
                                      // BoxShadow(color: Colors.black26, offset: Offset(0.5, 0.5))
                                    ]),
                                margin: EdgeInsets.only(left: 10, right: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    // Stack(
                                    //   children: [
                                    new Expanded(
                                        child: Container(
                                          width: 260.0,
                                          height: 150.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8.0),
                                                topRight: Radius.circular(8.0)),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                snapshot.data[index].imglink,
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          // child: Image.network(choice.imglink, fit: BoxFit.fill,),
                                        )),
                                    // Positioned(
                                    //   top: 80.0,
                                    //   left: 20.0,
                                    //   child: Container(
                                    //     height: 50.0,
                                    //     width: 50.0,
                                    //     padding: EdgeInsets.all(8.0),
                                    //     decoration: BoxDecoration(
                                    //         color: Colors.blueGrey.withOpacity(0.8),
                                    //         borderRadius:
                                    //         BorderRadius.all(Radius.circular(10.0))),
                                    //     child: Text(
                                    //       snapshot.data[index].date.substring(0, 5),
                                    //       style: TextStyle(
                                    //         color: Colors.white,
                                    //         fontSize: 16.0,
                                    //       ),
                                    //       textAlign: TextAlign.center,
                                    //     ),
                                    //   ),
                                    // ),
                                    //   ],
                                    // ),
                                    new Container(
                                      width: 260.0,
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(snapshot.data[index].title,
                                              style: Theme.of(context).textTheme.title),
                                          Text(
                                            snapshot.data[index].description,
                                            overflow: TextOverflow.ellipsis, style: GoogleFonts.roboto(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 80.0,
                                left: 20.0,
                                child: Container(
                                  height: 50.0,
                                  width: 50.0,
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey.withOpacity(0.8),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                                  child: Text(
                                    snapshot.data[index].date.substring(0, 5),
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(height: 20.0,),
              ],
            );
          }
        });
  }
}

//   ListView(children: [
//
//   Container(
//     height: 260.0,
//     child: ListView(
//         scrollDirection: Axis.horizontal,
//         shrinkWrap: true,
//         padding: const EdgeInsets.all(10.0),
//         children: List.generate(choices.length, (index) {
//           return Center(
//             child: ChoiceCard(choice: choices[index], item: choices[index]),
//           );
//         })),
//   ),
//   Container(
//     height: 260.0,
//     child: ListView(
//         scrollDirection: Axis.horizontal,
//         shrinkWrap: true,
//         padding: const EdgeInsets.all(10.0),
//         children: List.generate(choices.length, (index) {
//           return Center(
//             child: ChoiceCard(choice: choices[index], item: choices[index]),
//           );
//         })),
//   ),
//   Container(
//     height: 260.0,
//     child: ListView(
//         scrollDirection: Axis.horizontal,
//         shrinkWrap: true,
//         padding: const EdgeInsets.all(10.0),
//         children: List.generate(choices.length, (index) {
//           return Center(
//             child: ChoiceCard(choice: choices[index], item: choices[index]),
//           );
//         })),
//   ),
//   Container(
//     height: 260.0,
//     child: ListView(
//         scrollDirection: Axis.horizontal,
//         shrinkWrap: true,
//         padding: const EdgeInsets.all(10.0),
//         children: List.generate(choices.length, (index) {
//           return Center(
//             child: ChoiceCard(choice: choices[index], item: choices[index]),
//           );
//         })),
//   ),
//   Container(
//     height: 260.0,
//     child: ListView(
//         scrollDirection: Axis.horizontal,
//         shrinkWrap: true,
//         padding: const EdgeInsets.all(10.0),
//         children: List.generate(choices.length, (index) {
//           return Center(
//             child: ChoiceCard(choice: choices[index], item: choices[index]),
//           );
//         })),
//   ),
// ]);
// ));
//   }
// }

// class Choice {
//   final String title;
//   final String date;
//   final String description;
//   final String imglink;
//
//   const Choice({this.title, this.date, this.description, this.imglink});
// }

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key,
      this.choice,
      this.onTap,
      @required this.item,
      this.selected: false})
      : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EventDetails(choice.imglink, choice.title,
                    choice.date, choice.description)));
      },
      child: Stack(
        children: [
          Container(
            height: 260.0,
            width: 260.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                boxShadow: [
                  BoxShadow(color: Colors.black26, offset: Offset(0.5, 0.5))
                ]),
            margin: EdgeInsets.only(left: 10, right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: [
                    new Expanded(
                        child: Container(
                      width: 260.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0)),
                        image: DecorationImage(
                          image: NetworkImage(
                            choice.imglink,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      // child: Image.network(choice.imglink, fit: BoxFit.fill,),
                    )),
                    Positioned(
                      top: 80.0,
                      left: 20.0,
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.8),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: Text(
                          choice.date.substring(0, 5),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                new Container(
                  width: 260.0,
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(choice.title,
                          style: Theme.of(context).textTheme.title),
                      Text(
                        choice.description,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class mylistView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 250,
//       width: 350,
//       child: Column(
//         children: <Widget>[
//           Container(
//             // padding: EdgeInsets.all(8),
//             child: Stack(
//               overflow: Overflow.visible,
//               children: <Widget>[
//                 Positioned(
//                   child: Container(
//                     height: 200,
//                     width: 300,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10.0),
//                       image: DecorationImage(
//                         image: AssetImage('assets/images/personimage.png'),
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 20,
//                   top: 150,
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Color(0xFF001064).withOpacity(0.6),
//                         borderRadius: BorderRadius.circular(10.0)),
//                     padding: EdgeInsets.all(8.0),
//                     child: Column(
//                       children: <Widget>[
//                         Text(
//                           "04",
//                           style: TextStyle(fontSize: 14, color: Colors.white),
//                         ),
//                         Text(
//                           "Oct",
//                           style: TextStyle(fontSize: 14, color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// SingleChildScrollView(
// child: Stack(
// children: <Widget>[
// Container(
// width: MediaQuery.of(context).size.width,
// height: MediaQuery.of(context).size.height,
// child: Column(
// children: <Widget>[
// Row(
// mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisSize: MainAxisSize.max,
// children: <Widget>[
// Expanded(
// child: Container(
// margin: EdgeInsets.only(top: 20, right: 10),
// width: 100,
// height: 40,
// child: TextField(
// decoration: InputDecoration(
// enabledBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Colors.grey),
// borderRadius: BorderRadius.circular(50.0),
// ),
// focusedBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Colors.grey),
// borderRadius: BorderRadius.circular(50.0),
// ),
// ),
// ),
// ),
// ),
// Expanded(
// child: Container(
// margin: EdgeInsets.only(top: 20, right: 10),
// width: 100,
// height: 40,
// child: TextField(
// decoration: InputDecoration(
// enabledBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Colors.grey),
// borderRadius: BorderRadius.circular(50.0),
// ),
// focusedBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Colors.grey),
// borderRadius: BorderRadius.circular(50.0),
// ),
// ),
// ),
// ),
// ),
// Expanded(
// child: Container(
// margin: EdgeInsets.only(top: 20),
// width: 100,
// height: 40,
// child: TextField(
// decoration: InputDecoration(
// enabledBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Colors.grey),
// borderRadius: BorderRadius.circular(50.0),
// ),
// focusedBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Colors.grey),
// borderRadius: BorderRadius.circular(50.0),
// ),
// ),
// ),
// ),
// ),
// Expanded(
// child: Container(
// margin: EdgeInsets.only(top: 20),
// width: 100,
// height: 40,
// child: TextField(
// decoration: InputDecoration(
// enabledBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Colors.grey),
// borderRadius: BorderRadius.circular(50.0),
// ),
// focusedBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Colors.grey),
// borderRadius: BorderRadius.circular(50.0),
// ),
// ),
// ),
// ),
// ),
//
// ListView.builder(
// itemCount: 0,
// // itemBuilder: (BuildContext context,int index) =>,
// )
// ],
// ),
// ],
// ),
// ),
// ],
// ),
// ),
