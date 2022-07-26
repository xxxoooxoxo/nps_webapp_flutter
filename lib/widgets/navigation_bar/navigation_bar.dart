import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black38,
      height: 100,
      child: Row(children: [
        SizedBox(
          height: 40,
          width: 150,
          child: Image.asset('assets/logo.png'),
        ),
        Row(
          children: const [
            _NavBarItem('Dashboard'),
            SizedBox(
              width: 60,
            ),
            _NavBarItem('Website'),
          ],
        ),
      ]),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 24),
    );
  }
}
