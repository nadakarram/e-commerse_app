// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class Test extends StatelessWidget {
//   bool _show = false;
//   Test({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return (Scaffold(
//       body: Container(
//         child: Form(
//           child: Column(children: [
//             TextFormField(
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return "this feild is required";
//                 }
//               },
//               decoration: InputDecoration(
//                   hintText: "password",
//                   fillColor: Color.fromARGB(168, 197, 197, 197),
//                   filled: true,
//                   border: OutlineInputBorder(),
//                   labelText: "password",
//                   labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 23),
//                   prefixIcon: Icon(Icons.lock_outline),
//                   suffixIcon: _show
//                       ? Icon(Icons.remove_red_eye_outlined)
//                       : Icon(Icons.remove_red_eye_rounded)),
//               maxLength: 20,
//               maxLines: 2,
//             ),
//           ]),
//         ),
//       ),
//     ));
//   }
// }

class MyTest extends StatefulWidget {
  const MyTest({super.key});

  @override
  State<MyTest> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  bool _show = true;
  var _formkey = GlobalKey<FormState>();
  // List<Map> employee = [
  //   {'name': "nada", "age": 18, "salary": 2000},
  //   {'name': "nada2", "age": 19, "salary": 2200},
  //   {'name': "omer", "age": 20, "salary": 28200},
  // ];
   List<Map> category = [
    {'title': "computer", "image": "assets/images/images.jfif"},
    {'title': "Phone & Accessory", "image": "assets/images/phones.jfif"},
    {'title': "Light & Lighting", "image": "assets/images/light.jfif"},
    {'title': "Office Equipment", "image": "assets/images/pc.jfif"},
  ];
  GlobalKey<ScaffoldState> Scafoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      key: Scafoldkey,
      appBar: AppBar(title: Text("Draweeer")),
      drawer: Drawer(),
      body: Container(

        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            // TextField(),
            GridView.builder(itemCount: category.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 15), itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: AssetImage(category[index]["image"]),fit: BoxFit.cover)
            ),
            child: Text(category[index]["title"],style: TextStyle(color: Colors.white,fontSize: 20),),
            width: 50,
            height: 20
          );
        },),
      

          ],
        )
     
      )
      
      //  CarouselSlider(items: 
      //   [1, 2, 3, 4, 5].map((i) {
      //     return Container(
      //       width: MediaQuery.of(context).size.width,
      //       margin: EdgeInsets.all(10),
      //       decoration: BoxDecoration(color: Colors.red,borderRadius:BorderRadius.circular(10) ),
      //       child: Center(child: Text("test $i")),
      //     );
      //   }).toList()
      // , options: CarouselOptions(height: 300),
      // ),
         
          //   // clipBehavior: Clip.none,
          //   // scrollDirection: Axis.horizontal,
          //   // children: [
          //   //   Container(
          //   //     width: 20,
          //   //     height: 150,
          //   //     color: Colors.green,
          //   //   ),
          //   //   Container(
          //   //     width: 20,
          //   //     height: 150,
          //   //     color: Colors.red,
          //   //   ),
          //   //   Container(
          //   //     width: 20,
          //   //     height: 150,
          //   //     color: Colors.yellow,
          //   //   ),
          //   //   Container(
          //   //     width: 20,
          //   //     height: 150,
          //   //     color: Colors.black,
          //   //   ),
          //   //   Container(
          //   //     width: 20,
          //   //     height: 150,
          //   //     color: Colors.blue,
          //   //   ),
          //   // ],
          // ),

          // ),

      // Container(
      //   child: Form(
      //     key: _formkey,
      //     child: Column(children: [

      //       TextButton(
      //           onPressed: (

      //           ) {
      //             Scafoldkey.currentState!.openDrawer();
      //           },
      //           child: Text("open draweer")),
      //       TextFormField(
      //         obscureText: _show,
      //         validator: (value) {
      //           if (value!.isEmpty) {
      //             return "this feild is required";
      //           }
      //         },
      //         decoration: InputDecoration(
      //             hintText: "password",
      //             fillColor: Color.fromARGB(168, 197, 197, 197),
      //             filled: true,
      //             border: OutlineInputBorder(),
      //             labelText: "password",
      //             labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 23),
      //             prefixIcon: Icon(Icons.lock_outline),
      //             suffixIcon: IconButton(
      //               icon: Icon(Icons.remove_red_eye_outlined),
      //               onPressed: () {
      //                 setState(() {
      //                   _show = !_show;
      //                 });
      //               },
      //             )),
      //         maxLength: 20,
      //         // maxLines: 2,
      //       ),
      //       TextField(
      //         obscureText: _show,
      //         decoration: InputDecoration(
      //             hintText: "password",
      //             fillColor: Color.fromARGB(168, 197, 197, 197),
      //             filled: true,
      //             border: OutlineInputBorder(),
      //             labelText: "password",
      //             labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 23),
      //             prefixIcon: Icon(Icons.lock_outline),
      //             suffixIcon: _show
      //                 ? IconButton(
      //                     icon: Icon(Icons.remove_red_eye_outlined),
      //                     onPressed: () {
      //                       setState(() {
      //                         _show = !_show;
      //                       });
      //                     },
      //                   )
      //                 : IconButton(
      //                     icon: Icon(Icons.remove_red_eye_rounded),
      //                     onPressed: () {
      //                       setState(() {
      //                         _show = !_show;
      //                       });
      //                     },
      //                   )),
      //       ),
      //       TextButton(
      //           onPressed: () {
      //             _formkey.currentState!.validate();
      //           },
      //           child: Text("save"))
      //     ]),
      //   ),
      // ),
    
    )
    );
  }
}
