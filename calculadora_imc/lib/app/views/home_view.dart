import 'package:calculadora_imc/app/controllers/bmi_controller.dart';
import 'package:calculadora_imc/app/models/bmi_chart_model.dart';
import 'package:calculadora_imc/app/models/user_height_model.dart';
import 'package:calculadora_imc/app/models/user_weight_model.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final newHeigh = TextEditingController();
  final newWeigh = TextEditingController();

  double newbmi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  color: Colors.grey[300],
                  elevation: 5,
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 20),
                    child: Column(
                      children: [
                        UserHeight(control: newHeigh),
                        SizedBox(height: 20),
                        UserWeight(control: newWeigh),
                        SizedBox(height: 20),
                        RaisedButton(
                          onPressed: () {
                            setState(() {
                              BmiController.instance.bmiCalculator(
                                userHeight: newHeigh.text,
                                userWeight: newWeigh.text,
                              );
                            });
                          },
                          elevation: 5,
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            'Calcular',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  color: Colors.grey[300],
                  elevation: 5,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                      bottom: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BmiChart(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
