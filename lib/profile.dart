import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "new",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("profile",
              style: TextStyle(color: Colors.white, fontSize: 25)),
          backgroundColor: Colors.lightBlue,
        ),
        body:  Container(

          padding: EdgeInsets.only(top:33,left: 50,right: 50),
          // child:Container(
          child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person,size: 60,color: Colors.white,),

              ),
              Text("Nada Karram",
                  style: TextStyle(color: Colors.black, fontSize: 25)),
              Text("Web Developer",
                  style: TextStyle(color: Colors.grey, fontSize: 15)),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  fillColor: Color.fromARGB(135, 216, 216, 216),
                  filled: true,
                  icon: Icon(Icons.email)
                  
                  // border:OutlineInputBorder(
                  //   borderRadius :BorderRadius.circular(10)
                  //   )
                ),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  fillColor: Color.fromARGB(109, 221, 221, 221),
                  filled: true,
                  icon: Icon(Icons.password)
                  
                  
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}