import 'package:flutter/material.dart';
import 'package:vegetables/api/vegetable_api.dart';
import 'package:vegetables/model/vegetable_model.dart';
import 'package:vegetables/page/home/widget/vegetable_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vegetables'),
      ),
      body: FutureBuilder<List<Vegetable>>(
        future: VegetableApi.getvegetables(),
        builder: _listVegetableFutureBuilder,
      )
    );
  }

  Widget _listVegetableFutureBuilder(BuildContext context, AsyncSnapshot<List<Vegetable>> snapshot) {
    if(snapshot.connectionState == ConnectionState.waiting) {
      return Center(child: CircularProgressIndicator());
    }else if(snapshot.hasError) {
      return Text('Error loading vegetables');
    } else {
      List<Vegetable> vegetables = snapshot.data;

      return ListView.builder(
        itemCount: vegetables.length,
        itemBuilder: (context, position) {
          return VegetableItem(vegetables[position]);
        }
      );
    }
  }
}
