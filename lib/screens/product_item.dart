import 'package:app/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProductItem extends StatefulWidget {
  const MyProductItem({super.key});

  @override
  State<MyProductItem> createState() => _MyProductItemState();
}

class _MyProductItemState extends State<MyProductItem> {
  Color iconcolor = Colors.grey;
  int content = 1;
  int sizevalue = 2;

  @override
  Widget build(BuildContext context) {
    return (
    Scaffold(
      // appBar: AppBar(leading: ,),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/phones.jfif"),
                      fit: BoxFit.cover)
                    ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(margin: EdgeInsets.fromLTRB(10, 40, 10, 10), child: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios,color: Colors.black,),style: IconButton.styleFrom(backgroundColor: Colors.white,),))
                  ,
                  // Text("data"),
                  SizedBox(
                    height: 245,
                  ),
                  Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white),
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '\$2452.75 ',
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '\$32 ',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                // fontWeight: FontWeight.bold,
                                decoration: TextDecoration.lineThrough),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text("-32% off"),
                            textColor: Colors.white,
                            color: Colors.red,
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            if (iconcolor == Colors.grey) {
                              iconcolor = Colors.red;
                            } else {
                              iconcolor = Colors.grey;
                            }

                            setState(() {});
                          },
                          icon: Icon(
                            CupertinoIcons.heart_fill,
                            color: iconcolor,
                          ))
                    ],
                  ),
                  Text(
                    'Macbook Air',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Description
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  // Color Options
                  Text(
                    'Color',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          content = 1;
                          // content=true;
                          setState(() {});
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black,
                          ),
                          child: content == 1
                              ? Icon(
                                  CupertinoIcons.checkmark_alt,
                                  color: Colors.white,
                                )
                              : Text(""),
                        ),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          content = 2;
                          // content=true;
                          setState(() {});
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue,
                          ),
                          child: content == 2
                              ? Icon(
                                  CupertinoIcons.checkmark_alt,
                                  color: Colors.white,
                                )
                              : Text(""),
                        ),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          content = 3;
                          // content=true;
                          setState(() {});
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.red,
                          ),
                          child: content == 3
                              ? Icon(
                                  CupertinoIcons.checkmark_alt,
                                  color: Colors.white,
                                )
                              : Text(""),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Size',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      // TextButton(onPressed: (){(value) => sizevalue=1;}, child: sizevalue==1?Row(children: [Icon(CupertinoIcons.checkmark_alt,color: Colors.white,),Text("13")]):Text("13")),
                      ChoiceChip(
                        label: Text('13"'),
                        selected: sizevalue == 1 ? true : false,
                        onSelected: (value) => sizevalue = 1,
                      ),
                      SizedBox(width: 10),
                      ChoiceChip(
                          label: Text('14"'),
                          selected: sizevalue == 2 ? true : false,
                          onSelected: (value) => sizevalue = 2),
                      SizedBox(width: 10),
                      ChoiceChip(
                          label: Text('16"'),
                          selected: sizevalue == 3 ? true : false,
                          onSelected: (value) => sizevalue = 3),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.purple.shade400,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                        )),
                  )
                 
                ],
              ),
            )
          
                ],
              ),
            ),

          
          ],
        ),
      ),
    )
  
    );

  }
}
