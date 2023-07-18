import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class CreateTodo extends ConsumerWidget{
  const CreateTodo({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Create a Todo List!"),
        ),
        body:ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              child: const TextField(
                keyboardType: TextInputType.multiline,
                maxLines:  1,
                decoration: InputDecoration(
                  hintText: "タイトルを入力してください",
                  border: InputBorder.none,
                ),
              ),
            ),
            Expanded(
              child: Form(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: const SingleChildScrollView(
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: 14,
                          decoration: InputDecoration(
                            hintText: "内容を入力してください",
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                          ),
                        ),
                      ),
                    ),
                  ],
            ),),),
          ],
        ),
      floatingActionButton:Row(
        children: [
          Expanded(
              child: FloatingActionButton(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("画像を追加"),
                ),
                onPressed: (){},
              )
          ),
          Expanded(
              child: FloatingActionButton(
                child: const Text("save"),
                onPressed: (){},
              )
          ),
        ],
      ),
    );
  }
}