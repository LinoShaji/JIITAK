import 'package:flutter/material.dart';
import 'package:jiitak/Stamp%20details.dart';

import 'HomePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: StampDetails());
  }
}
