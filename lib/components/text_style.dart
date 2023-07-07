
// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


AppBar custmAppBar(String title) {
  return AppBar(
    title: Text(title,style: TextStyle(color: Colors.white),),
    backgroundColor: Colors.lightGreen[600],
    centerTitle: true,
    //elevation: 8.0,
    leading: const Text(''),
    // actions:<Widget> [
    //   CircleAvatar(backgroundColor: Colors.white, child: Image.asset('images/kkkk.png',height: 30,),),
    // ],
  );
}
Container borderContainer(Widget ccc,Color col,double ww){
  return Container(
    padding: EdgeInsets.only(right: 9),
    decoration: BoxDecoration(

              border: Border(right: BorderSide(color: col, width: ww))),
            child: ccc);
}
Card borderCardCont(Widget ccc,Color col,double ww){
  return Card(
    elevation: 9.0,
    child:Container(
    padding: EdgeInsets.only(right: 9),
    decoration: BoxDecoration(

              border: Border(right: BorderSide(color: col, width: ww))),
            child: ccc) ,

  );
}
SwitchListTile switchList(String txt,Icon ico,bool vv ){
  return SwitchListTile.adaptive(
    title: NoteTitle(txt),
    secondary: ico,
    value: vv, onChanged: null);
}
Container squireButton(String title,Widget ico,Color cols){
  return Container(
    height: 100.0,
    
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                child: ico,
                padding: const EdgeInsets.all(12),
              ),
              Container(height: 6,
              width: 100.0,
              color: Colors.white,),
              Container(
                width: 100.0,
                height: 30,
                decoration:  BoxDecoration(
                  color:cols,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(12), bottomLeft: Radius.circular(12))
                ),
                child: Text(title,style:TextStyle(color: Colors.white,),textAlign: TextAlign.center,),
                padding: const EdgeInsets.all(1),
              )
            ],
          ),
        );
}
SizedBox invitCard(Widget mainWedgit,Color ccc,context){
  return SizedBox(
                height: MediaQuery.of(context).size.height-250,
                width: MediaQuery.of(context).size.width-30,
                child: 
                  Card(elevation: 10.0,
                  color:ccc,
                  shape: kBackButtonShapeAll,
                  child: mainWedgit
                  ),);
}
Card cardGrid(String name,double wfo, Widget iconsd,Color cool, VoidCallback fun){
  return Card(
              elevation: 9.0,
              shape: kBackButtonShapeAll,
              child: 
              InkWell(onTap: fun,
              child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Container(
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(blurRadius: 9, color: Colors.black.withOpacity(0.2), spreadRadius: 0.1)],
                    ),
                    //maxRadius:40
                    //height:19
                    //fontSize:24
                    child:CircleAvatar(backgroundColor: Colors.grey.shade100, maxRadius: 35, child: iconsd)),
                   Container(height: 9,),
                  Text(name,style: TextStyle(color: cool,fontSize: 14/wfo),),
                ],
              ),)
              );
}
Card customCard(
String name, String subT, Widget logo, Color c1, Color c2, VoidCallback fun) {

  return Card(
    elevation: 9.0,
    shape: kBackButtonShape,
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [c1, c2],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: ListTile(
        title: MainTitles(name, 17),
        leading: CircleAvatar(child:  logo,backgroundColor: Colors.white,),
        onTap: fun,
        isThreeLine: true,
        subtitle: NormalText(subT),
        
      ),
    ),
  );
  
}
ShapeBorder kBackButtonShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(30),
    bottomLeft: Radius.circular(30)
  ),
);
ShapeBorder kBackButtonShapeAll = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(9))
    // .only(
    // topRight: Radius.circular(20),
    // topLeft: Radius.circular(20),
    // bottomLeft: Radius.circular(20),
    // bottomRight: Radius.circular(20)
  // ),
);

SizedBox circelButtomTxt(String title,Color color,Icon icon, VoidCallback fun,double zz) {
    return SizedBox.fromSize(size: Size(56,56),
                          child: ClipOval(child: Material(
    color: color,
    child: InkWell(
      splashColor: Color.fromARGB(255, 245, 98, 0), 
      onTap: fun, 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icon, // <-- Icon
          Text(title,style: TextStyle(fontSize: 16/zz, color: Color.fromARGB(255, 255, 255, 255))), // <-- Text
        ],
      ),
    ),),));
  }
///////////////////////

TextField inputTextFild(String hint, Icon logo,
    TextEditingController controller, Function(String? ddd) fun, int mLine, bool pass) {
      
  return TextField(
    controller: controller,
    textInputAction: !pass?TextInputAction.next:TextInputAction.done,
    textDirection: TextDirection.rtl,
    maxLines: mLine,
    minLines: 1,
    // maxLength: 90,
    textAlign: TextAlign.right,
    obscureText: pass,
    decoration: InputDecoration(
      labelText: hint,
      suffixIcon: controller.text.isEmpty?Container(width: 0,): IconButton(icon: Icon(Icons.close), onPressed: 
      (() =>  controller.clear())),
      prefixIcon: Padding(padding: EdgeInsets.only(right: 8), child: logo),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(9.0),gapPadding: 4.0),
    ),
    onChanged: fun,
  );
}

//////////////////////
///Input Number Only
TextField inputTextNumberOnly(String hint, Icon logo,
    TextEditingController controller, Function(String? fun) fun, int mLine) {
  return TextField(
    controller: controller,
    maxLines: mLine,
    keyboardType: TextInputType.phone,
    minLines: 1,
       // style: TextStyle(fontSize: 16/xzx(context)),
    decoration: InputDecoration(
      labelText: hint,
      prefixIcon: Padding(padding: EdgeInsets.only(right: 8), child: logo),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
    ),
    inputFormatters: <TextInputFormatter>[
      FilteringTextInputFormatter.digitsOnly
    ],
    onChanged: fun,
  );
}

//////////////////////////
///Number onlu with enable;
TextField inputTextNumberEnable(String hint, Icon logo,
    TextEditingController controller, Function fun, int mLine, bool ee) {
  return TextField(
    controller: controller,
    maxLines: mLine,
    keyboardType: TextInputType.phone,
    minLines: 1,
    enabled: ee,
       // style: TextStyle(fontSize: 16/xzx(context)),
    decoration: InputDecoration(
      labelText: hint,
      prefixIcon: Padding(padding: EdgeInsets.only(right: 10.0), child: logo),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    ),
    inputFormatters: <TextInputFormatter>[
      FilteringTextInputFormatter.digitsOnly
    ],
    onChanged: fun(),
  );
}

ElevatedButton btnIcon(String txt,Icon ico , VoidCallback fun){
  return ElevatedButton.icon(
    onPressed: fun, 
    
    icon: ico, 
    label: Text(txt));
}

class FunBottom extends StatelessWidget {
  final String text;
  final Color colors;
  final VoidCallback fun;

   FunBottom(this.text, this.colors, this.fun);

  @override
  Widget build(BuildContext context) {
    final fontsizeee=MediaQuery.of(context).textScaleFactor;
    return MaterialButton(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 22/fontsizeee),
        ),
        minWidth: 120,
        height: 46,
        elevation: 9.0,
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(18.0) ),
        // clipBehavior: Clip.hardEdge,
        color: colors,
        onPressed: fun);
  }
}

/////////////////////
///Custom Text Widget;
///
class MainTitles extends StatelessWidget {
  final String _date;
  final double _size;
  MainTitles(this._date, this._size) ;

  @override
  Widget build(BuildContext context) {
     final fontsizeee=MediaQuery.of(context).textScaleFactor;
    return Text(
      _date,
      //textAlign: TextAlign.center,
      style: TextStyle( fontSize: _size/fontsizeee, color: Colors.black),
    );
  }
}
class MainTitlesddd extends StatelessWidget {
  final String _date;
  final double _size;
  MainTitlesddd(this._date, this._size) ;

  @override
  Widget build(BuildContext context) {
     final fontsizeee=MediaQuery.of(context).textScaleFactor;
    return Text(
      _date,
      textAlign: TextAlign.center,
      style: TextStyle( fontSize: _size/fontsizeee, color: Colors.black),
    );
  }
}

///////////////
///show wait Dialog
showdialog(context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
            content: Row(children: const [
          //Image.asset("images/200.gif"),

          CircularProgressIndicator(),

          Text("جاري التحميل    . . ."),
        ]));
      });
}

///////////////
///Show Text Dialog
showdialogall(context, String mytitle, String mycontent) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
            title: Text(mytitle),
            content: Text(mycontent),
            actions: [
              // ignore: deprecated_member_use
              MaterialButton(
                child: Text("موافق"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ]);
      });
}

//Test New Look Dialog

mboxShow(context, String titls, Widget options) {
  return showDialog(
    barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => SimpleDialog(

            elevation: 8.0,
            title: MainTitles(titls,19),
            alignment: Alignment.center,
            children: [
              options
            ],
          ));
}

////////////////////
///Dialog with VoidCallbacks

messageBoxFun(context, String mytitle, Widget mycontent, VoidCallback fun) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            title: Text(mytitle),
            content: mycontent,

            actions: [
              // ignore: deprecated_member_use
              MaterialButton(child: Text("موافق"), onPressed: fun)
            ]);
      });
}

/////////////////
///Show Toast
/*showToast(String messages)=> Fluttertoast.showToast(
  msg:messages,
  toastLength:Toast.LENGTH_SHORT,
  gravity: ToastGravity.CENTER,
  fontSize: 20.0
);
*/


class NoteTitle extends StatelessWidget {
  final String _title;

  NoteTitle(this._title);
  @override
  Widget build(BuildContext context) {
     final fontsizeee=MediaQuery.of(context).textScaleFactor;
    return Text(
      _title,
      textAlign: TextAlign.right,
      style: TextStyle(fontSize: 17/fontsizeee),
    );
  }
}
class NoteTitleWhite extends StatelessWidget {
  final String _title;

  NoteTitleWhite(this._title);
  @override
  Widget build(BuildContext context) {
     final fontsizeee=MediaQuery.of(context).textScaleFactor;
    return Text(
      _title,
      textAlign: TextAlign.right,
      
      style: TextStyle(color: Colors.white, fontSize: 17/fontsizeee),
    );
  }
}
class NormalText extends StatelessWidget {
  final String _title;

  NormalText(this._title);
  @override
  Widget build(BuildContext context) {
     final fontsizeee=MediaQuery.of(context).textScaleFactor;
    return Text(
      _title,
      textAlign: TextAlign.right,
      
      style: TextStyle(color: Colors.black, fontSize: 13/fontsizeee),
    );
  }
}

