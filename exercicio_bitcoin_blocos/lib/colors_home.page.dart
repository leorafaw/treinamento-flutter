import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorsHomePage extends StatelessWidget {
  const ColorsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.purple[100])),
                Expanded(child: Container(color: Colors.purple[200])),
                Expanded(child: Container(color: Colors.purple[300])),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.red[100])),
                Expanded(child: Container(color: Colors.red[200])),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.green[100])),
                Expanded(child: Container(color: Colors.green[200])),
                Expanded(child: Container(color: Colors.green[300])),
                Expanded(child: Container(color: Colors.green[400])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
