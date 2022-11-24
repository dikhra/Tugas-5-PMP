import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  const ProductBox({Key? key, required this.name,required this.description,
    required this.price,required this.image}) : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container( padding: const EdgeInsets.all(2), height: 140,
        child: Card( child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[ Image.asset("images/$image") ,
              Expanded( child: Container(padding: const EdgeInsets.all(2),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[ Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text(description), Text("Price: $price"),
                    ],
                  )
              ))
            ]
        ))
    );
  }
}


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title:'Flutter Demo', theme: ThemeData(primaryColor: Colors.blue),
        home: const MyHomePage(),);
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Listing")),
        body: ListView(shrinkWrap: true, padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: const <Widget> [
            ProductBox(name: "iPhone", description: "iPhone is the stylist phone ever", price: 1000, image: "iphone.jpg"),
            ProductBox(name: "Pixel", description: "Pixel is the most featureful phone ever", price: 800, image: "pixel.jpg"),
            ProductBox(name: "Laptop", description: "Laptop is most productive development tool", price: 2000, image: "laptop.jpg"),
            ProductBox(name: "Tablet", description: "Tablet is most useful device for meeting", price: 1500, image: "tablet.jpg"),
            ProductBox(name: "Pendrive", description: "Floopy drive is useful rescue storage medium", price: 20, image: "floppy.jpg"),
    ],)
    );
  }
}

