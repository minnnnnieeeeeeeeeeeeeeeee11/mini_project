import 'package:flutter/material.dart';
import 'package:makefood/pages/product_details.dart';

class HorizontalList extends StatelessWidget {
  // const HorizontalList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
              image_location: 'images/cats/22.png', image_caption: 'โฮมสเตย์'),
          Category(
              image_location: 'images/cats/22.png', image_caption: 'โรงแรม'),
          Category(
              image_location: 'images/cats/22.png', image_caption: 'พูลวิลลา'),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category(
      {Key? key, required this.image_location, required this.image_caption})
      : super(key: key);
  final String image_location;
  final String image_caption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
