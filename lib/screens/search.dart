import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySearchScreen extends StatefulWidget {
  const MySearchScreen({super.key});

  @override
  State<MySearchScreen> createState() => _MySearchScreenState();
}

class _MySearchScreenState extends State<MySearchScreen> {
    List<Map> products = [
    {'title': "computer", "image": "assets/images/images.jfif","price":23300},
    {'title': "Phone & Accessory", "image": "assets/images/phones.jfif","price":23300},
    {'title': "Light & Lighting", "image": "assets/images/light.jfif","price":23300},
    {'title': "Office Equipment", "image": "assets/images/pc.jfif","price":23300},
  ];
  String searchvalue="";
  

  List<Map> filteredProducts = [];

  @override
  void initState() {
    filteredProducts = products;
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    //  var filteredProducts = products;
    return (Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Search")),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
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
                      child: TextField(
                        decoration: const InputDecoration(
                            hintText: 'Search ',
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.purple, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            prefixIcon: Icon(Icons.search_outlined),
                            prefixIconColor: Colors.purple),
                            onChanged: (value) {
                              setState(() {
                                searchvalue=value;
                                print(searchvalue);
                                filteredProducts=products.where((product){
                                  print(product["title"].contains(searchvalue));
    return product["title"].toLowerCase().contains(searchvalue.toLowerCase());
    }).toList(); 
    print(filteredProducts);
                              });
                            },
                      ),
                    )),
                Expanded(
                    child:
                  
                    Material(
                        elevation: 4,
                        shape: CircleBorder(),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.blur_linear_sharp,
                              color: Colors.purple, size: 30),
                        ))
                
                )
              ],
            )
           ,SizedBox(height: 10,),
           Expanded(
            
            
            child:ListView.builder(itemCount:filteredProducts.length,
                  itemBuilder:(context, index) {
                  return Card(
                    
                    color: Colors.white,
                    margin: EdgeInsets.all(10),
                       child: ListTile(
                        onTap: (){

                        },
              leading: Image.asset(filteredProducts[index]["image"], width: MediaQuery.sizeOf(context).width/4, ),
              title: Text(filteredProducts[index]["title"]),
              subtitle: Text('\$${filteredProducts[index]["price"].toStringAsFixed(2)}'),
              trailing: IconButton(onPressed: (){ setState(() {
                // shopingitems++;
              });}, icon: Icon(Icons.shopping_cart,color: Colors.purple,)),
                       )
                  );
                }, 
                ))

          
            ],
           ),
           ),
           ));
           
        
  }
}

