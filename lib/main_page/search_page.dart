// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:workeryemen/components/text_style.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: custmAppBar('شاشة البحث'),
          body: Column(children: [
            NoteTitle('خيارات البحث'),
            Divider(),
            btnIcon('بحث الان..', Icon(Icons.search),() { EasyLoading.showToast('مرحبا'); }),
            Divider(),
            borderCardCont(Column(
              children: [
                Row(children: [
                  CircleAvatar(backgroundColor: Colors.green,child: Icon(Icons.build_circle_rounded),),
                  Expanded(child:  NoteTitle('معلم بناء'))
                ],)
              ],
            ), Colors.pink, 8),
            borderCardCont(Column(
              children: [
                ListTile(
                  title: NoteTitle("عامل بناء"),
                  leading: CircleAvatar(backgroundColor: Colors.blue,child: Icon(Icons.person_pin_outlined,color: Colors.white,),),
                )
              ],
            ), Colors.pink, 8),
             borderCardCont(Column(
              children: [
                ListTile(
                  title: NoteTitle("كهربائي منازل"),
                  leading: CircleAvatar(backgroundColor: Colors.blue.shade900,child:ClipRRect(
    borderRadius: BorderRadius.circular(17.0),
    child:Image.network('https://w7.pngwing.com/pngs/197/981/png-transparent-labor-day-laborer-international-workers-day-builder-miscellaneous-electric-blue-construction-worker-thumbnail.png',
        height: 150.0,
        width: 100.0,
    ),
) ,),
                )
              ],
             ), Colors.pink, 8),
            // borderCardCont(Column(), Colors.pink, 8),
            // borderCardCont(Column(), Colors.pink, 8),

            Expanded(child: GridView.count(
              crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  cardGrid("سباك", 1, ClipRRect(
    borderRadius: BorderRadius.circular(27.0),
    child:Image.network('https://w7.pngwing.com/pngs/717/254/png-transparent-hand-tool-handyman-home-repair-builder-miscellaneous-hat-service-thumbnail.png',
        height: 150.0,
        width: 100.0,
    ),
) , Colors.purple, () {EasyLoading.showToast('status'); }),
                  cardGrid("molayes", 1, Icon(Icons.add_home_work_rounded), Colors.purple, () {EasyLoading.showToast('status'); }),
                  cardGrid("mobalet", 1, Icon(Icons.yard), Colors.purple, () {EasyLoading.showToast('status'); }),
                  cardGrid("free work", 1, Icon(Icons.widgets), Colors.purple, () {EasyLoading.showToast('status'); }),
                ],
              
              ))
            
          ]),
        ));
  }
}
