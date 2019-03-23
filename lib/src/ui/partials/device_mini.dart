import 'package:flutter/material.dart';

class DeviceMini extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
                child: Icon(Icons.lightbulb_outline, color: Theme.of(context).primaryColor)
              ),
              Icon(Icons.arrow_drop_down_circle, color: Colors.greenAccent, size: 18),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('TV', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 8),
              Text('Opened', style: TextStyle(color: Colors.black54, fontSize: 14)),
            ],
          ),
        ],
      ),
    );
  }
}