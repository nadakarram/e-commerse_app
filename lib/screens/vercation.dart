import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class MyVarcation extends StatelessWidget {
  const MyVarcation({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 50, 40, 50),
                child: 
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  // IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
                  // SizedBox(
                  // height: 30,
                  // ),
                  const Text("Verfication",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text("please Enter your OPT code that send by SMS ",
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 37, 37, 37),
                  fontWeight: FontWeight.normal
                ),
                ),
                 const SizedBox(
                  height: 50,
                ),
               OtpTextField(
        numberOfFields: 5,
        borderColor: Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
            showDialog(
                context: context,
                builder: (context){
                return AlertDialog(
                    title: Text("Verification Code"),
                    content: Text('Code entered is $verificationCode'),
                );
                }
            );
        }, // end onSubmit
    ),
                SizedBox(height: 16),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Didn't get a code? ",
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'Send again',
                            style: TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Handle resend code action
                                print("Resend code tapped");
                              },
                          ),
                        ],
                      ),),
                  ),
                  SizedBox(
                    height:MediaQuery.sizeOf(context).height/3 ,
                  ),
                
            
                Row(
                  children: [
                      Expanded(
                        child: TextButton(onPressed: (){
                          Navigator.pushReplacementNamed(context, "home");
                        }, child: const Text("Verify"),style: TextButton.styleFrom(
                           backgroundColor: Colors.purple.shade400,
                           foregroundColor: Colors.white,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                           
                           
                        ),),
                      )
                    
                  ],
                )
               
                  ],
              
                    ),
              
                    
              ),
            ],
          ),
        )
        );
  }
}

Widget _buildCodeTextField(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
     
      child: TextField(
        
        textAlign: TextAlign.center,
        maxLength: 1,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counterText: '',
          hintText: "_",
          fillColor: const Color.fromARGB(255, 237, 236, 236),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: const Color.fromARGB(255, 234, 234, 234)),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
