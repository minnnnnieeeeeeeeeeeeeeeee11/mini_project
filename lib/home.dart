import 'package:flutter/material.dart';
import 'package:makefood/components/horizontal_listview.dart';
import 'package:makefood/components/products.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: Text("Hotel"),
      ),
      body: ListView(
        children: [
          picture(),
          // content1(),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('หมวดหมู่'),
          ),
          HorizontalList(),

          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('สถานที่แนะนำ'),
          ),

          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }

  SizedBox picture() {
    return SizedBox(
      height: 280,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('images/c3.jpg')),
        ),
      ),
    );
  }

  Container content1() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        children: const [
          Text(
            'Categories ',
          ),
        ],
      ),
    );
  }
}
