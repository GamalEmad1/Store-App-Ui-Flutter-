// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:store_app/itemdetail.dart';

class Detal extends StatefulWidget {
  const Detal({super.key});

  @override
  State<Detal> createState() => _DetalState();
}

class _DetalState extends State<Detal> {
  List items = [
    {"name": "سماعه لاسلكيه", "image": "images/airpod.png", "price": "399\$"  , 'detail' : " سماعه لاسلكيه من شركه ابل "},
    {"name": " كاميرا مراقبه", "image": "images/camera.png", "price": "99\$"},
    {"name": "نظاره ابل ", "image": "images/class.png", "price": "299\$"},
    {"name": "سماعات الراس ", "image": "images/headset.png", "price": "399\$"},
    {"name": "هاتف اندرويد ", "image": "images/mobile.png", "price": "799\$"},
    {"name": " مكبر صوت  ", "image": "images/speaker.png", "price": "500\$"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color(0xffB81736),
              Color(0xff281537),
            ]),
          ),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => itemdetail(data: items[index])));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white30,
                      boxShadow: List.filled(10,
                          BoxShadow(offset: Offset.infinite, blurRadius: 5)),
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                  child: Row(
                    children: [
                      Image.asset(
                        "${items[index]['image']}",
                        width: 200,
                      ),
                      Container(
                        height: 60,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50),
                        child: Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(30),
                                  gradient: const LinearGradient(colors: [
                                    Color(0xffB81736),
                                    Color(0xff281537),
                                  ]),
                                ),
                                child: Text(
                                  '${items[index]['name']}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                              width: 51,
                            ),
                            Text(
                              '${items[index]['price']}',
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 216, 228, 35),
                                  fontSize: 20 ,
                                  fontWeight:FontWeight.bold
                                  
                                  ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
