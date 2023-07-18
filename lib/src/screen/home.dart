import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_manage_test/src/settings/settings.dart';
class HomeScreen extends ConsumerWidget{
  const HomeScreen({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon:Icon(Icons.menu),onPressed:(){}),
          title: const Text('Home'),
          elevation: 8,
          actions: [
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                },
                icon: const Icon(Icons.settings)),
          ],
        ),
        body: const Center(
          child: Text('Home'),
        )
    );
  }
}
