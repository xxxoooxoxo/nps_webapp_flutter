import 'package:flutter/material.dart';

class RecentEventsCard extends StatelessWidget {
  const RecentEventsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Center(
          child: Text('Recent Events'),
        ),
        color: Colors.white,
        height: 200,
      ),
    );
  }
}
