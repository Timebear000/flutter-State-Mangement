import 'package:flutter/material.dart';
import 'package:state_singleton/pages/page1_page.dart';
import 'package:state_singleton/pages/page2_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'pagin1',
      routes: {
        'pagin1': (_) => Pagin1Page(),
        'pagin2': (_) => Pagin2Page(),
      },
    );
  }
}
