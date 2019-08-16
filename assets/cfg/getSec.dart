import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';

void main() async{
  await GlobalConfiguration().loadFromAsset("app_settings");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    // Access configuration at build method
    GlobalConfiguration cfg = new GlobalConfiguration();
    //print("Key3 has value ${cfg.getString("key3")}");
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}


//class MyApp extends StatelessWidget {
//
//  MyApp(){
//    // Access configuration at constructor
//    GlobalConfiguration().loadFromAsset("app_settings");
//    print("KeyA has value ${cfg.getString("INP_A")}");
//   // print(cfg.getString('INP_A'));
//  }
//
//
//}