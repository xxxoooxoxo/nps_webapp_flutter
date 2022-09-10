import 'package:flutter/material.dart';

class GaugeCard extends StatelessWidget {
  const GaugeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Center(
          child: Text('Gauge'),
        ),
        color: Colors.white,
        height: 200,
      ),
    );
  }
}
