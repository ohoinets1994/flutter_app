import 'package:flutter/material.dart';
import 'package:flutter_app/model/first_page_model.dart';
import 'package:provider/provider.dart';

class MyRandom extends StatefulWidget {
  @override
  _MyRandomState createState() => _MyRandomState();
}

class _MyRandomState extends State<MyRandom> {
  void _changeState() {
    final state = Provider.of<FirstPageModel>(context);
    state.generateColor();
  }

  void _nullifyState() {
    final state = Provider.of<FirstPageModel>(context);
    state.nullify();
  }

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<FirstPageModel>(context);
    final backgroundColor = state.color;
    final counter = state.counter;

    return ChangeNotifierProvider(
      builder: (context) => FirstPageModel(),
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