// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:store_app/detal.dart';

class itemdetail extends StatefulWidget {
  final data;
  const itemdetail({super.key, this.data});

  @override
  State<itemdetail> createState() => _itemdetailState();
}

class _itemdetailState extends State<itemdetail> {
  
    String? color ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
            
              margin: EdgeInsets.only(right: 350),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Detal()));
                },
                child: Icon(Icons.arrow_back),
              ),
            ),
           

              Column(
                children: [
                  Stack(
                    children: [
                      Positioned(
                        child: Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color(0xffB81736),
                                Color(0xff281537),
                              ]),
                              borderRadius:
                                  BorderRadiusDirectional.circular(300)),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Image.asset(widget.data['image']),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Color(0xffB81736),
                              Color(0xff281537),
                            ]),
                            borderRadius:
                                BorderRadiusDirectional.circular(300)),
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          '${widget.data['name']} ',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                         decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Color.fromARGB(255, 0, 0, 0),
                              Color.fromARGB(255, 255, 255, 255),
                            ]),
                            borderRadius:
                                BorderRadiusDirectional.circular(300)),
                        margin: EdgeInsets.symmetric(horizontal: 60 , vertical: 20) ,
                        padding: EdgeInsets.only(
                          left: 50 
                        ),
                       
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text('Red ', style: TextStyle(
                                    fontSize: 17 , 
                                    fontWeight: FontWeight.bold , 
                                    color: Colors.white
                                  ),),
                                ),
                                Radio(
                                  activeColor: Colors.red,
                                    value: 'red',
                                    groupValue: color,
                                    onChanged: (val) {
                                      setState(() {
                                        color=val ; 
                                      });
                                    },
                                    
                                    ),
                              ],
                            ),

                              Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text('Black ', style: TextStyle(
                                    fontSize: 17 , 
                                    fontWeight: FontWeight.bold, 
                                    color: Colors.white
                                  ),),
                                ),
                                Radio(
                                  activeColor: const Color.fromARGB(255, 0, 0, 0),
                                    value: 'Black',
                                    groupValue: color,
                                    onChanged: (val) {
                                      setState(() {
                                        color=val ; 
                                      });
                                    },
                                    
                                    ),
                              ],
                            ) ,

                              Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text('Blue ' , style: TextStyle(
                                    fontSize: 17 , 
                                    fontWeight: FontWeight.bold, 
                                    color: Colors.white
                                  ),),
                                ),
                                Radio(
                                  activeColor: const Color.fromARGB(255, 24, 12, 238),
                                    value: 'Blue',
                                    groupValue: color,
                                    onChanged: (val) {
                                      setState(() {
                                        color=val ; 
                                      });
                                    },
                                    
                                    ),
                              ],
                            ) , 

                            

                          ],
                        ),
                      ),

                       Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Color(0xffB81736),
                              Color(0xff281537),
                            ]),
                            borderRadius:
                                BorderRadiusDirectional.circular(300)),
                        margin: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Text(
                            '${widget.data['price']} ',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 247, 227, 7)),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              
          ]
          
        ),
      )
    );
  }
}
