import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: onTap1(),
    );
  }
}

class WidgetText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Center(
        child: Text("Hello word!",
            style: TextStyle(
                color: Colors.amber,
                fontSize: 20,
                fontWeight: FontWeight.bold)));
  }
}
//xep theo chieu doc

class widgetColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Hello word!",
            style: TextStyle(
                color: Colors.amber,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        Text("Hello word!",
            style: TextStyle(
                color: Colors.amber,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ],
    );
  }
}

//xep theo chieu ngang
class widgetRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Hello", style: TextStyle(color: Colors.green)),
        Text("Hello", style: TextStyle(color: Colors.red)),
      ],
    );
  }
}

//cach phan tu co the trong len nhau
class widgetStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(children: [
      Positioned(child: Container(color: Colors.amberAccent)),
      Positioned(
          top: 300,
          left: 40,
          right: 40,
          child: Container(
            color: Colors.green,
            height: 100,
          ))
    ]);
  }
}

//tao box
class widgetBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black),
              color: Colors.red,
              borderRadius: BorderRadius.circular(10))),
    );
  }
}

//sizebox thuong dung de tao khoang cach
class widgetSizeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(height: 40),
          Text("ahihi",
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.black)),
          SizedBox(height: 10),
          Text("ahihi",
              style: TextStyle(
                  fontSize: 10, fontStyle: FontStyle.italic, color: Colors.red))
        ],
      ),
    );
  }
}

//expanded chia bo cuc tung phan
class widgetExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Expanded(
          child: Container(color: Colors.amber),
          flex: 3,
        ),
        Expanded(
          child: Container(color: Colors.green),
          flex: 3,
        ),
        Expanded(
          child: Container(color: Colors.red),
          flex: 3,
        ),
      ],
    );
  }
}

//ex 1
class onTap1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Boxmethod('Box 1', Alignment.bottomRight),
              Boxmethod('Box 2', Alignment.bottomLeft),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Boxmethod('Box 3', Alignment.topRight),
              Boxmethod('Box 4', Alignment.topLeft),
            ],
          ),
        ],
      ),
      Center(
        child: Boxmethod("ahihi",Alignment.center,true)
      )
    ]);
  }

  Boxmethod(String name, Alignment alignment, [bool boxRadius = false]) {
    return Container(
      alignment: alignment,
      decoration: BoxDecoration(
          color: boxRadius ? Colors.lightBlue : Colors.green,
          borderRadius: BorderRadius.circular(boxRadius ? 100 : 00)),
      width: 100,
      height: 100,
      child: Text(
        name.toString(),
        style: const TextStyle(color: Colors.red, fontSize: 20),
      ),
    );
  }
}
