import 'package:calculadora_imc/app/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class BmiChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double tam = MediaQuery.of(context).size.height * 0.4;
    double bmi = 0;

    return AnimatedBuilder(
      animation: BmiController.instance,
      builder: (context, child) {
        return Center(
          child: Container(
            height: tam,
            child: SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                  minimum: 0,
                  maximum: 60,
                  interval: 5,
                  pointers: <GaugePointer>[
                    NeedlePointer(
                      value: BmiController.instance.newbmi,
                    )
                  ],
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                      angle: 90,
                      positionFactor: 0.6,
                      widget: Container(
                        child: Text(
                          'IMC: ${BmiController.instance.newbmi.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                  ranges: <GaugeRange>[
                    GaugeRange(
                      startValue: 0,
                      endValue: 16,
                      color: Colors.blue[200],
                      startWidth: 10,
                      endWidth: 10,
                    ),
                    GaugeRange(
                      startValue: 16,
                      endValue: 17,
                      color: Colors.blue,
                      startWidth: 10,
                      endWidth: 10,
                    ),
                    GaugeRange(
                      startValue: 17,
                      endValue: 18.5,
                      color: Colors.blueAccent,
                      startWidth: 10,
                      endWidth: 10,
                    ),
                    GaugeRange(
                      startValue: 18.5,
                      endValue: 25,
                      color: Colors.green,
                      startWidth: 10,
                      endWidth: 10,
                    ),
                    GaugeRange(
                      startValue: 25,
                      endValue: 30,
                      color: Colors.yellow[200],
                      startWidth: 10,
                      endWidth: 10,
                    ),
                    GaugeRange(
                      startValue: 30,
                      endValue: 35,
                      color: Colors.yellowAccent,
                      startWidth: 10,
                      endWidth: 10,
                    ),
                    GaugeRange(
                      startValue: 35,
                      endValue: 40,
                      color: Colors.orange,
                      startWidth: 10,
                      endWidth: 10,
                    ),
                    GaugeRange(
                      startValue: 40,
                      endValue: 60,
                      color: Colors.red[900],
                      startWidth: 10,
                      endWidth: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
