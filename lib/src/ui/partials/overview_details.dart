import 'package:automation/src/ui/partials/v_divider.dart';
import 'package:flutter/material.dart';

class OverviewDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: LinearGradient(
          colors: <Color>[
            Colors.deepOrange.shade300,
            Colors.deepOrange.shade400,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _SingleSection(
            icon: Icons.timelapse,
            label: 'Temp',
            value: '23',
            valueUnit: 'C',
          ),
          VDivider(),
          _SingleSection(
            icon: Icons.rounded_corner,
            label: 'Humidity',
            value: '54',
            valueUnit: '%',
          ),
          VDivider(),
          _SingleSection(
            icon: Icons.lightbulb_outline,
            label: 'Lght',
            value: '90',
            valueUnit: '%',
          ),
        ],
      ),
    );
  }
}

class _SingleSection extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final String valueUnit;

  _SingleSection({
    @required this.icon,
    @required this.value,
    @required this.label,
    @required this.valueUnit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(this.icon, color: Colors.white70),
        SizedBox(height: 7),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('${this.value}', style: TextStyle(fontSize: 20)),
            SizedBox(width: 5),
            Text('${this.valueUnit}', style: TextStyle(fontSize: 14)),
          ],
        ),
        SizedBox(height: 5),
        Text('${this.label}', style: TextStyle(color: Colors.white70)),
      ],
    );
  }
}