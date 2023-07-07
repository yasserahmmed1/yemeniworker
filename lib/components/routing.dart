// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:workeryemen/main_page/search_page.dart';
import 'color_img.dart';
import 'text_style.dart';


void goAhead(String pages,context,List<dynamic> cont,String eventid){
  if(pages=='search'){
    Navigator.push(
          context, MaterialPageRoute(builder: (context) => const SearchPage()));
  }
  //else if(pages=="casePage"){
  //   Navigator.push(
  //         context, MaterialPageRoute(builder: (context) =>  CasePage(info: cont,)));
  
  // }else if(pages=="addCase"){
  //   Navigator.push(
  //         context, MaterialPageRoute(builder: (context) =>  AddCase(info: cont,)));
  
  // }else if(pages=="accountU"){
  //   Navigator.push(
  //         context, MaterialPageRoute(builder: (context) =>  AccountPage()));
  // }else if(pages=="home"){
  //   Navigator.push(
  //         context, MaterialPageRoute(builder: (context) =>  Home()));
  // }else if(pages=="showcase"){
  //   Navigator.push(
  //         context, MaterialPageRoute(builder: (context) =>  ShowCase(info: cont,)));
  // }else if(pages=="addemp"){
  //   Navigator.push(
  //         context, MaterialPageRoute(builder: (context) =>  AddEMPtoCase(info: cont,)));
  // }else if(pages=="addfinish"){
  //   Navigator.push(
  //         context, MaterialPageRoute(builder: (context) =>  AddFinish(info: cont,)));
  // }else if(pages=="showfinish"){
  //   Navigator.push(
  //         context, MaterialPageRoute(builder: (context) =>  ShowFinish(info: cont,)));
  // }else if(pages=="usermanual"){
  //   Navigator.push(
  //         context, MaterialPageRoute(builder: (context) =>  UserManual()));
  // }else if(pages=="addsupport"){
  //   Navigator.push(
  //         context, MaterialPageRoute(builder: (context) =>  AddSupports()));
  // }else if(pages=="showsupport"){
  //   Navigator.push(
  //         context, MaterialPageRoute(builder: (context) =>  ShowSupport()));
  // }else if(pages=="rptCase"){
  //   Navigator.push(
  //         context, MaterialPageRoute(builder: (context) =>  CaseRPT()));
  // }

}


DropdownButtonFormField<dynamic> apiDropDownList(List<dynamic>? mainList,String? valueList,Icon hIcon, String hints,Function(dynamic ddd) fun,String arrValu,String arrStri) {
    return DropdownButtonFormField(
                    decoration: InputDecoration(
                      labelText:hints,
                        border: OutlineInputBorder(
                          
                          borderRadius: const BorderRadius.all(
                             Radius.circular(9.0),
                          ),
                        ),
                        // alignLabelWithHint: true,
                         icon: hIcon,
                        hintStyle: TextStyle(color: Colors.green[800]),
                        hintText: hints,
                        ),
                    items: mainList?.map<DropdownMenuItem<String>>(
                            (dynamic val) {
                          return DropdownMenuItem(
                            alignment: Alignment.center,
                            value: val[arrValu],
                            child: borderContainer( Text('${val['id']} - ${val[arrStri]}',textDirection: TextDirection.rtl,textAlign: TextAlign.left,) ,Colors.amber,3.0),
                          );
                        }).toList() ,
                    value:  valueList,
                    onChanged: fun
                  );
  }

  customEasyloading(bool isDismiss){
    EasyLoading.instance
    ..displayDuration = const Duration(seconds: 1)
    ..indicatorType = EasyLoadingIndicatorType.ripple
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.blue.shade900
    ..backgroundColor = getColor('ll')
    ..indicatorColor = Colors.white
    ..textColor = Colors.white
    ..toastPosition = EasyLoadingToastPosition.bottom
    //..textStyle = const TextStyle(fontSize:22,fontStyle: FontStyle.italic )
    ..maskColor = getColor('dd').withOpacity(0.7)
    ..userInteractions = true
    ..maskType = EasyLoadingMaskType.custom
    ..dismissOnTap = isDismiss;
  }