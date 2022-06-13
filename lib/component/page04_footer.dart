import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageEnd extends StatelessWidget {
  const PageEnd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      constraints: BoxConstraints(maxWidth: 1100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Textitems(
                      title: "Popular Companies for other Job Title", size: 20),
                  UnderlinedText(title: "Medical Tecnologist"),
                  UnderlinedText(title: "Medical Tecnologist"),
                  UnderlinedText(title: "Medical Tecnologist"),
                  UnderlinedText(title: "Medical Tecnologist"),
                  UnderlinedText(title: "Medical Tecnologist"),
                  UnderlinedText(title: "Medical Tecnologist"),
                  UnderlinedText(title: "Medical Tecnologist"),
                ],
              ),
              SizedBox(
                width: 300,
              ),
              Column(
                children: [
                  Textitems(
                      title: "Popular Companies for other Locations", size: 20),
                  UnderlinedText(title: "Medical Tecnologist"),
                  UnderlinedText(title: "Medical Tecnologist"),
                  UnderlinedText(title: "Medical Tecnologist"),
                  UnderlinedText(title: "Medical Tecnologist"),
                  UnderlinedText(title: "Medical Tecnologist"),
                  UnderlinedText(title: "Medical Tecnologist"),
                  UnderlinedText(title: "Medical Tecnologist"),
                ],
              )
            ],
          ),
          SizedBox(
            height: 200,
          ),
        ],
      ),
    );
  }
}

class Textitems extends StatelessWidget {
  final String title;
  final double size;

  const Textitems({
    Key? key,
    required this.title,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Text(
        title,
        style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: size,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class UnderlinedText extends StatelessWidget {
  final String title;

  const UnderlinedText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.black,
          fontSize: 18),
    );
  }
}
