import 'package:flutter/material.dart';
import 'package:makefood/pages/product_details.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "โรงแรมลัดดาภูเก็ต",
      "picture": "images/products/menu1.jpg",
      "old_material": "จังหวัดภูเก็ต",
      "method": "ไวไฟ สระว่ายน้ำ รถ พัดลม แอร์ ",
    },
    {
      "name": "โรงแรมศรีพันวา",
      "picture": "images/products/menu2.jpg",
      "old_material": "จังหวัดภูเก็ต ",
      "method": " แอร์ รถจักรยานยนต์ ไวไฟ โทรทัศน์ ตู้เย็น ",
    },
    {
      "name": "โรงแรมเขาหลัก",
      "picture": "images/products/menu3.jpg",
      "old_material": "จังหวัดพังงา",
      "method": "ไวไฟฟรี ตู้เย็น กระติกน้ำร้อน โทรทัศน์ ตู้เย็น ",
    },
    {
      "name": "โรงแรมอ่าวน้ำเมา",
      "picture": "images/products/menu4.jpg",
      "old_material": " จังหวัดกระบี่ ",
      "method": " ไวไฟ เครื่องทำน้ำร้อน ตู้เย็น รถจักรยาน สระว่ายน้ำ  ",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pricture: product_list[index]['picture'],
            prod_old_material: product_list[index]['old_material'],
            prod_method: product_list[index]['method'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  const Single_prod(
      {Key? key,
      this.prod_name,
      this.prod_pricture,
      this.prod_old_material,
      this.prod_method})
      : super(key: key);
  final prod_name;
  final prod_pricture;
  final prod_old_material;
  final prod_method;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                  // ส่งค่าไปยังหน้ารายละเอียดเมนุ
                  MaterialPageRoute(
                      builder: (context) => ProductDetails(
                            product_detail_name: prod_name,
                            product_detail_new_method: prod_method,
                            product_detail_old_material: prod_old_material,
                            product_detail_pricture: prod_pricture,
                          ))),
              child: GridTile(
                  footer: Container(
                      color: Colors.black,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              prod_name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ),
                        ],
                      )),
                  child: Image.asset(
                    prod_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
