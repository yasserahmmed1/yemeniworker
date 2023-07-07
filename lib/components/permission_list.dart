


import 'package:permission_handler/permission_handler.dart';

void checkCameraPermission() async{
  if(await Permission.camera.status.isDenied){
    await Permission.camera.request();
  }
  return;
}

void checkContactPermission() async{
  if(await Permission.contacts.status.isDenied){
    await Permission.contacts.request();
  }
  if(await Permission.contacts.status.isGranted){
    await Permission.contacts.request();
  }
  return;
}