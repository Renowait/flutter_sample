import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:   const Text('Using Container'),
        backgroundColor: const Color(0xFF455A64),
        centerTitle: true,
      ),
      body:  Center(child: Column(
        children: [
          container1(),
          container2(),
        ],
      )),
    );
  }//build

  Widget container1() => Container(
        height: 200,
        margin:const EdgeInsets.all(20),
        color: const Color(0xFFB0BEC5),
        alignment: Alignment.center,
        child:  const Text('สินค้าทั้งหมด',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

  );

  Widget container2() => Container(
        height: 200, width: 150,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        decoration:  BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.green,
            style: BorderStyle.solid,
            width: 10
          ),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.elliptical(50, 50))
        ),
        child: Text('สินค้าคงเหลือ',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
  );
}