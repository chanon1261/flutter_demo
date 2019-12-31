import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final List<String> item = List<String>.generate(20, (i) => "Item ${++i}");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'M Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello M Demo"),
        ),
        body: ListView.builder(
            itemCount: item.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text("hello item ${item[index]}"),
                subtitle: Text("into the unknow"),
                trailing: Icon(Icons.accessibility),
              );
            }),
      ),
    );
  }
}

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'M Demo',
//      home: Scaffold(
//          appBar: AppBar(
//            title: Text("hello M Demo"),
//          ),
//          body: ListView(
//            children: <Widget>[
//              ListTile(
//                leading: Icon(Icons.directions_railway),
//                title: Text("08.00"),
//                subtitle: Text("It is a long establish that render"),
//                trailing: Icon(Icons.notifications),
//                onTap: () {
//                  print("Click");
//                },
//              ),
//              ListTile(
//                leading: Icon(Icons.directions_boat),
//                title: Text("08.00"),
//                subtitle: Text("It is a long establish that render"),
//                trailing: Icon(Icons.notifications),
//                selected: true,
//              ),
//              ListTile(
//                leading: Icon(Icons.directions_bike),
//                title: Text("08.00"),
//                subtitle: Text("It is a long establish that render"),
//                trailing: Icon(Icons.notifications),
//              ),
//              ListTile(
//                leading: Icon(Icons.directions_car),
//                title: Text("08.00"),
//                subtitle: Text("It is a long establish that render"),
//                trailing: Icon(Icons.notifications),
//              )
//            ],
//          ),
//      ),
//    );
//  }
//}
