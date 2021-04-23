import 'package:flutter/material.dart';

class RowYeni extends StatefulWidget {
  @override
  _RowYeniState createState() => _RowYeniState();
}

class _RowYeniState extends State<RowYeni> {
  TextEditingController tinput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text("EmailYeni: "),
          Expanded(
              child: TextField(
            controller: tinput,
          ))
        ],
      ),
    );
  }
}
