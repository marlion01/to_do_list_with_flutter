import 'package:flutter/material.dart';
import'screen/home.dart';
import 'screen/create_todo.dart';
import 'screen/achive_todo.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key?key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyStatefulWidget(),
    );
  }
}
class MyStatefulWidget extends StatefulWidget{
  const MyStatefulWidget({Key?key}):super(key:key);
  @override
  State<MyStatefulWidget> createState()=>_MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStatefulWidget>{
  static const _screen=[
    HomeScreen(),
    CreateTodo(),
    AchiveTodo(),
  ];
  int _selectedindex = 0;
  void _onItemTapped(int index){
    setState((){
      _selectedindex=index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:_screen[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:'HOME',
              tooltip: "This is a Home Page",
          ),
          BottomNavigationBarItem(icon: Icon(
              Icons.add),
              label:'CREATE',
              tooltip: "To Create Todo List"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.task_alt_sharp),
              label:'ACHIVED',
              tooltip: "Achived Todo List",
          )
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        enableFeedback: true,
        iconSize:18,
        selectedFontSize: 20,
        unselectedFontSize: 18,
        selectedItemColor: Colors.cyanAccent,
      ),
    );
  }
}


