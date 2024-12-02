import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int counter=0;
  void _increment()
  {
    setState(() {
      counter++;
      print("You pressed counter this many times $counter");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Counter app in flutter",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            const Text('You pressed counter this many times ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
          const SizedBox(
            height: 20,
          ),
          Text('$counter',style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
          
          ],
          

        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _increment,
      backgroundColor: Colors.blueGrey,
      child: Icon(Icons.add,color: Colors.white,),),
    );
  }
}