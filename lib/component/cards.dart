import 'package:flutter/material.dart';
import 'package:tech_minds/component/order_titles.dart';

class Pagecards extends StatelessWidget {
  const Pagecards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 5,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 150),
          itemBuilder: (context, index) => GridItems()),
    );
  }
}

class GridItems extends StatelessWidget {
  const GridItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  "assets/images/01.jpg",
                  height: 50,
                  width: 70,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 255, 240, 193)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Vac 20",
                      style: TextStyle(
                          color: Color.fromARGB(255, 129, 98, 3), fontSize: 10),
                    ),
                  ))
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridBoldText(title: "Microsoft", pop: FontWeight.bold, size: 13),
              GridBoldText(
                  title: "Sr. back-end Developer",
                  pop: FontWeight.bold,
                  size: 15),
              GridBoldText(
                  title: "Bangladesh, Dhaka", pop: FontWeight.bold, size: 13),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GridGreyText(
                    title: "Salaries",
                    pop: FontWeight.bold,
                  ),
                  GridGreyText(
                    title: "Q&A",
                    pop: FontWeight.bold,
                  ),
                  GridGreyText(
                    title: "Open Jobs",
                    pop: FontWeight.bold,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class GridBoldText extends StatelessWidget {
  final String title;
  final FontWeight pop;
  final double size;

  const GridBoldText({
    Key? key,
    required this.title,
    required this.pop,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: pop,
          fontSize: size,
        ),
      ),
    );
  }
}

class GridGreyText extends StatelessWidget {
  final String title;
  final FontWeight pop;

  const GridGreyText({
    Key? key,
    required this.title,
    required this.pop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Text(
        title,
        style: TextStyle(fontWeight: pop, fontSize: 12, color: Colors.grey),
      ),
    );
  }
}
