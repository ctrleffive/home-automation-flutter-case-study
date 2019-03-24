import 'package:flutter/material.dart';

class DeviceMini extends StatelessWidget {
  final IconData icon;
  final String itemName;
  final bool state;

  DeviceMini({
    @required this.icon,
    @required this.itemName,
    this.state,
  });

  @override
  Widget build(BuildContext context) {
    final String status = (this.state == null) ? 'Offline' : (this.state ? 'On' : 'Off');
    final Color statusColor = (this.state == null) ? Colors.black12 : (this.state ? Colors.greenAccent : Colors.redAccent.shade100);
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
                child: Icon(this.icon, color: Theme.of(context).primaryColor)
              ),
              CircleAvatar(backgroundColor: statusColor, radius: 5)
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(this.itemName, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 8),
              Text(status, style: TextStyle(color: Colors.black54, fontSize: 14)),
            ],
          ),
        ],
      ),
    );
  }
}