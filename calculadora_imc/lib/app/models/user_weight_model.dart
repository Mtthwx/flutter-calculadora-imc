import 'package:flutter/material.dart';

class UserWeight extends StatelessWidget {
  final control;

  const UserWeight({Key key, this.control}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Peso: ',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 25),
        Expanded(
          child: TextField(
            controller: control,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Seu peso (kg)',
              hintStyle: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
