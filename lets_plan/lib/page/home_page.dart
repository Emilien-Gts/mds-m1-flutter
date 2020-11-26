import 'package:flutter/material.dart';
import 'package:lets_plan/page/widget/card.dart';
import 'package:lets_plan/page/widget/table_item.dart';
import 'package:lets_plan/style/colors.dart';
import 'package:lets_plan/style/titles.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: blue,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 55.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text("Let's plan", style: h1),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                  child: Image.asset(
                                    'assets/emilien.jpeg',
                                    height: 60,
                                    fit: BoxFit.contain,
                                  )
                              ),
                            )
                          ],
                        )
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text("My schedule", style: h2),
                      ),
                    ),
                    Container(
                        child: SizedBox(
                          height: 100.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              CardWidget(
                                Icon(Icons.nature_people, color: Colors.blue),
                                'Vacation',
                                '12 items'
                              ),
                              CardWidget(
                                  Icon(Icons.add_shopping_cart, color: Colors.red),
                                  'Grossery',
                                  '8 items'
                              ),
                              CardWidget(
                                  Icon(Icons.house, color: Colors.purple),
                                  'House',
                                  '27 items'
                              ),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text('Today', style: sectionTitleUnderline),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('Week', style: sectionTitle),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('Month', style: sectionTitle),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('', style: sectionTitle),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200.0,
                      margin: const EdgeInsets.only(top: 15.0),
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          TableItem(Colors.green, "To pet Richard", "10:30 AM"),
                          TableItem(Colors.green, "Water the flower", "12:00 PM"),
                          TableItem(Colors.red, 'Brunch with Alice', "2:00 PM"),
                          TableItem(Colors.yellow, "Go to the exhibition", "5:00 PM"),
                        ],
                      ),
                    ),
                    Container(
                      child: SizedBox(
                        height: 20,
                      ),
                    ),
                    Container(
                      child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              color: Colors.blue,
                            ),
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}

