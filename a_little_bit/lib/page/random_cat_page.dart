import 'package:a_little_bit/api/meow_api.dart';
import 'package:a_little_bit/model/meow_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RandomCatPage extends StatefulWidget {
  @override
  _RandomCatPageState createState() => _RandomCatPageState();
}

class _RandomCatPageState extends State<RandomCatPage> {
  MeowModel _meowModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Cat'),
        actions: [
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () async {
                print('Refresh');
                MeowModel meowModel = await getMeow();
                setState(() {
                  _meowModel = meowModel;
                });
                print(meowModel.file);
              })
        ],
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    if (_meowModel == null) {
      return Center(child: Text('Snif snif, no cat :('));
    } else {
      return CachedNetworkImage(
        imageUrl: _meowModel.file,
      );
    }
  }
}
