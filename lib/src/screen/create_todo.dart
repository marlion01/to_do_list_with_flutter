import 'package:flutter/material.dart';
class CreateTodo extends StatelessWidget{
  const CreateTodo({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Create a Todo List!"),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: "内容を入力してください",
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                        ),
                      ),
                    )
                  ],
            ),),),
          ],
        ),
    );
  }
}