import 'package:flutter/material.dart';

class BGWrap extends StatelessWidget {
  @required final Widget body;

  BGWrap({this.body});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/blur-bg.jpg'),
              fit: BoxFit.fill
            )
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: this.body,
        ),
      ],
    );
  }
}