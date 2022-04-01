import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:makefood/home.dart ';

class ProductDetails extends StatefulWidget {
  const ProductDetails(
      {Key? key,
      this.product_detail_name,
      this.product_detail_new_method,
      this.product_detail_old_material,
      this.product_detail_pricture})
      : super(key: key);

  final product_detail_name;
  final product_detail_new_method;
  final product_detail_old_material;
  final product_detail_pricture;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: InkWell(
          onTap: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Text("Hotel"),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(
                  widget.product_detail_pricture,
                  fit: BoxFit.cover,
                ),
              ),
              footer: Container(
                color: Colors.black,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(
              "จังหวัดที่ตั้ง",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),

          // section1(),
          ListTile(
            title: Text(
              "\$${widget.product_detail_old_material}",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.justify,
            ),
          ),

          ListTile(
            title: Text(
              "สิ่งอำนวยความสะดวก",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),

          // section2(),
          ListTile(
              subtitle: Text(
            "\$${widget.product_detail_new_method}",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.normal),
            textAlign: TextAlign.justify,
          )),

          // content1(),

          // content2(),
        ],
      ),
    );
  }
}
