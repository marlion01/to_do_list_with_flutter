import 'package:flutter/material.dart';
class CreateTodo extends StatelessWidget{
  const CreateTodo({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('create todo'),
        ),
        body: const Center(
          child: Text('create todo'),
        )
    );
  }
}