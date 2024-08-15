import 'package:app/screens/category.dart';
import 'package:app/screens/home.dart';
import 'package:app/screens/myorder.dart';
import 'package:app/test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MySigninScreen extends StatefulWidget {
  const MySigninScreen({super.key});

  @override
  State<MySigninScreen> createState() => _MySigninScreenState();
}

class _MySigninScreenState extends State<MySigninScreen> {
  var _formkey = GlobalKey<FormState>();
  TextEditingController email=TextEditingController();
  TextEditingController  Password=TextEditingController();
   bool _show =true; 
   bool remmberme=false;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 80, 40, 10),
        child: Form(
          key:_formkey ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome Back !",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Login yo your exsting acount",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  width: 100,
                  height: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.png"),
                          fit: BoxFit.cover)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Emial Address"),
                  const SizedBox(
                    height: 5,
                  ),
                  Card(
                    elevation: 4,
                    shadowColor: Colors.black,
                    child: TextFormField(
                      controller:email ,
                      validator: (value) {
                        if(value!.isEmpty){
                            return "this feild is required";
                        }
                        
                      },
                      decoration: InputDecoration(
                        hintText: 'e.g email@email.com',
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.shade100, width: 2.0),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5.0)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.purple, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Password"),
                  const SizedBox(
                    height: 5,
                  ),
                  Card(
                    elevation: 4,
                    shadowColor: Colors.black,
                    child:TextFormField(
          
                       controller:Password ,
                        validator: (value) {
                          if(value!.isEmpty){
                              return "this feild is required";
                          }
                          
                        },
                      obscureText: _show,
                      decoration: InputDecoration(
                        hintText: 'e.g *********',
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.shade100, width: 2.0),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5.0)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.purple, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        suffixIcon:_show
                                    ? IconButton(
                                        icon: Icon(Icons.remove_red_eye_outlined),
                                        onPressed: () {
                                          setState(() {
                                            _show = !_show;
                                          });
                                        },
                                      )
                                    : IconButton(
                                        icon: Icon(Icons.remove_red_eye_rounded),
                                        onPressed: () {
                                          setState(() {
                                            _show = !_show;
                                          });
                                        },
                                      )
                      ),
                    ),
                  ),
                
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        onChanged: (bool? value) {
                          setState(() {
                            remmberme=value!;
                          });
                        },
                        value: remmberme,
                      ),
                      const Text('Remember me'),
                    ],
                  ),
                  const Text("Forget Password ?")
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                     if(_formkey.currentState!.validate()){
                          Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => MyHomeScreen()));
          
                        }
                    
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple.shade400,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/google.png",
                          width: 30, height: 30, fit: BoxFit.cover)),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/images/facebook.png",
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have An Account ?",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  TextButton(
                      onPressed: () {
                       
                        Navigator.pushReplacementNamed(context, "singup");
                      },
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  
  }
}