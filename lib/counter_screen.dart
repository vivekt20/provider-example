import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_examples/counter_provider.dart';

class CounterScreenExample extends StatefulWidget {
  @override
 _CounterScreenExampleState createState()=> _CounterScreenExampleState();
}
class _CounterScreenExampleState extends State<CounterScreenExample>{
  
  @override
  Widget build(BuildContext context){
    final counterProvider=Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter with provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("You have push the button many times"),
          Text("${counterProvider.count}"),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: counterProvider.increment,
        child: Icon(Icons.add),),
        SizedBox(width: 10),
        FloatingActionButton(onPressed: counterProvider.decrement,
        child: Icon(Icons.remove),)
        ],
      ),
    );
  }
}