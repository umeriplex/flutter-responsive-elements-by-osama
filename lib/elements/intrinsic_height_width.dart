import 'package:flutter/material.dart';

class IntrinsicHeightWidth extends StatefulWidget {
  const IntrinsicHeightWidth({Key? key}) : super(key: key);

  @override
  State<IntrinsicHeightWidth> createState() => _IntrinsicHeightWidthState();
}

class _IntrinsicHeightWidthState extends State<IntrinsicHeightWidth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.black,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 10,
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 140,
              ),
              Container(
                color: Colors.pinkAccent,
                height: 100,
                width: 180,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// IntrinsicHeight(
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.stretch,
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Container(
// color: Colors.black,
// height: 120,
// width: 100,
// ),
// Container(
// color: Colors.yellow,
// height: 180,
// width: 100,
// ),
// Container(
// color: Colors.green,
// height: 160,
// width: 100,
// ),
// ],
// ),
// ),