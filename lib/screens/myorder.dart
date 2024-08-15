import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      // backgroundColor: Color.fromARGB(74, 251, 235, 253),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                    Text("My Orders",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      width: 10,
                    )
                  ],
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
                          offset:
                              const Offset(0, 6), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Order#",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            "2669047834823648",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.grey.shade300,
                        height: 10, // The space between the rows
                        thickness: 1, // The thickness of the divider
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            "8/3/2024",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Price",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            "\$ 15000",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "State",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            "pending",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.purple,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                padding: const EdgeInsetsDirectional.only(
                                    start: 15, end: 15)),
                            child: const Text("Details"),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.grey,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                padding: const EdgeInsetsDirectional.only(
                                    start: 15, end: 15)),
                            child: const Text("Track"),
                          )
                        ],
                      ),
                    ],
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
                          offset:
                              const Offset(0, 6), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height *0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Order#",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            "2669047834823648",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.grey.shade300,
                        height: 10, // The space between the rows
                        thickness: 1, // The thickness of the divider
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            "8/3/2024",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Price",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            "\$ 15000",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "State",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            "pending",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.purple,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                padding: const EdgeInsetsDirectional.only(
                                    start: 15, end: 15)),
                            child: const Text("Details"),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.grey,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                padding: const EdgeInsetsDirectional.only(
                                    start: 15, end: 15)),
                            child: const Text("Track"),
                          )
                        ],
                      ),
                    ],
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
                          offset:
                              const Offset(0, 6), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height *0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Order#",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            "2669047834823648",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.grey.shade300,
                        height: 10, // The space between the rows
                        thickness: 1, // The thickness of the divider
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            "8/3/2024",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Price",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            "\$ 15000",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "State",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            "pending",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.purple,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                padding: const EdgeInsetsDirectional.only(
                                    start: 15, end: 15)),
                            child: const Text("Details"),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.grey,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                padding: const EdgeInsetsDirectional.only(
                                    start: 15, end: 15)),
                            child: const Text("Track"),
                          )
                        ],
                      ),
                    ],
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
                          offset:
                              const Offset(0, 6), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height *0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Order#",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            "2669047834823648",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.grey.shade300,
                        height: 10, // The space between the rows
                        thickness: 1, // The thickness of the divider
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            "8/3/2024",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Price",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            "\$ 15000",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "State",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            "pending",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.purple,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                padding: const EdgeInsetsDirectional.only(
                                    start: 15, end: 15)),
                            child: const Text("Details"),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.grey,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                padding: const EdgeInsetsDirectional.only(
                                    start: 15, end: 15)),
                            child: const Text("Track"),
                          )
                        ],
                      ),
                    ],
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
                          offset:
                              const Offset(0, 6), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height *0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Order#",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            "2669047834823648",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.grey.shade300,
                        height: 10, // The space between the rows
                        thickness: 1, // The thickness of the divider
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            "8/3/2024",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Price",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            "\$ 15000",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "State",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            "pending",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.purple,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                padding: const EdgeInsetsDirectional.only(
                                    start: 15, end: 15)),
                            child: const Text("Details"),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.grey,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                padding: const EdgeInsetsDirectional.only(
                                    start: 15, end: 15)),
                            child: const Text("Track"),
                          )
                        ],
                      ),
                    ],
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
                          offset:
                              const Offset(0, 6), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height *0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Order#",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            "2669047834823648",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.grey.shade300,
                        height: 10, // The space between the rows
                        thickness: 1, // The thickness of the divider
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            "8/3/2024",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Price",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            "\$ 15000",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "State",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            "pending",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.purple,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                padding: const EdgeInsetsDirectional.only(
                                    start: 15, end: 15)),
                            child: const Text("Details"),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.grey,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                padding: const EdgeInsetsDirectional.only(
                                    start: 15, end: 15)),
                            child: const Text("Track"),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )),
    ));
  }
}
