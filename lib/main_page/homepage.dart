// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:workeryemen/components/routing.dart';
import 'package:workeryemen/components/text_style.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
    customEasyloading(true);
  }
  @override
  Widget build(BuildContext context) {
    final fontsizeee=MediaQuery.of(context).textScaleFactor;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: custmAppBar('الرئيسية'),
          body: Column(children: [
            Container(height: MediaQuery.of(context).size.height/4, color: Colors.amber,),
            Divider(),
            borderContainer(SizedBox(height: 100,
            child: ListTile(title: NoteTitle('hellows')),),Colors.green,9),
            Expanded(child: GridView.count( 
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  cardGrid('بحث', fontsizeee, Icon(Icons.search_sharp), Colors.red, ()=>goAhead('search', context, [], '')),
                  cardGrid('اعمالي', fontsizeee, Icon(Icons.webhook_sharp,size: 44,), Colors.blue, () { }),
                  cardGrid('تقييماتي', fontsizeee, Icon(Icons.star_half_sharp), Colors.amber, () { }),
                  cardGrid('حسابي', fontsizeee, Icon(Icons.account_box), Colors.purple, () { }),
                  cardGrid('عن التطبيق', fontsizeee, Icon(Icons.app_shortcut_outlined), Colors.pink, () { }),
                ],
                ))
          ]),
        ));
  }
}
