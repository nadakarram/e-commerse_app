import 'package:flutter/material.dart';

class Notifcation extends StatefulWidget {
  const Notifcation({super.key});

  @override
  State<Notifcation> createState() => _NotifcationState();
}

class _NotifcationState extends State<Notifcation> {
     List<Map> notifcation = [
    {'title': "computer", "dec": "John Doe, +961 12345678Scholars Street, Behind the Official School,\nMaghdouche, Sidon, Lebanon, 1600 ","icon":Icons.check_rounded},
    {'title': "Phone & Accessory", "dec": "John Doe, +961 12345678Scholars Street, Behind the Official School,\nMaghdouche, Sidon, Lebanon, 1600 ","icon":Icons.assignment_turned_in},
    {'title': "Light & Lighting", "dec": "John Doe, +961 12345678Scholars Street, Behind the Official School,\nMaghdouche, Sidon, Lebanon, 1600 ","icon":Icons.credit_card_outlined},
    {'title': "Office Equipment", "dec": "John Doe, +961 12345678Scholars Street, Behind the Official School,\nMaghdouche, Sidon, Lebanon, 1600 ","icon":Icons.ac_unit},
  ];
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Promotions",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Card(
                color: Colors.white,
                margin: EdgeInsets.all(8),
                child: ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    "assets/images/lap1.jpg",
                    width: MediaQuery.sizeOf(context).width / 5,
                  ),
                  title: Text(
                      "John Doe, +961 12345678Scholars Street, Behind the Official School,\nMaghdouche, Sidon, Lebanon, 1600 ",style: TextStyle(fontSize: 12),),
                  subtitle: Text('10.00 AM'),
                ))
          
           ,Card(
                color: Colors.white,
                margin: EdgeInsets.all(8),
                child: ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    "assets/images/lap1.jpg",
                    width: MediaQuery.sizeOf(context).width / 5,
                  ),
                  title: Text(
                      "John Doe, +961 12345678\nScholars Street, Behind the Official School,\nMaghdouche, Sidon, Lebanon, 1600 ",style: TextStyle(fontSize: 12),),
                  subtitle: Text('10.00 AM'),
                ))
            ,Text(
              "Your Activity",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Expanded(
            
            
            child:ListView.builder(itemCount:notifcation.length,
                  itemBuilder:(context, index) {
                  return Card(
                    
                    color: Colors.white,
                    margin: EdgeInsets.all(10),
                       child: ListTile(
                        onTap: (){

                        },
              leading:IconButton.filled(onPressed: (){}, icon:  Icon(notifcation[index]["icon"],color: Colors.purple,),style: IconButton.styleFrom(backgroundColor: const Color.fromARGB(255, 223, 223, 223)),),
              title: Text(notifcation[index]["title"]),
              subtitle: Text('${notifcation[index]["dec"]}'),
             
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
