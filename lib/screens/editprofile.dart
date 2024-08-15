import 'package:app/screens/singnin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyEditProfile extends StatelessWidget {
  const MyEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
            child: Column(
          
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon:const Icon(Icons.arrow_back)),
                    const Text("edit Profile",style:
                    TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20)
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
                
                Stack(
                children: <Widget>[
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("assets/images/myimage.jpg"),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration:const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child:const Icon(
                      Icons.camera_alt,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
                const SizedBox(
                      height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade100, width: 2.0),
                    borderRadius: const BorderRadius.all(Radius.circular(7.0)),
                  ),
                  focusedBorder:const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                ),
                ),
                ),
                const SizedBox(
                      height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade100, width: 2.0),
                    borderRadius: const BorderRadius.all(Radius.circular(7.0)),
                  ),
                  focusedBorder:const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                ),
                ),
                ),
                const SizedBox(
                      height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Phone',
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade100, width: 2.0),
                    borderRadius: const BorderRadius.all(Radius.circular(7.0)),
                  ),
                  focusedBorder:const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                ),
                ),
                ),
                const SizedBox(
                      height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Country',
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade100, width: 2.0),
                    borderRadius: const BorderRadius.all(Radius.circular(7.0)),
                  ),
                  focusedBorder:const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                ),
                ),
                ),
                const SizedBox(
                      height: 20,
                ),
                SizedBox(
                width: double.infinity,
                child: TextButton(
                
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    const MySigninScreen()
                  ));
                },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple.shade400,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: const Text(
                    "Save",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            
               
               
               
              ],
            ),
          ),
        ),
        
      )
    );
  }
}