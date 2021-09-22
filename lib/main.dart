import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teachmedia_wp/pages/pages.dart';
import 'package:teachmedia_wp/providers/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CategoryProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
