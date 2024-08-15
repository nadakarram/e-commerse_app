import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
        title: "text",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            padding:const EdgeInsets.only(left:30,right:30,top:30,bottom:20) ,
            // alignment: Alignment.center,
            child:SingleChildScrollView(child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 120,
                      // color: Colors.orange,
                      height: 220,
                   decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(16),
              ),
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage('assets/1.jpeg'),
                  fit: BoxFit.cover,
                ),
              
            ),
                      
                    ),
                     Container(
                      child: const Column(
                        children: [
                          Text(
                            "Dr.Stefeni \n Albret",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Heart Speailist",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                          // Icon(Icons.email),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            
                              Icon(Icons.email,color: Colors.orange),
                              Icon(Icons.phone,color: Colors.orange),
                              Icon(Icons.video_camera_back,color: Colors.orange),
                            
                            ],
                  )

                        ],
                      ),
                    )

                    
                  ],
                )
              ,
              const SizedBox(
                height: 50,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Text("About",style: TextStyle(color: Colors.black,fontSize: 20),),
                SizedBox(
                height: 30,
              ),
                Text("'Dr. Stefani Albert is a cardiologist in Nashville & affiliated with multiple hospitals in the area. She received her medical degree from Duke University School of Medicine and has been in practice for more than 20 years.',",
                style: TextStyle(fontSize: 16,color: Colors.grey),)
              ],
              ),
               const SizedBox(
                height: 50,
              ),
               Row(
                children: [
                  Column(children: [
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        Column(children: [
                          Text("Address",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                          Text("House #2, Road #5, \nGreen Road, \nDhanmondi, Dhaka,\n Bangladesh",style: TextStyle(
                          fontSize: 16,))

                        ],
                        )

                        
                      ],
                    ),
                     Row(
                      children: [
                        Icon(Icons.location_on),
                        Column(children: [
                          Text("Daily Practict",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                          Text("Monday-\nFriday Open \ntill 7 pm",style: TextStyle(
                          fontSize: 16,))

                        ],
                        )
                        
                      ],
                    ),
                   
                  ],),
                  Column(
                    children: [
                      Container(

                      )
                    ],
                  )
                 
                    
                  
              ],
              )
               ,
               const Text("Activity"  ,style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ 
                 ElevatedButton.icon(onPressed: (){}, label:Text(" List of Schadual"),
                 icon: Icon(Icons.list,color: Colors.white,),
                 
                 style:  ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange.shade400,
                  padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  
                  
                 ),
             ),
             ElevatedButton.icon(onPressed: (){}, label:Text(" Doctor'sDaily Post"),
             icon: Icon(Icons.list,color: Colors.white,),
              style:  ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade400,
                  padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  
                 ),
             )],)
            
              ],
            ),)
          ),
        ));
  
  }
}