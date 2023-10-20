import 'package:flutter/material.dart';
import 'package:planner/custom_widgets/horizontal_day_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0.0,
        title: const Text("MY TODOS"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          const HorizontalDayList(),
          const SizedBox(height: 20,),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                boxShadow: [BoxShadow(blurRadius: 10.0)]
              ),
            ),
          )
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        splashColor: Colors.deepPurple,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
        backgroundColor: Colors.deepPurpleAccent,
        child: const Icon(Icons.add, size: 50),
      ),
    );
  }
}