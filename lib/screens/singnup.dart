import 'package:app/screens/singnin.dart';
import 'package:app/screens/vercation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySignupScreen extends StatefulWidget {
  const MySignupScreen({super.key});

  @override
  State<MySignupScreen> createState() => _MySignupScreenState();
}

class _MySignupScreenState extends State<MySignupScreen> {
  var _formkey = GlobalKey<FormState>();
  TextEditingController email=TextEditingController();
  TextEditingController  Password=TextEditingController();
  TextEditingController  name=TextEditingController();
  bool _show = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 90, 25, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "please Enter your imformation below to signup",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    width: 90,
                    height: 140,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/logo.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Name"),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3,
                              blurRadius: 3,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: TextFormField(
                          controller: name,
                          validator: (value){
                            if (value!.isEmpty) {
                              return "feild is required ";
                            }
                           
                          },
                          decoration: InputDecoration(
                            hintText: 'e.g your name',
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade100, width: 2.0),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5.0)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.purple, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
                          ),
                        ),
                      )
                    , SizedBox(
                      height: 10,
                    ),
                       Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Emial "),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this feild is required";
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'e.g email@email.com',
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade100, width: 2.0),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5.0)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.purple, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                        ),
                      ),
                    )
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
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: TextFormField(
                          obscureText: _show,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "this feild is required";
                            }
                          },
                          decoration: InputDecoration(
                              hintText: 'e.g *********',
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey.shade100, width: 2.0),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(5.0)),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.purple, width: 2.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              suffixIcon: _show
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
                                    )
                                    ),
                    )
                  ],
                ),
                      const SizedBox(
                  height: 30,
                ),
                    
                    ],
                  ),
                ),
             
                SizedBox(
                  width:double.infinity,
                  child: TextButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyVarcation()));
                      }
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.purple.shade400,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Aleary Have an Acount?",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "signin");
                        },
                        child: Text(
                          "Sign In",
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
        ));
  }
}
