import 'package:flutter/material.dart';

class GraphCard extends StatelessWidget {
  const GraphCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        child: Center(
          child: Text('Graph Card'),
        ),
        color: Colors.white,
        height: 300,
      ),
    );
  }
}
