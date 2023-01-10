import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/extensions/extensions.dart';

class ScreenExtensions extends StatefulWidget {
  const ScreenExtensions({Key? key}) : super(key: key);

  @override
  State<ScreenExtensions> createState() => _ScreenExtensionsState();
}

class _ScreenExtensionsState extends State<ScreenExtensions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                DateTime.now().customDate(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 50,fontFamily: 'Serif'),
            )
          ],
        ),
      ),
    );
  }
}
