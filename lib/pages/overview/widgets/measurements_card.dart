import 'package:flutter/material.dart';

class MeasurementsCard extends StatelessWidget {
  const MeasurementsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Center(
          child: Text('Measurements'),
        ),
        color: Colors.white,
        height: 300,
      ),
    );
  }
}
