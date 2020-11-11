import 'package:flutter/material.dart';

enum GameState { initial, waiting, click, result }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GameState _gameState = GameState.initial;
  DateTime _departureTime;
  int _resultMilli;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: _buildContent(),
        onTap: _onTap,
      ),
    );
  }

  Widget _buildContent() {
    switch (_gameState) {
      case GameState.initial:
        return Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'Click to start',
                style: TextStyle(color: Colors.white, fontSize: 36.0),
              ),
            ));
        break;

      case GameState.waiting:
        return Container(
            color: Colors.red,
            child: Center(
              child: Text(
                'Waiting',
                style: TextStyle(color: Colors.white, fontSize: 36.0),
              ),
            ));
        break;

      case GameState.click:
        return Container(
            color: Colors.green,
            child: Center(
              child: Text(
                'Click',
                style: TextStyle(color: Colors.white, fontSize: 36.0),
              ),
            ));
        break;

      case GameState.result:
        return Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                _resultMilli.toString() + ' ms',
                style: TextStyle(color: Colors.white, fontSize: 36.0),
              ),
            ));
        break;
    }
  }

  _onTap() {
    print("onTapView");

    if (_gameState == GameState.click) {
      setState(() {
        _resultMilli = DateTime.now().difference(_departureTime).inMilliseconds;
        _gameState = GameState.result;
      });
      print(_resultMilli.toString());
    } else {
      setState(() {
        _gameState = GameState.waiting;
      });

      Future.delayed(Duration(seconds: 3), () {
        setState(() {
          _gameState = GameState.click;
        });
        _departureTime = DateTime.now();
      });
    }
  }
}
