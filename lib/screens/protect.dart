// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petcare/screens/maincare.dart';

class protectPets extends StatelessWidget {
  const protectPets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //navbar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/pawprint.png',
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("SOFTPAWS",
                              style: GoogleFonts.bebasNeue(fontSize: 30)),
                        ],
                      ),
                    ),
                    Icon(Icons.expand_circle_down),
                  ],
                ),
              ),
              //main section
              Row(
                children: [
                  //main dog
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/images/img1.jpg',
                        width: 220,
                        height: 400,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //two dogs in column
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              'assets/images/img2.jpg',
                              width: 150,
                              height: 196,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              'assets/images/img3.jpg',
                              width: 137,
                              height: 196,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //protect your pets

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "Protect\nyour pets",
                  style: GoogleFonts.bebasNeue(
                    fontSize: 70,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              //read more button
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainCare()),
                    );
                  },
                  child: Text("Read More",
                      style: GoogleFonts.bebasNeue(fontSize: 25)),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(150, 60),
                    primary: Color.fromARGB(255, 157, 111, 95),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
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
