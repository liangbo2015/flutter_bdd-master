import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';

import 'json_model.dart';

//main() async {
//
//String path='D:/workspace/flutter_bdd-master/test/util/objectKey.json';
//String keyName="INP_UserName";
//  try {
//    final file = new File(path);
//    String str = await file.readAsString();
//    Map<String, dynamic> jsonSource = jsonDecode(str);
//
//    /*trannsfer Json to object unity*/
//    JsonModelDemo bean=JsonModelDemo.fromJson(jsonSource);
//     var itemLength=jsonSource.keys.length;
//    for(int i=0;i<itemLength;i++){
//      String key=jsonSource.keys.elementAt(i);
//      if(key==keyName){
//        String value= jsonSource.values.elementAt(i);
//        print('=map=='+i.toString()+"==="+key+"==="+value);
//      }
//    }
//  }
//  catch (err) {
//    print(err);
//  }
//
//}


main() {
  // In debuging  @Aug 15 2019
  String path='D:/workspace/flutter_bdd-master/test/util/objectKey.json';
  String keyName="INP_UserName";
  print('result1');
  getValueFromJson(path,keyName);
  print('result2');
}


Future<dynamic> getValueFromJson(String jsonPath,String keyName) async {
  try{
    final file = new File(jsonPath);
    String str = await file.readAsString();
    Map<String, dynamic> jsonSource = jsonDecode(str);

    JsonModelDemo bean=JsonModelDemo.fromJson(jsonSource);
    var itemLength=jsonSource.keys.length;
    for(int i=0;i<itemLength;i++){
      String key=jsonSource.keys.elementAt(i);

      if(key==keyName) {
        String value = jsonSource.values.elementAt(i);
        print('=map==' + i.toString() + "===" + key + "===" + value);
        return value;
      }
    }
  }
  catch (err) {
    print(err);
  }
}




