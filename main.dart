// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import './icons.dart';
import './circle.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(33, 48, 33, 42),
              child: const Image(
                image: AssetImage("assets/Welcome.jpg"),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(33, 0, 0, 0),
              child: Row(
                children: const <Widget>[
                  Image(
                    image: AssetImage("assets/product_1.jpg"),
                  ),
                  SizedBox(width: 19),
                  Image(
                    image: AssetImage("assets/product_2.jpg"),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(57, 41, 145, 13.83),
              child: Text(
                'Floating Phone',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 20,
                      letterSpacing: .2,
                      fontWeight: FontWeight.w400,
                      color: Color(0Xff252B42)),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(58.83, 0, 0, 23.82),
              child: Row(
                children: [
                  RatingBar.builder(
                    initialRating: 1,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 25,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      // print(rating);
                    },
                  ),
                  const SizedBox(width: 11.83),
                  Text(
                    "10 Reviews",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          letterSpacing: .2,
                          fontWeight: FontWeight.w700,
                          color: Color(0Xff737373)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(57, 0, 0, 5),
              child: Text(
                "\$1,139.33",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 24,
                      letterSpacing: .1,
                      fontWeight: FontWeight.w700,
                      color: Color(0Xff252B42)),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(57, 0, 0, 32),
              child: Row(
                children: <Widget>[
                  Text(
                    "Availability :",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          letterSpacing: .2,
                          fontWeight: FontWeight.w700,
                          color: Color(0Xff737373)),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "In Stock",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          letterSpacing: .2,
                          fontWeight: FontWeight.w700,
                          color: Color(0Xff23A6F0)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(57, 0, 86, 16),
              child: Text(
                "Met minim Mollie non desert Alamo est sit cliquey dolor do met sent. RELIT official consequent door ENIM RELIT Mollie. Excitation venial consequent sent nostrum met.",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 14,
                      letterSpacing: .2,
                      fontWeight: FontWeight.w400,
                      color: Color(0Xff858585)),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(62, 0, 69, 19),
              child: const Divider(
                color: Color(0XffBDBDBD),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(57, 0, 69, 48),
              child: Row(
                children: const <Widget>[
                  Circle("0Xff23A6F0"),
                  SizedBox(width: 10),
                  Circle("0Xff2DC071"),
                  SizedBox(width: 10),
                  Circle("0XffE77C40"),
                  SizedBox(width: 10),
                  Circle("0Xff252B42")
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(57, 0, 0, 0),
              child: Row(
                children: <Widget>[
                  ElevatedButton(
                    child: const Text("Select Options"),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 10),
                  CircleIcon(Icons.favorite_border),
                  const SizedBox(width: 10),
                  CircleIcon(Icons.shopping_cart_outlined),
                  const SizedBox(width: 10),
                  CircleIcon(Icons.remove_red_eye),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
