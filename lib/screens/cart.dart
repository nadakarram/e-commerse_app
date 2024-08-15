import 'package:app/screens/checkout.dart';

import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  List<Map> products = [
    {
      'title': "computer",
      "image": "assets/images/images.jfif",
      "price": 23300,
      "quantity": 1
    },
    {
      'title': "Phone & Accessory",
      "image": "assets/images/phones.jfif",
      "price": 23300,
      "quantity": 1
    },
    {
      'title': "Light & Lighting",
      "image": "assets/images/light.jfif",
      "price": 23300,
      "quantity": 1
    },
    {
      'title': "Office Equipment",
      "image": "assets/images/pc.jfif",
      "price": 23300,
      "quantity": 1
    },
    {
      'title': "computer",
      "image": "assets/images/images.jfif",
      "price": 23300,
      "quantity": 1
    },
    {
      'title': "Phone & Accessory",
      "image": "assets/images/phones.jfif",
      "price": 23300,
      "quantity": 1
    },
  ];

  @override
  Widget build(BuildContext context) {
    int num = products.length;
    return (Scaffold(
      appBar: AppBar(
        title:const Text("Your Cart"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon:const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("$num Product"),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.7,
              child: Expanded(
                  child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.18,
                      child: Card(
                        color: Colors.white,
                        margin: const EdgeInsets.all(8),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                                child: Image.asset(
                                  products[index]["image"],
                                  width: MediaQuery.sizeOf(context).width / 4,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.2,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      products[index]["title"],
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                   const SizedBox(height: 4),
                                    Text(
                                      '\$${products[index]["price"].toStringAsFixed(2)}',
                                      style: const TextStyle(
                                          fontSize: 14, color: Colors.purple),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        products[index]["quantity"]++;
                                      });
                                    },
                                    icon:const Icon(Icons.add),
                                  ),
                                  Text("${products[index]["quantity"]}"),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (products[index]["quantity"] == 0) {
                                          products[index]["quantity"] = 0;
                                        } else {
                                          products[index]["quantity"]--;
                                        }
                                      });
                                    },
                                    color: Colors.black,
                                    icon:const Icon(Icons.remove),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      
                      ));
                },
              )),
            )
            ,const SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      const Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Text(
                          'Total',
                          style: TextStyle(fontSize: 20,color: Colors.grey),
                        ),
                        Text(
                          '\$7777.88',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        ],
                      ),
                      Divider(
                            color: Colors.grey.shade300,
                            height: 10, // The space between the rows
                            thickness: 1, // The thickness of the divider
                      ),
                      const Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Text(
                          'SubTotal',
                          style: TextStyle(fontSize: 20,color: Colors.grey),
                        ),
                        Text(
                          '\$77',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        ],
                      ),
                  
                  
                  
                      
                  
                    ],
                  ),
                )
               ,
               const SizedBox(width: 20,),
               Expanded(
                flex: 2,
                 child: SizedBox(
                  width: double.infinity,
                  child:TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>const Checkout(),));
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.purple.shade400,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                            child: const Text(
                              "check out",
                              style: TextStyle(fontSize: 20),
                            )), 
                 ),
               )
               ],
              ),
            )
          
          ],
        ),
      ),
    ));
  }
}
