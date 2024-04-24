import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int a = 0;
  void increment(){
    setState(() {
      a ++;
    });
  }
  void decrement(){
    setState(() {
      a--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text('$a',style: TextStyle(fontSize: 30,color: Colors.red),),),
        floatingActionButton: Row(
          children: [
            SizedBox(width: 20,),
            FloatingActionButton(
              onPressed: (){
            increment();
              },
              child: Icon(Icons.add),
            ),
            SizedBox(width: 20,),
            FloatingActionButton(onPressed: (){
            decrement();
            },
              child: Icon(Icons.remove),
            )
          ],
        ),
      ),
    );
  }
}
