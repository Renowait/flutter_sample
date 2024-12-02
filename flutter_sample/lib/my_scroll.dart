import 'package:flutter/material.dart';

class MyScrollView extends StatelessWidget {
  const MyScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScollView'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        child: Center(
          child: Row(
            children: [
                boxContainer('One'),
                boxContainer('Two'),
                boxContainer('Three'),
                boxContainer('Four'),
                boxContainer('Five'),
                boxContainer('Six'),
                boxContainer('Seven'),

            ],
          ),
        ),
      ),
    );
  }
  Widget boxContainer(String txt) => Container(
    width: 100, height: 150,
    color: Colors.deepOrange,
    margin: const EdgeInsets.all(20),
    alignment: Alignment.center,
    child:  Text(txt, style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),


  ); 
}