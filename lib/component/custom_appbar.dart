import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Customabbbar extends StatefulWidget {
  const Customabbbar({Key? key}) : super(key: key);

  @override
  State<Customabbbar> createState() => _CustomabbbarState();
}

class _CustomabbbarState extends State<Customabbbar> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 70,
      ),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(0, -2),
          blurRadius: 10,
          color: Colors.black,
        ),
      ]),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "Tech-minds",
            style: TextStyle(
              color: Colors.purple,
              fontSize: 22,
            ),
          ),
        ),
        MenuItem(
          isSelected: selectedindex == 0,
          title: "Homepage",
          press: () {
            setState(() {
              selectedindex = 0;
            });
          },
        ),
        MenuItem(
          isSelected: selectedindex == 1,
          title: "Job List",
          press: () {
            setState(() {
              selectedindex = 1;
            });
          },
        ),
        MenuItem(
          isSelected: selectedindex == 2,
          title: "Companies",
          press: () {
            setState(() {
              selectedindex = 2;
            });
          },
        ),
        MenuItem(
          isSelected: selectedindex == 3,
          title: "Carrier Guide",
          press: () {
            setState(() {
              selectedindex = 3;
            });
          },
        ),
        MenuItem(
          isSelected: selectedindex == 4,
          title: "Position Guide",
          press: () {
            setState(() {
              selectedindex = 4;
            });
          },
        ),
        Spacer(),
        MenuItem(isSelected: false, title: "English", press: () {}),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/01.jpg",
              height: 50,
              width: 30,
              fit: BoxFit.fill,
            ),
          ),
        )
      ]),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final void Function() press;
  final bool isSelected;
  const MenuItem({
    Key? key,
    required this.title,
    required this.press,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60),
      child: TextButton(
        onPressed: press,
        child: Text(
          title,
          style: TextStyle(
              color: isSelected ? Colors.blue : Color.fromARGB(255, 82, 82, 82),
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
