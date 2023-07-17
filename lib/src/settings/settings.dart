import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Settings extends StatelessWidget{
  const Settings({Key?key}):super(key:key);
  @override
  Widget build(BuildContext context){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      appBar: AppBar(
        title:const Text('Settings'),
      ),
      body:const Center(
          child:Text('Settings'),
      )
    );
  }
}