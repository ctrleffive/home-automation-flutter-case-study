import 'package:flutter/material.dart';

import 'package:automation/src/ui/layouts/bgwrap.dart';
import 'package:automation/src/ui/partials/overview_details.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BGWrap(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 160,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              background: SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(top: 20, left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/user.jpg'),
                        radius: 28,
                      ),
                      SizedBox(height: 20),
                      Text('Welcome Home', style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15
                      )),
                      SizedBox(height: 5),
                      Text('Living Room', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: <Widget>[
                  OverviewDetails(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}