import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "text",
      debugShowCheckedModeBanner: false,
      home:
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/Screen.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 55, top: 90),
                child: Text(
                  "Welcome\n back",
                  style: TextStyle(color: Colors.black, fontSize: 33),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.5,
                      right: 35,
                      left: 35),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: "Email",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sign in",
                            style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.w100,
                                decoration: TextDecoration.underline),
                          ),
                          CircleAvatar(
                            backgroundColor: Color(0xff4c505b),
                            radius: 30,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    
    );
    
  }
}