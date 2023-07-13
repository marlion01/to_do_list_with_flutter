import 'package:flutter/material.dart';
class AchiveTodo extends StatelessWidget{
  const AchiveTodo({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Achive todo'),
        ),
        body: const Center(
          child: Text('Achive todo'),
        )
    );
  }
}