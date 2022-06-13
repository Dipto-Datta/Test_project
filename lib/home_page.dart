import "package:flutter/material.dart";
import 'package:tech_minds/component/custom_appbar.dart';
import 'package:tech_minds/screeens/page_04.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 237, 236, 236)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Customabbbar(),
            Page04(),
            Container(),
          ]),
        ),
      ),
    );
  }
}
