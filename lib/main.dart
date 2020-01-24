import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:plath/Clock.dart';
import 'package:flutter/services.dart';

Future main() async{
  await SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
  return runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Divergence Meter",
        home: NixieClock(),
      )
  );
}
