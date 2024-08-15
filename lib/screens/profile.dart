import 'package:app/screens/launguage.dart';
import 'package:app/screens/myCards.dart';
import 'package:app/screens/shippingAddress.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
                CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage("assets/images/myimage.jpg"),
                  // backgroundColor: Colors.grey,
                  // child: Image.asset(),
          
                ),
                Text("Nada Karram",
                    style: TextStyle(color: Colors.black, fontSize: 20)),
                Card(
                  margin: EdgeInsets.all(7),
                  color:Colors.white,
                  child: ListTile(
                    leading: Icon(CupertinoIcons.person_alt_circle),
                    title: Text("My Acount"),
                    trailing: IconButton(onPressed: (){
                      Navigator.pushNamed(context, "editprofile");
                    }, icon: Icon(Icons.arrow_forward_ios_rounded)),
                  ),
                ),
                 Card(
                  margin: EdgeInsets.all(7),
                  color:Colors.white,
                  child: ListTile(
                    leading: Icon(CupertinoIcons.bag),
                    title: Text("My Orders"),
                    trailing: IconButton(onPressed: (){
                      Navigator.pushNamed(context, "order");
                    }, icon: Icon(Icons.arrow_forward_ios_rounded)),
                  ),
                ),
                 Card(
                  margin: EdgeInsets.all(7),
                  color:Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.translate_rounded),
                    title: Text("Launguage Settints"),
                    trailing: IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Launguage(),));
                      
                    }, icon: Icon(Icons.arrow_forward_ios_rounded)),
                  ),
                ),
                 Card(
                  margin: EdgeInsets.all(7),
                  color:Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.location_on_outlined),
                    title: Text("Shipping Adress"),
                    trailing: IconButton(onPressed: (){
                      
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Shippingaddress(),));
                     
                    }, icon: Icon(Icons.arrow_forward_ios_rounded)),
                  ),
                ),
                 Card(
                  margin: EdgeInsets.all(7),
                  color:Colors.white,
                  child: ListTile(
                    leading: Icon(CupertinoIcons.creditcard),
                    title: Text("My Cards"),
                    trailing: IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Mycards(),));
                    }, icon: Icon(Icons.arrow_forward_ios_rounded)),
                  ),
                ),
                 Card(
                  margin: EdgeInsets.all(7),
                  color:Colors.white,
                  child: ListTile(
                    leading: Icon(CupertinoIcons.settings),
                    title: Text("Settings"),
                    trailing: IconButton(onPressed: (){
                      Navigator.pushNamed(context, "Setting");
                    }, icon: Icon(Icons.arrow_forward_ios_rounded)),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(7),
                  color:Colors.white,
                  child: ListTile(
                    leading: Icon(CupertinoIcons.photo_fill_on_rectangle_fill),
                    title: Text("Privacy Policy"),
                    trailing: IconButton(onPressed: (){
                      
                    }, icon: Icon(Icons.arrow_forward_ios_rounded)),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(7),
                  color:Colors.white,
                  child: ListTile(
                    leading: Icon(CupertinoIcons.info_circle),
                    title: Text("FAQ"),
                    trailing: IconButton(onPressed: (){
                      
                    }, icon: Icon(Icons.arrow_forward_ios_rounded)),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(7),
                  color:Colors.white,
                  child: ListTile(
                    leading: Icon(CupertinoIcons.chat_bubble_2),
                    title: Text("Contact Us"),
                    trailing: IconButton(onPressed: (){
                      Navigator.pushNamed(context, "contactus");
                    }, icon: Icon(Icons.arrow_forward_ios_rounded)),
                  ),
                ),
               
          
            ],
          ),
        ),
      )
      
      
      
      )
    )
    ;
  }
}