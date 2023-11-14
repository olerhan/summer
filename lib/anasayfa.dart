import 'package:flutter/material.dart';
import 'package:summer/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  var tfControl = TextEditingController();

  Future<int> toplama(int sayi1, int sayi2) async {
    int toplam = sayi1 + sayi2;
    return toplam;
  }


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
              children: [
                Image.asset("resimler/screen.png"),
                Center(
                  child: FutureBuilder<int>(
                      future: toplama(10,20),
                      builder: (context, snapshot){
                        if(snapshot.hasError){
                          return const Text("Hata oluştu");
                        }
                        if(snapshot.hasData){
                          return Text("${snapshot.data}");
                        }else{
                          return const Text("");
                        }
                      }
                  ),
                )
              ],
            )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 110, height: 50,
                      child: ElevatedButton(onPressed: (){},
                        child: const Text("1",style: TextStyle(fontFamily: "PsyFont",color: Colors.white,fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
                  SizedBox(width: 110, height: 50,
                      child: ElevatedButton(onPressed: (){},
                        child: const Text("2",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
                  SizedBox(width: 110, height: 50,
                      child: ElevatedButton(onPressed: (){},
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
                      child: ElevatedButton(onPressed: (){},
                        child: const Text("4",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
                  SizedBox(width: 114, height: 56,
                      child: ElevatedButton(onPressed: (){},
                        child: const Text("5",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
                  SizedBox(width: 114, height: 56,
                      child: ElevatedButton(onPressed: (){},
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
                      child: ElevatedButton(onPressed: (){},
                        child: const Text("7",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
                  SizedBox(width: 114, height: 56,
                      child: ElevatedButton(onPressed: (){},
                        child: const Text("8",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
                  SizedBox(width: 114, height: 56,
                      child: ElevatedButton(onPressed: (){},
                        child: const Text("9",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 114, height: 56,
                      child: ElevatedButton(onPressed: (){},
                        child: const Text("0",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
                  SizedBox(width: 114, height: 56,
                      child: ElevatedButton(onPressed: (){},
                        child: const Text(".",style: TextStyle(fontFamily: "PsyFont",color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),)),
                  SizedBox(width: 114, height: 56,
                      child: ElevatedButton(onPressed: (){},
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
