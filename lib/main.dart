import 'package:flutter/material.dart';
import 'package:Bonspiels/view/menuPageOne.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepageMain(),
    );
  }
}

// class HomePagemain extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePagemain> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//
//         title: Text("Home",style: TextStyle(fontSize: 18.0, color: Colors.white),),
//         backgroundColor: Colors.blue,
//         actions: <Widget>[
//           IconButton(icon: Icon(Icons.person,color: Colors.white,size: 25.0,), onPressed: null)
//         ],
//       ),
//     );
//   }
// }





