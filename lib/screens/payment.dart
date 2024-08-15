import 'package:app/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        appBar: AppBar(title: Text("Payment"),centerTitle: true,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.purple,
                          ),
                          child:
                              Icon(
                                  CupertinoIcons.checkmark_alt,
                                  color: Colors.white,
                                  size: 30,
                                )
                              ,
                        ),
               SizedBox(height: 10,),
               Text("Payment Successful!",style: TextStyle(fontWeight: FontWeight.bold),),
               SizedBox(height: 10,),
               Text("Your Order will be processed and send to \n you as soon as possible",textAlign: TextAlign.center,),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: SizedBox(
                  
                  width: double.infinity,
                  child:  TextButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomeScreen(),));}, child: Text("Continue Shopping"),style: TextButton.styleFrom(backgroundColor: Colors.purple,foregroundColor: Colors.white,shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3))),),
                 ),
               )

            ],
          ),
        ),
        
      )
     
    );
  }
}