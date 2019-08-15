import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';

import 'json_model.dart';

main() async {

String path='D:/workspace/flutter_bdd-master/test/util/objectKey.json';

  try {
    final file = new File(path);
    String str = await file.readAsString();
    Map<String, dynamic> jsonSource = jsonDecode(str);

    /*trannsfer Json to object unity*/
    JsonModelDemo bean=JsonModelDemo.fromJson(jsonSource);
    var valueSouceA = bean.iNPUserName;
    var valueSouceB = bean.lBLGreetting;
    print('===demo result===:$valueSouceA'+'-----'+'$valueSouceB');
  }
  catch (err) {
    print(err);
  }

// In debuging @Aug 15 2019
//var valueX=getValueFromJson(path);
//print('result1:$valueX');
}


readJSON() async {
  try {
    final file = new File('objectKey.json');
    String str = await file.readAsString();
    return json.decode(str);
  }
  catch (err) {
    print(err);
  }
}

 getValueFromJson(String jsonPath,String keyName) async {
    final file = new File(jsonPath);
    String str = await file.readAsString();
    Map<String, dynamic> jsonSource = jsonDecode(str);

    /*将Json转成实体类*/
    JsonModelDemo bean=JsonModelDemo.fromJson(jsonSource);
    /*取值*/
    var valueSouceA = 'bean'+'.+keyName';
    print('result1:$valueSouceA');
    return '$valueSouceA';
}




