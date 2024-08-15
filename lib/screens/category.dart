import 'package:app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:app/profile.dart';
import 'package:app/screens/category.dart';
import 'package:app/screens/facorite.dart';
import 'package:app/test.dart';
// import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/cupertino.dart';
class MyCategoryScreen extends StatefulWidget {
  const MyCategoryScreen({super.key});

  @override
  State<MyCategoryScreen> createState() => _MyCategoryScreenState();
}

class _MyCategoryScreenState extends State<MyCategoryScreen> {
  List<Map> category = [
    {'title': "computer", "image": "assets/images/images.jfif"},
    {'title': "Phone & Accessory", "image": "assets/images/phones.jfif"},
    {'title': "Light & Lighting", "image": "assets/images/light.jfif"},
    {'title': "Office Equipment", "image": "assets/images/pc.jfif"},
  ];

  @override
  Widget build(BuildContext context) {

    return (Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Categories')),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),

                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: 'Search ',
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    prefixIcon: Icon(Icons.search_outlined),
                    prefixIconColor: Colors.purple),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemCount: category.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 150,
                    alignment: Alignment.bottomLeft,
        padding: EdgeInsets.all(8.0),
                    
                    height: 150,
                    // color: Colors.amber,
                    child: Text(category[index]["title"],style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),image:DecorationImage(image: AssetImage(category[index]["image"]),fit: BoxFit.fill) ),
                  ) ;
                },
              ),
            ),
            
          ],
        ),
      ),
   
    )
    );
  }
}
