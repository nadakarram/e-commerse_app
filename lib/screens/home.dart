import 'package:app/profile.dart';
import 'package:app/screens/cart.dart';
import 'package:app/screens/category.dart';
import 'package:app/screens/facorite.dart';
import 'package:app/screens/notifcation.dart';
import 'package:app/screens/product_item.dart';
import 'package:app/screens/profile.dart';
import 'package:app/screens/search.dart';
import 'package:app/test.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int selectedvalue = 0;
  final List<Widget> _pages = [
    MyHome(),
    MyCategoryScreen(),
    MySearchScreen(),
    MyFavouritelist(),
    MyProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      // appBar: AppBar(),
      body: _pages.elementAt(selectedvalue),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house_alt), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart), label: "likes"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_alt_circle), label: "profile"),
        ],
        onTap: (value) {
          setState(() {
            selectedvalue = value;
            // print(value);
          });
          // Navigator.pushReplacement(context,
          //     MaterialPageRoute(builder: (context) => _pages[value]));
        },
        currentIndex: selectedvalue,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 12,
        unselectedFontSize: 10,
      ),
    ));
  }
}

class MyHome extends StatelessWidget {
  MyHome({super.key});
  int shopingitems = 2;

  List<Map> category = [
    {'title': "computer", "image": "assets/images/images.jfif"},
    {'title': "Phone & Accessory", "image": "assets/images/phones.jfif"},
    {'title': "Light & Lighting", "image": "assets/images/light.jfif"},
    {'title': "Office Equipment", "image": "assets/images/pc.jfif"},
  ];
  List<Map> products = [
    {
      'title': "Bluetooth \nPrinter",
      "image": "assets/images/printer.jfif",
      "price": "\$200.75"
    },
    {
      'title': "Phone & \nAccessory",
      "image": "assets/images/lap1.jpg",
      "price": "\$200.75"
    },
    {
      'title': "Light & \nLighting",
      "image": "assets/images/ipad.jfif",
      "price": "\$200.75"
    },
    {
      'title': "Office \nEquipment",
      "image": "assets/images/pc.jfif",
      "price": "\$200.75"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return (Container(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                // height: MediaQuery.sizeOf(context).height * 0.05,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),

                                spreadRadius: 3,
                                blurRadius: 3,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                                hintText: 'Search ',
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.purple, width: 2.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                prefixIcon: Icon(Icons.search_outlined),
                                prefixIconColor: Colors.purple),
                          ),
                        )),
                    Expanded(
                        child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // MaterialButton(
                        //     onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => MyCart(),
                              //     ));
                        //     },
                        //     elevation: 4,
                        //     color: Colors.white,
                        //     shape: CircleBorder(),
                        //     child: Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: Icon(Icons.shopping_cart,
                        //           color: Colors.purple, size: 30),
                        //     )),
                        // MaterialButton(
                        //     onPressed: () {
                        //       Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //             builder: (context) => MyCart(),
                        //           ));
                        //     },
                        //     elevation: 4,
                        //     color: Colors.white,
                        //     shape: CircleBorder(),
                        //     child: Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: Icon(Icons.shopping_cart,
                        //           color: Colors.purple, size: 30),
                        //     )),
                        IconButton.filled(onPressed: (){
                          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyCart(),
                                  ));
                          }, 
                          icon: Icon(Icons.shopping_cart,
                                  color: Colors.purple, size: 30),
                          style: IconButton.styleFrom(backgroundColor: Colors.white,elevation: 4,shadowColor: Colors.black),),
                         
                         
                         IconButton.filled(onPressed: (){
                          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Notifcation(),
                                  ));
                         }, icon: Icon(Icons.notifications,
                                  color: Colors.purple, size: 30),style: IconButton.styleFrom(backgroundColor: Colors.white,elevation: 4,shadowColor: Colors.black),)
                      ],
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Special for you",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyCategoryScreen(),
                            ));
                      },
                      child: Text(
                        "See More",
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  height: MediaQuery.sizeOf(context).width * 0.4,
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: category.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image:
                                          AssetImage(category[index]["image"]),
                                      fit: BoxFit.cover)),
                              width: MediaQuery.sizeOf(context).width * 0.7,
                              height: MediaQuery.sizeOf(context).width * 0.4,
                            ),
                            SizedBox(width: 20)
                          ],
                        );
                      },
                    ),
                  )),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Featured Products",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyCategoryScreen(),
                            ));
                      },
                      child: Text(
                        "See More",
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: products.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyProductItem()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              products[index]["image"]),
                                          fit: BoxFit.cover)),
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.35,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.15,
                                  // child: IconButton.filled(onPressed: (){}, icon: Icon(CupertinoIcons.heart,color: Colors.purple,)),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  products[index]["title"],
                                  style: TextStyle(),
                                ),
                                Text(
                                  products[index]["price"],
                                  style: TextStyle(color: Colors.purple),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Best Saller",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyCategoryScreen(),
                            ));
                      },
                      child: Text(
                        "See More",
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: products.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyProductItem()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              products[index]["image"]),
                                          fit: BoxFit.cover)),
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.35,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.15,
                                  // child: IconButton.filled(onPressed: (){}, icon: Icon(CupertinoIcons.heart,color: Colors.purple,)),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  products[index]["title"],
                                  style: TextStyle(),
                                ),
                                Text(
                                  products[index]["price"],
                                  style: TextStyle(color: Colors.purple),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}

class IconWithBadge extends StatelessWidget {
  final IconData icon;
  final int badgeCount;
  final Widget route;

  IconWithBadge(
      {required this.icon, required this.badgeCount, required this.route});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => route,
                  ));
            },
            elevation: 4,
            color: Colors.white,
            shape: CircleBorder(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon, color: Colors.purple, size: 30),
            )),

        // if (badgeCount > 0)
        //   Positioned(
        //     left:20 ,
        //     top: 0,
        //     child: Container(
        //       padding: EdgeInsets.all(2),
        //       decoration: BoxDecoration(
        //         color: Colors.red,
        //         borderRadius: BorderRadius.circular(10),
        //       ),
        //       constraints: BoxConstraints(
        //         minWidth: 15,
        //         minHeight: 15,
        //       ),
        //       child: Text(
        //         '$badgeCount',
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 9,
        //         ),
        //         textAlign: TextAlign.center,
        //       ),
        //     ),
        //   )
      ],
    );
  }
}
