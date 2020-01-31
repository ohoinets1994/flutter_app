import 'package:flutter/material.dart';
import 'package:flutter_app/model/second_page_model.dart';
import 'package:provider/provider.dart';

class LibRandom extends StatefulWidget {
  @override
  _LibRandomState createState() => _LibRandomState();
}

class _LibRandomState extends State<LibRandom> {
  void _changeState() {
    final state = Provider.of<SecondPageModel>(context);
    state.generateColor();
  }

  void _nullifyState() {
    final state = Provider.of<SecondPageModel>(context);
    state.nullify();
  }

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<SecondPageModel>(context);
    final backgroundColor = state.color;
    final counter = state.counter;

    return ChangeNotifierProvider(
      builder: (context) => SecondPageModel(),
      child: GestureDetector(
        onTap: () {
          _changeState();
        },
        child: Container(
          color: backgroundColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Hey there', style: TextStyle(fontSize: 15)),
                Text('$counter', style: TextStyle(fontSize: 30)),
                SizedBox(height: 20),
                FloatingActionButton.extended(
                  onPressed: _nullifyState,
                  label: Text('REFRESH', style: TextStyle(fontSize: 15)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}