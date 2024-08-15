import 'package:app/screens/cart.dart';
import 'package:app/screens/payment.dart';
import 'package:app/screens/spining_address.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  bool isSelected=false;
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
      String selectedPayMethod = 'apple_pay';
  List<Map> pay=[{"image":"assets/images/Apple_Pay-Logo.wine.png","name":"apple_pay"},{"image":"assets/images/Google-Pay-logo.png","name":"google_pay"},{"image":"assets/images/Mastercard-logo.svg.png","name":"Mastercard"},{"image":"assets/images/paypall.png","name":"paypall"},{"image":"assets/images/visa.png","name":"visa"}];
  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
      appBar: AppBar(title: Text("Check Out") ,centerTitle: true,),
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Your Address",
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
                              builder: (context) => SpiningAddress(),
                            ));
                      },
                      child: Text(
                        "Change address",
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ))
                ],
              ),
                // SizedBox(height: 5,),
                Card(
                  // color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("John Doe, +961 12345678\nScholars Street, Behind the Official School,\nMaghdouche, Sidon, Lebanon, 1600",style: TextStyle(color: Colors.black54,fontSize: 18),),
                  ),
                ),
                // SizedBox(height: 8,),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Shipping Mode",
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
                              builder: (context) => SpiningAddress(),
                            ));
                      },
                      child: Text(
                        "Change Mode",
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ))
                ],
              ),
                // SizedBox(height: 5,),
                Card(
                  // color: Colors.white,
                  child: ListTile(
                    title: Text("Flat Rate"),
                    trailing: Text("\$ 20.0"),
                  ),
                ),
                // SizedBox(height: 8,),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Your Cart",
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
                              builder: (context) => MyCart(),
                            ));
                      },
                      child: Text(
                        "View All",
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ))
                ],
              ),
      
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: MediaQuery.sizeOf(context).height*0.2,
                  child: ListView.builder(
                    itemCount: products.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                    return   Row(
                      children: [
                        Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image:
                                              AssetImage(products[index]["image"]),
                                          fit: BoxFit.cover)),
                                   width:
                                      MediaQuery.sizeOf(context).width * 0.35,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.15,
                        ),
                        SizedBox(width: 8,)
                      ],
                    );
                  },),
                ),
                
                Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Payment Method",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                
                ],
              ),
                
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: MediaQuery.sizeOf(context).height*0.1,
                  child: ListView.builder(
                    itemCount: pay.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                    return   Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                             setState(() {
                selectedPayMethod = pay[index]['name']!;
              });
                          },
                          child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        image: DecorationImage(
                                            image:
                                                AssetImage(pay[index]["image"]),
                                            fit: BoxFit.contain)
                                            ,color: Colors.white,
                                            border: Border.all(
                  color: selectedPayMethod == pay[index]['name']
                      ? Colors.purple
                      : Colors.grey,
                ),
                                          ),
                                     width:
                                        MediaQuery.sizeOf(context).width * 0.2,
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.05,
                          ),
                        ),
                        SizedBox(width: 8,)
                      ],
                    );
                  },),
                ),
                
                Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Order Summary",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                
                ],
              ),
                
                Divider(
                            color: Colors.black54,
                            height: 10, // The space between the rows
                            thickness: 1, // The thickness of the divider
                      ),
                
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Coupon",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton.icon(
                    onPressed: (){Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyCart(),
                            ));
                            }
                        ,
                      icon: Icon(Icons.arrow_forward_ios,color: Colors.grey ,size: 10,),
                      
                      label: Text(
                        "Add Coupon",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      )
                      
                    )
                ],
              ),
                
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("total",style: TextStyle(color: Colors.grey,fontSize: 20),),
                        Text("\$170.0",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Payment(),));
                    }, child: Text("Pay Now"),style: TextButton.styleFrom(backgroundColor: Colors.purple,foregroundColor: Colors.white,shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3))),),
                  )
                ],)
            ],
          ),
          
        ),
      ) ,

      )

    );
  }
}