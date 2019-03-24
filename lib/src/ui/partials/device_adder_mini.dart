import 'package:flutter/material.dart';

class DeviceAdderMini extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.add, color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}