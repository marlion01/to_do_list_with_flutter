import 'package:flutter/material.dart';
import 'package:state_manage_test/src/settings/settings.dart';
class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon:Icon(Icons.menu),onPressed:(){}),
          title: const Text('Home'),
          elevation: 8,
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                },
                icon: Icon(Icons.settings)),
          ],
        ),
        body: const Center(
          child: Text('Home'),
        )
    );
  }
}
