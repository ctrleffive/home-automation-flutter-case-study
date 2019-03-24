import 'dart:async';

import 'package:flutter/material.dart';

class GradientSlider extends StatefulWidget {
  @override
  _GradientSliderState createState() => _GradientSliderState();
}

class _GradientSliderState extends State<GradientSlider> {
  final StreamController<double> _slideValue = StreamController<double>();

  @override
  void dispose() {
    _slideValue.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
              colors: <Color>[
                Colors.deepOrange.shade100,
                Colors.deepOrange.shade300,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          height: 15,
        ),
        StreamBuilder<double>(
          initialData: 50,
          stream: this._slideValue.stream,
          builder: (BuildContext context, AsyncSnapshot<double> slideSnap) {
            final double leftPosition = slideSnap.data * 2.06;
            return Stack(
              overflow: Overflow.visible,
              alignment: Alignment.center,
              children: <Widget>[
                AnimatedPositioned(
                  duration: Duration(milliseconds: 100),
                  left: leftPosition,
                  top: -15,
                  child: Column(
                    children: <Widget>[
                      Text('${slideSnap.data.round()}%', style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11
                      )),
                      SizedBox(height: 3),
                      _DragHandle(),
                    ],
                  ),
                ),
                Opacity(
                  opacity: 0,
                  child: Slider(
                    min: 0,
                    max: 100,
                    divisions: 100,
                    value: slideSnap.data,
                    onChanged: this._slideValue.sink.add,
                  ),
                ),
              ],
            );
          }
        ),
      ],
    );
  }
}

class _DragHandle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.deepOrange.shade300,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          style: BorderStyle.solid,
          width: 7
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(0, 3),
            spreadRadius: 1
          )
        ]
      ),
    );
  }
}