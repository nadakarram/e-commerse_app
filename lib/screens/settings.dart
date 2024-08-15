import 'package:app/screens/launguage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySettings extends StatefulWidget {
  const MySettings({super.key});

  @override
  State<MySettings> createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {
  bool _newv=true;
  bool theme=false;
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                         Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                  Text("Settings",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ], color: Colors.white, borderRadius: BorderRadius.circular(7)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Push Notifications"),
                    Row(
                      children: [
                        Text("Off/ On"),
                        Switch(
                            value: _newv,
                            onChanged: (value) {
                              setState(() {
                                value = _newv;
                              });
                            },
                          activeColor: Colors.white,
                            activeTrackColor: Colors.purple,
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: Colors.grey

                        ),  
                            
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ], color: Colors.white, borderRadius: BorderRadius.circular(7)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Theme"),
                    Row(
                      children: [
                        Text("Light/ Dark"),
                        Switch.adaptive(
                            value: theme,
                            onChanged: (value) {
                              setState(() {
                                theme=value;
                              });
        
                            },
                            activeColor: Colors.white,
                            activeTrackColor: Colors.purple,
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: Colors.grey
                          )
                        // ToggleButtons(children: [], isSelected: [true,false])
                        // ToggleButtons(value: true, onChanged: (value){})
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ], color: Colors.white, borderRadius: BorderRadius.circular(7)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Launguage"),
                    Row(
                      children: [
                        Text("English"),
                        SizedBox(
                          width: 5,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Launguage(),));
                            }, icon: Icon(Icons.arrow_forward_ios))
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
