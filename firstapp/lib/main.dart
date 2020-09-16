import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
            child: Column(
          children: [
            CircleAvatar(
              radius: 50.0,
              //backgroundColor: Colors.amber,
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
            Text(
              'Sakshi Shelar',
              style: TextStyle(
                fontFamily: 'Sans',
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
            Text(
              'Student',
              style: TextStyle(
                fontFamily: 'Path',
                fontSize: 20.0,
                letterSpacing: 2.5,
                color: Colors.white,
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "shelar.sa@somaiya.edu",
                    style: TextStyle(color: Colors.teal.shade900, fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "345678912",
                    style: TextStyle(color: Colors.teal.shade900, fontSize: 20),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(FirstApp());
// }

// class FirstApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner:
//           false, //removes debug banner which is at top right corner
//       home: Scaffold(
//         backgroundColor: Colors.blueGrey[100],
//         appBar: AppBar(
//           title: Text("First App"),
//           backgroundColor: Colors.blueGrey,
//         ),
//         body: SafeArea(
//           //so that it does not merge with top area of screen
//           child: Container(
//             //position and resize the widgets ,container with no child takes max space i.e whole screen ,with child only child space,has only one child
//             color: Colors.white,
//             child: Text("I am container"),
//             height: 200,
//             width: 120,
//             //margin: EdgeInsets.all(20),//all=>same value for all sides
//             //margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
//             //margin: EdgeInsets.fromLTRB(30, 10, 20, 50),
//             margin: EdgeInsets.only(left: 50.0),
//             padding: EdgeInsets.all(30),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(FirstApp());
// }

// class FirstApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner:
//           false, //removes debug banner which is at top right corner
//       home: Scaffold(
//         backgroundColor: Colors.blueGrey[100],
//         appBar: AppBar(
//           title: Text("First App"),
//           backgroundColor: Colors.blueGrey,
//         ),
//         body: SafeArea(
//           //so that it does not merge with top area of screen
//           child: Row(
//             //crossAxisAlignment:CrossAxisAlignment.stretch ,
//            verticalDirection:VerticalDirection.up,//starts at end and all childs up
//             //mainAxisSize: MainAxisSize.min,//column should take only the size by children
//             //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Container(
//                 height: 100,
//                 //width: 320,
//                 color: Colors.red,
//                 child:Text("I am container 1"),
//               ),
//               SizedBox(//to create gap between
//                 //height:20.0,//for column
//                 width:20.0//for row
//               ),
//               Container(
//                 height: 100,
//                 //width: 120,
//                 color: Colors.blue,
//                 child:Text("I am container 2"),
//               ),
//                SizedBox(
//                 //height:20.0,
//                 width:20.0,
//               ),
//               Container(
//                 height: 100,
//                 //width: 120,
//                 color: Colors.yellow,
//                 child:Text("I am container 3"),
//               ),
//               // Container(
//               //   width:double.infinity//column
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
