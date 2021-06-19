import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: MiCard(),
  ));
}
class MiCard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MiCard();
  }
}

class _MiCard extends State<MiCard>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              child: Image.asset("assets/profile.jpg", width: 150, height: 150,),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text("Elwannas HIRI", style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w200,
              color: Colors.white,
              fontFamily: "RB"
            ),),
            const SizedBox(
              height: 7,
            ),
            const Text("FLUTTER DEVELOPER", style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              letterSpacing: 3,
              color: Colors.white
            ),),
            const SizedBox(
              height: 7,
            ),
            Container(
              height: 2,
              width: 190,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2)
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.fromLTRB(40,5,40,5),
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin:EdgeInsets.only(left: 10, right: 5),
                    child: const Icon(  Icons.phone, color: Colors.teal, size: 25,),),
                  const SizedBox(width: 10,),
                  const Text("+213 5 56 35 76 65", style: TextStyle(color: Colors.black54,fontSize: 17)),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.white
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.fromLTRB(40,5,40,5),
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin:EdgeInsets.only(left: 10, right: 5),
                    child: const Icon(  Icons.mail, color: Colors.teal, size: 25,),),
                  const SizedBox(width: 10,),
                  const Text("hiri.elwannas@gmail.com", style: TextStyle(color: Colors.black54,fontSize: 17)),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white
              ),
            ),


          ],
        ),
      ),
    );
  }
}