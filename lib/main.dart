import 'package:flutter/material.dart';

import 'elements/handle_error.dart';
import 'elements/intrinsic_height_width.dart';
import 'elements/layout_builder.dart';
import 'elements/oriantation_builder.dart';
import 'extensions/screen_extensions.dart';

void main() {
  ErrorWidget.builder = (details){
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: NetworkImage('https://stories.freepiklabs.com/storage/26838/oops-404-error-with-a-broken-robot-pana-2854.png'),fit: BoxFit.cover,),
            Text(details.exception as String),

          ],
        ),
      ),
    );
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const ScreenExtensions(),
    );
  }
}


