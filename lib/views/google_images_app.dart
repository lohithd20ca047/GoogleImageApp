import 'package:flutter/material.dart';

import 'home_page.dart';

class GoogleImagesApp extends StatelessWidget {
  const GoogleImagesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
