import 'package:flutter/cupertino.dart';
import 'package:riverpod/riverpod.dart';
import 'package:state_manage_test/src/app.dart';
class MyMemoData extends StateNotifier<State<MyStatefulWidget>>{
  final Ref ref;
  MyMemoData(this.ref):super(MyStatefulWidget as State<MyStatefulWidget>);
  TextEditingController _editingController=TextEditingController();
  void submit_todo(){

  }
}