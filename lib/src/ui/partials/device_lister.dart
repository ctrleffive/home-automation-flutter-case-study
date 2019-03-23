import 'package:automation/src/ui/partials/device_mini.dart';
import 'package:flutter/material.dart';

class DeviceLister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      shrinkWrap: true,
      children: <Widget>[
        DeviceMini(),
        DeviceMini(),
        DeviceMini(),
        DeviceMini(),
      ],
    );
  }
}