import 'package:flutter/material.dart';
import 'package:tech_minds/component/cards.dart';
import 'package:tech_minds/component/page04_footer.dart';

class Page04 extends StatelessWidget {
  const Page04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 50),
        constraints: BoxConstraints(maxWidth: 1200),
        child: ListView(
          shrinkWrap: true,
          children: [
            Textitems(title: "Find Great Place to Work", size: 55),
            Textitems(
                title: "Get access to millons of company reviews", size: 21),
            Row(
              children: [
                Textitems(title: "Company name or job title", size: 22),
                SizedBox(
                  width: 60,
                ),
                Textitems(
                  title: "City, district or ZIP (optional)",
                  size: 20,
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    width: 300,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 20,
                            color: Colors.black,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    width: 300,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 20,
                            color: Colors.black,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 20,
                            color: Colors.black,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Center(
                          child: Text(
                            "Find Companies",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Do you want to search for salaries?',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                    fontSize: 18),
              ),
            ),
            Textitems(title: "Popular companies", size: 35),
            Pagecards(),
            Center(child: PageEnd()),
          ],
        ),
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
