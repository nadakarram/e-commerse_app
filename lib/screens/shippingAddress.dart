import 'package:flutter/material.dart';

class Shippingaddress extends StatefulWidget {
  const Shippingaddress({super.key});

  @override
  State<Shippingaddress> createState() => _ShippingaddressState();
}

class _ShippingaddressState extends State<Shippingaddress> {
    String selectedAddress = 'John Doe +961-123456781';

  final List<Map<String, String>> Address = [
    {'name': 'John Doe +961-123456781', 'details': 'School Street, Behind the Official School,\n Maghdouch, Saida, Lebanan, 1600'},
    {'name': 'John Doe +961-123456782', 'details': 'School Street, Behind the Official School,\n Maghdouch, Saida, Lebanan, 1600'},
    {'name': 'John Doe +961-123456783', 'details': 'School Street, Behind the Official School,\n Maghdouch, Saida, Lebanan, 1600'},
   
  ];
  @override
  Widget build(BuildContext context) {
    return (

      Scaffold(
        appBar: AppBar(title: Text("Shipping Address"),centerTitle: true, actions: [IconButton(onPressed: (){}, icon: Icon(Icons.add))],),
        body: Column(
          children: [
            Text("Shipping Address"),
            SizedBox(height: 15,),
            Expanded(child:  ListView.builder(
        itemCount: Address.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedAddress = Address[index]['name']!;
              });
            },
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: selectedAddress == Address[index]['name']
                      ? Colors.purple
                      : Colors.grey,
                ),
                borderRadius: BorderRadius.circular(8.0),
                color: 
                     Colors.white,
              ),
              child: Row(
                children: [
                 Icon(Icons.location_pin,color: Colors.purple,),
                  SizedBox(width: 5),
                  Column(
                    children: [
                      Text(
                    "${Address[index]['name']}",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    
                  ),
                  Text(
                   "${Address[index]['details']}",
                    style: TextStyle(fontSize: 12),
                  ),
                    ],
                  )
                 
                ],
              ),
            ),
          );
        },
      ),
    )
            
          ],
        ),
      )
    );
  }
}



