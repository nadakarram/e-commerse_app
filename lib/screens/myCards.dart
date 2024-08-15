import 'package:flutter/material.dart';

class Mycards extends StatefulWidget {
  const Mycards({super.key});

  @override
  State<Mycards> createState() => _MycardsState();
}

class _MycardsState extends State<Mycards> {
    String selectedCards = 'card1';

  final List<Map<String, String>> Cards = [
    {'image': 'assets/images/card1.PNG','name':"card1" },
    {'image': 'assets/images/card3.png', 'name':"card2" },
  
   
  ];
  @override
  Widget build(BuildContext context) {
    return (

      Scaffold(
        appBar: AppBar(title: Text("My Cards"),centerTitle: true, actions: [IconButton(onPressed: (){}, icon: Icon(Icons.add))],),
        body: Column(
          children: [
            Text("Your Payment Cards"),
            SizedBox(height: 15,),
            Expanded(child:  ListView.builder(
        itemCount: Cards.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedCards = Cards[index]['name']!;
              });
            },
            child: Container(
              height: MediaQuery.sizeOf(context).height*0.25,
              margin: EdgeInsets.all(10),
              // padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: selectedCards == Cards[index]['name']
                      ? Colors.purple
                      : Colors.grey,
                ),
                borderRadius: BorderRadius.circular(8.0),
                color: 
                     Colors.white,
              ),
              child:Image.asset("${Cards[index]["image"]}",fit: BoxFit.cover,)
              
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



