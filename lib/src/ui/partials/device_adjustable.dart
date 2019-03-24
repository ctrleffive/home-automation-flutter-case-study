import 'package:automation/src/ui/partials/gradient_slider.dart';
import 'package:flutter/material.dart';

class DeviceAdjustable extends StatelessWidget {
  final String itemName;
  final String sliderLabel;

  DeviceAdjustable({
    @required this.itemName,
    @required this.sliderLabel
  });

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
              Text(this.itemName, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18)),
              Text(this.sliderLabel, style: TextStyle(color: Colors.black54, fontSize: 14)),
            ],
          ),
          SizedBox(height: 20),
          GradientSlider(),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('0%', style: TextStyle(color: Colors.grey, fontSize: 11)),
              Text('100%', style: TextStyle(color: Colors.grey, fontSize: 11)),
            ],
          ),
          Image(
            height: 15,
            width: MediaQuery.of(context).size.width,
            repeat: ImageRepeat.repeatX,
            image: AssetImage('assets/images/ruler.png'),
          ),
        ],
      ),
    );
  }
}