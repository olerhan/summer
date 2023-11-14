import 'package:flutter/material.dart';
import 'package:summer/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  var ekran = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: BoxDecoration(color: yellouback),
        child: Column(
          children: [
            GestureDetector(onTap: (){
              print("Eşittir tuşuna basıldı");
            },
                child: Stack(
              children: [
                Image.asset("resimler/sum.png"),
              ],
            )
            ),
            GestureDetector(
                onDoubleTap: (){
              print("AC tuşuna basıldı");
            },
                onLongPress: (){
              print("kopyalandı");
                },
                child: Stack(
                  alignment: Alignment.center,
              children: [
                Image.asset("resimler/screen.png"),
                Text(ekran, style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontSize: 30),)
              ],
            )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 110, height: 50,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          ekran = ekran + "1";
                        });
                      },
                        child: const Text("1",style: TextStyle(fontFamily: "PsyFont",color: Colors.white,fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
                  SizedBox(width: 110, height: 50,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          ekran = ekran + "2";
                        });
                      },
                        child: const Text("2",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
                  SizedBox(width: 110, height: 50,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          ekran = ekran + "3";
                        });
                      },
                        child: const Text("3",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 114, height: 56,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          ekran = ekran + "4";
                        });
                      },
                        child: const Text("4",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
                  SizedBox(width: 114, height: 56,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          ekran = ekran + "5";
                        });
                      },
                        child: const Text("5",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
                  SizedBox(width: 114, height: 56,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          ekran = ekran + "6";
                        });
                      },
                        child: const Text("6",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 114, height: 56,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          ekran = ekran + "7";
                        });
                      },
                        child: const Text("7",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
                  SizedBox(width: 114, height: 56,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          ekran = ekran + "8";
                        });
                      },
                        child: const Text("8",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
                  SizedBox(width: 114, height: 56,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          ekran = ekran + "9";
                        });
                      },
                        child: const Text("9",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 114, height: 56,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          ekran = ekran + "0";
                        });
                      },
                        child: const Text("0",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
                  SizedBox(width: 114, height: 56,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          ekran = ekran + ".";
                        });
                      },
                        child: const Text(".",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
                  SizedBox(width: 114, height: 56,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          ekran = ekran + "+";
                        });
                      },
                        child: const Text("+",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),

                ],),
            )
          ],
        ),
      ),
    );
  }
}
