
//import 'package:finalkamaranprize/component/img_color.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static final UserPreferences _instance = UserPreferences._ctor();
  factory UserPreferences() {
    return _instance;
  }
  UserPreferences._ctor();
  late SharedPreferences _prefs;
  init() async {
    _prefs = await SharedPreferences.getInstance();
  }
  get username {
    return _prefs.getString("username")??"" ;
  }
  get exDate {
    return _prefs.getString("EXdate")??"" ;
  }
  // get shortPrize {
  //   return _prefs.getString("shortPrize")??ProductInfo().shortPrize() ;
  // }
  // get longPrize {
  //   return _prefs.getString("longPrize")??ProductInfo().longPrize() ;
  // }
  get tryinputtime {
    return _prefs.getInt("trycount")??0;
  }
  get notify {
    return _prefs.getInt("notify")??0;
  }
  get colorProduct{
    return _prefs.getString("color")??"b";
  }
  get firstUse {
    return _prefs.getBool("frist")??false ;
  }

  get isLogin {
    return _prefs.getBool("isLogin")??false ;
  }

  get dept {
    return _prefs.getString("dept")??"" ;
    
  }
   get hosting {
    return _prefs.getString('hosting')??"" ;
  }
  get userid {
    return _prefs.getString('userid')??"" ;
  }
  get userPass {
    return _prefs.getString('password')??"" ;
  }
   get userType {
    return _prefs.getString('type')??"" ;
  }
  get userPoint {
    return _prefs.getString('point')??"" ;
  }
  get userFullname{
    return _prefs.getString('fullname')??"";
  }
  get removeUser{
    return _prefs.remove('username');
  }
  get removePass{
    return _prefs.remove('password');
  }
  get removeuserID{
    return _prefs.remove('userid');
  }
  get removeisLogin{
    return _prefs.remove('isLogin');
  }
   get removeType{
    return _prefs.remove('type');
  }
  get removePhone{
    return _prefs.remove('type');
  }
  get removePoint{
    return _prefs.remove('point');
  }
  get removeTryInput{
    return _prefs.remove('trycount');
  }
  Future setJwtToken(String value) {
    return _prefs.setString('jwtToken', value);
  }

  String? returnValues(String type){
    return _prefs.getString(type);
  }
}

  
 setUserName (String keyss,String usrName)async{
   SharedPreferences preferences = await SharedPreferences.getInstance();
   preferences.setString(keyss, usrName);
}
setFirstUse(String keyss,bool firstUse) async{
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setBool(keyss, firstUse);
}
setTryCount(String keyss,int firstUse) async{
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setInt(keyss, firstUse);
}
