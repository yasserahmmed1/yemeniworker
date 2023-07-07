// ignore_for_file: prefer_const_constructors, avoid_print

import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
//import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

String domainName(){
  //return 'yasoftware20.000webhostapp.com/kprize';
  return 'yasoftware20.000webhostapp.com/kamaran';
}

Future getMainShops(var uri) async {
  try {
    var response =
        await http.get(Uri.parse(uri)).timeout(Duration(seconds: 120));
    var responsebody = jsonDecode(response.body);
    //print(responsebody);
    return responsebody;
  } on TimeoutException catch (_) {
    return null;
  } on Exception catch (_) {
    return null;
  }
}


Future getListSHOW(var uri,var dataa) async {
  var res = await http.post(Uri.parse(uri),body:dataa).timeout(Duration(seconds: 120));
  //print(res.body);
  var resBody = json.decode(res.body);
  return resBody;
}
Future getSMSSHOW(var uri,var dataa) async {
  //print(uri);
  var res = await http.post(Uri.parse(uri),body:dataa);
  print(res.body);
  
}

Future insertNewData(var data, var uri) async {
  try {
    final response = await http
        .post(Uri.parse(uri), body: data)
        .timeout(Duration(seconds:120));
        
    var responsebody = jsonDecode(response.body);
    print(responsebody);
    return responsebody;
  } on TimeoutException catch (e) {
    print(e);
     return "error";
  } on Exception catch (ex) {
    print(ex);
     return "error";
  }
}

Future<bool> checkConnection() async {

    var connectionResult = await (Connectivity().checkConnectivity());
    if (connectionResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectionResult == ConnectivityResult.wifi) {
      return true;
      
    } else if (connectionResult == ConnectivityResult.none) {
     return false;
    }
    return false;
  }

  Future loginFunction(String usernum,String password,String token) async {
    try
    {
      String dddds = "https://${domainName()}/login.php";
    final response = await http.post(Uri.parse(dddds), body: {
       "username": usernum,
                "password": password,
                "type":"login",
                'token':token
    }).timeout(Duration(seconds: 120));
    var responsebody = jsonDecode(response.body);
    print(responsebody);
    if (responsebody['status'] == 'success') {
      // await setUserName("username",responsebody['fullname'] );
      // await setUserName("userid",responsebody['id']);
      // await setUserName("type", responsebody['type']);
      // await setUserName('dept', responsebody['dept']);
      // await setUserName('password', responsebody['password']);
      // await setFirstUse('isLogin',true);
      return responsebody;
    }else {
      return 'faild';
    }
    }on TimeoutException catch (e) {
    print(e.toString());
     return "faild";
  } on Exception catch (ex) {
    print(ex.toString());
     return "faild";
  }
  }
  Future regesterFUNCTION(String usernum,String password,String token,String phone,) async {
    try{
      String dddds = "https://${domainName()}/login.php";
    final response = await http.post(Uri.parse(dddds), body: {
      'username': usernum,
      'gender': password,
      'token': token,
      'regster': 'regster',
      'phone':phone,
      'date':DateTime.now().toString().substring(0,10)
    }).timeout(Duration(seconds: 120));
    var responsebody = jsonDecode(response.body);
    if (responsebody['status'] == 'success') {
      // await setUserName("username",responsebody['fullname'] );
      // await setUserName("type", responsebody['type']);
      // await setUserName("userid",responsebody['userid']);
      // await setUserName('phone', responsebody['phone']);
      return responsebody;
    }else if(responsebody['status']=="exist"){
      return 'exist';
    }  else {
      return 'faild';
    }
    }on TimeoutException catch (e) {
    print(e.toString());
     return "faild";
  } on Exception catch (ex) {
    print(ex.toString());
     return "faild";
  }
  }
  // void logOut(){
  //             UserPreferences().removeuserID;
  //             UserPreferences().removeType;
  //             UserPreferences().removeUser;
  //             UserPreferences().removePass;
  //             UserPreferences().removePhone;
  //             UserPreferences().removePoint;
  //             UserPreferences().removeisLogin;
              
  // }

  String filterPhone(String phone){
    String gg=phone.replaceAll(' ', '');
    gg=gg.replaceAll('(', '');
    gg=gg.replaceAll(')', '');
    gg=gg.replaceAll('-', '');
    gg=gg.replaceAll('*', '');
    gg=gg.replaceAll('#', '');
    gg=gg.replaceAll('+', '');
    if(gg.substring(0,3)=='967'){
      gg=gg.substring(3,gg.length);
    }
    return gg;
  }
