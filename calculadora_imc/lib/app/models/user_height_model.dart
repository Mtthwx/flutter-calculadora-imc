import 'package:flutter/material.dart';

class UserHeight extends StatelessWidget {
  final control;

  const UserHeight({Key key, this.control}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Altura: ',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: TextField(
            controller: control,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Sua altura (cm)',
              hintStyle: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
