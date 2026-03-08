import 'package:flutter/material.dart';
import 'package:prac_list/prac/provider/prac_provider.dart';
import 'package:prac_list/prac/view/prac_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PracProvider(),
      child: MaterialApp(debugShowCheckedModeBanner: false, title: 'Flutter Demo', theme: ThemeData(), home: PracList()),
    );
  }



  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     title: 'Flutter Demo',
  //     theme: ThemeData(),
  //       home: PracList(),
  //     );
  // }


}
