import 'package:flutter/material.dart';
import 'package:qr_scan_flutter/CurvePainter.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String _result = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.black,
        onPressed:  _onPressed,
        
        label: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Scan QR"),
        ),
      ),
      body: CustomPaint(
        painter: CurvePainter(),
        child: Container(),
      ),
    );
  }

  void _onPressed() {
    scanner.scan().then((value) async {
      if (await canLaunch(value))
        await launch(value);
      else
        await launch("https://www.google.com/search?q=" + value);

      setState(() {
        _result = value;
      });
    });

    print(" The Result : - " + _result);
  }
}
