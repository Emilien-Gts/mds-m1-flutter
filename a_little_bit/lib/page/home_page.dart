import 'package:a_little_bit/page/random_cat_page.dart';
import 'package:a_little_bit/widget/a_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A little bit of everything'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AButton('Async Await', () {
              print('Async Await');
            }),
            AButton('Cache Manager', () {
              print('Cache Manager');
            }),
            AButton('Random Cat', () {
              print('Random Cat');
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RandomCatPage();
              }));
            })
          ],
        ),
      ),
    );
  }
}
