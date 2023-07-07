

// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color getColor(String dd){
  if(dd=="0"){
    return Color.fromRGBO(178, 31, 2, 0.749);
  }else if(dd=="1"){
    return  Color.fromRGBO(3, 187, 141, 1);
  }else if(dd=='2'){
    return Color.fromRGBO(136, 10, 199, 1);
  }
  else if(dd=="3"){
    return Color.fromRGBO(123, 65, 65, 1);
  }else if(dd=="4"){
    return  Color.fromRGBO(102, 213, 230, 1);
  }
  return Colors.blue.shade900;
}

String checkDateExpire(String dateex){
    DateTime dateexpire=DateTime.parse(dateex);
    if(DateTime.now().compareTo(dateexpire) > 0){
      return 'expire';
    }else{
      return 'none';
    }
  }
Icon getIconStates(String type,String ss){
  
  if(type == 'case'){
    if(ss=="0"){
      return Icon(Icons.info_outline,color: Colors.white,);
    }else if(ss == '1'){
      return Icon(Icons.person_add,color: Colors.white);
    }else if(ss == '2'){
      return Icon(Icons.done,color: Colors.white,);
    }else if(ss == '3'){
      return Icon(Icons.warning,color: Colors.white,);
    }else if(ss == '4'){
      return Icon(Icons.warning,color: Colors.white,);
    }else if(ss=='10'){
      return Icon(Icons.task_alt_rounded,color: Colors.white,);
    }
  }else if (type == 'task'){
    if(ss=="0"){
      return Icon(Icons.alarm_on,color: Colors.white,);
    }else if(ss == '1'){
      return Icon(Icons.spatial_tracking_sharp,color: Colors.white,);
    }else if(ss == '2'){
      return Icon(Icons.done,color: Colors.white,);
    }else if(ss == '3'){
      return Icon(Icons.watch_later_outlined,color: Colors.white,);
    }else if(ss == '4'){
      return Icon(Icons.warning,color: Colors.white,);
    }else if(ss=='10'){
      return Icon(Icons.task_alt_rounded,color: Colors.white,);
    }
  }else if(type == 'support'){
    if(ss=='0'){
      return Icon(Icons.warning_amber_rounded,color: Colors.white,);
    }else if(ss == '1'){
      return Icon(Icons.insert_chart_outlined_sharp,color: Colors.white);
    }
  }
  return Icon(Icons.wysiwyg);
}
String getPeriortyState(String pp){
  if(pp == '0'){
    return 'عادي';
  }else if(pp == '1'){
    return 'متوسط';
  }else if(pp == '2'){
    return 'قصوى';
  }
  return 'عادي';
}
String getStatesType(String type){
  if(type=="0"){
    return 'في انتظار الاسناد للمختص';
  }
  else if(type=="1"){
    return 'تم الاسناد ويتم المعالجة';
  }
  else if(type=="2"){
    return 'تم حل المشكلة';
  }
  else if(type=="3"){
    return "قي انتظار موافقة";
  }
  else if(type=="4"){
    return 'قي انتظار قطع غيار';
  }else if(type == '10'){
    return 'تم اغلاق البلاغ';
  }
  return 'none';

}
String getTypeName(String ss){
  if(ss=='0'){
    return 'شكوى';
  }else if(ss == '1'){
    return 'مقترح';
  }
  return 'لم يتم التحديد';
}
String verifySMSgenerate(){
  String codes="";
  var rands=Random();
  for(int i=0;i<5;i++){
    codes+=rands.nextInt(9).toString();
  }
  return codes;
}
String randNumber(){
  String codes="";
  var rands=Random();
  
    codes+=rands.nextInt(4).toString();
  
  return codes;
}

CachedNetworkImage displayIMG(String urls){
  return CachedNetworkImage(
                                  imageUrl:
                                      urls,
                                      fit: BoxFit.fill,
                                  placeholder: (context, url) =>
                                      Center(child: Platform.isAndroid?CircularProgressIndicator():CupertinoActivityIndicator(),),
                                  errorWidget: (context, url, error) =>
                                      Center(child: Icon(Icons.error)),
                                );
}
