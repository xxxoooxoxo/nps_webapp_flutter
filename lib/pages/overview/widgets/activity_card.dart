import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        child: Center(
          child: Text('Events Triggered'),
        ),
        color: Colors.white,
        height: 200,
      ),
    );
  }
}
