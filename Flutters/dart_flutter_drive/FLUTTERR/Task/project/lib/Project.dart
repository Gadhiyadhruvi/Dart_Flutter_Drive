import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
        body: Column(
          
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: ElevatedButton(child: Text("Task-1"),onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => pro1())));
                },),
              ),
             
              Container(
              child: Image.network("https://media.istockphoto.com/photos/taj-mahal-mausoleum-in-agra-picture-id1146517111?k=20&m=1146517111&s=612x612&w=0&h=vHWfu6TE0R5rG6DJkV42Jxr49aEsLN0ML-ihvtim8kk="),
                width: 200,
                height: 80,
              margin: EdgeInsets.only(bottom: 6),
              ),
            ],
          ),
              
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: ElevatedButton(child: Text("Task-2"),onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => pro2())));
                },),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 7),
                child: Image.network("https://media.istockphoto.com/photos/taj-mahal-mausoleum-in-agra-picture-id1146517111?k=20&m=1146517111&s=612x612&w=0&h=vHWfu6TE0R5rG6DJkV42Jxr49aEsLN0ML-ihvtim8kk="),
                width: 200,
                height: 80,
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: ElevatedButton(child: Text("Task-3"),onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => pro3())));
                },),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 7),
                child: Image.network("https://media.istockphoto.com/photos/taj-mahal-mausoleum-in-agra-picture-id1146517111?k=20&m=1146517111&s=612x612&w=0&h=vHWfu6TE0R5rG6DJkV42Jxr49aEsLN0ML-ihvtim8kk="),
                width: 200,
                height: 80,
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: ElevatedButton(child: Text("Task-4"),onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => pro4())));
                },),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 7),
                child: Image.network("https://media.istockphoto.com/photos/taj-mahal-mausoleum-in-agra-picture-id1146517111?k=20&m=1146517111&s=612x612&w=0&h=vHWfu6TE0R5rG6DJkV42Jxr49aEsLN0ML-ihvtim8kk="),
                width: 200,
                height: 80,
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: ElevatedButton(child: Text("Task-5"),onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => pro5())));
                },),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 7),
                child: Image.network("https://media.istockphoto.com/photos/taj-mahal-mausoleum-in-agra-picture-id1146517111?k=20&m=1146517111&s=612x612&w=0&h=vHWfu6TE0R5rG6DJkV42Jxr49aEsLN0ML-ihvtim8kk="),
                width: 200,
                height: 80,
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: ElevatedButton(child: Text("Task-6"),onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => pro6())));
                },),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 7),
                child: Image.network("https://media.istockphoto.com/photos/taj-mahal-mausoleum-in-agra-picture-id1146517111?k=20&m=1146517111&s=612x612&w=0&h=vHWfu6TE0R5rG6DJkV42Jxr49aEsLN0ML-ihvtim8kk="),
                width: 200,
                height: 80,
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: ElevatedButton(child: Text("Task-7"),onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => pro7())));
                },),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 7),
                child: Image.network("https://media.istockphoto.com/photos/taj-mahal-mausoleum-in-agra-picture-id1146517111?k=20&m=1146517111&s=612x612&w=0&h=vHWfu6TE0R5rG6DJkV42Jxr49aEsLN0ML-ihvtim8kk="),
                width: 200,
                height: 80,
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: ElevatedButton(child: Text("Task-8"),onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => pro8())));
                },),
              ),
              Container(
                
                child: Image.network("https://media.istockphoto.com/photos/taj-mahal-mausoleum-in-agra-picture-id1146517111?k=20&m=1146517111&s=612x612&w=0&h=vHWfu6TE0R5rG6DJkV42Jxr49aEsLN0ML-ihvtim8kk="),
                width: 200,
                height: 80,
              ),
            ],
          ),

              
              ],),
      );
    
  }
}

class pro1 extends StatefulWidget {
  const pro1({super.key});

  @override
  State<pro1> createState() => _pro1State();
}
// for 1 task 
class _pro1State extends State<pro1> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: double.maxFinite,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("Carrier"),
                                  ),
                                  Container(
                                    width: 15,
                                    alignment: Alignment.topRight,
                                    padding: EdgeInsets.only(right: 5, left: 5),
                                    child: Icon(
                                      Icons.wifi,
                                      size: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    padding: EdgeInsets.only(left: 180),
                                    child: Text("1:27 PM"),
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(left: 169),
                                    child: Icon(Icons.battery_full_sharp),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              child: Text(
                                "Row / Col",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              margin: EdgeInsets.only(left: 110, right: 105),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text("Layout"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.arrow_left,
                                            size: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          child: Text("Row"),
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.arrow_right_alt,
                                            size: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text("Main Axis Alignment"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          //alignment: Alignment.centerRight,
                                          child: Icon(
                                            Icons.arrow_left,
                                            size: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          child: Text("Space Around"),
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.arrow_right_alt,
                                            size: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              margin: EdgeInsets.only(left: 110, right: 70),
                              //alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text("Main Axis Size"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.arrow_left_sharp,
                                            size: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          child: Text("Row"),
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.arrow_right_alt,
                                            size: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text("Cross Axis Alignment"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.arrow_left,
                                            size: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          child: Text("Stretch"),
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.arrow_right_alt,
                                            size: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 410,
                  width: double.maxFinite,
                  color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              topLeft: Radius.circular(100)),
                        ),
                        child: Icon(
                          Icons.star,
                          size: 35,
                          color: Colors.yellow,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              topLeft: Radius.circular(100)),
                        ),
                        child: Icon(
                          Icons.star,
                          size: 65,
                          color: Colors.yellow,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              topLeft: Radius.circular(100)),
                        ),
                        child: Icon(
                          Icons.star,
                          size: 35,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class pro2 extends StatefulWidget {
  const pro2({super.key});

  @override
  State<pro2> createState() => _pro2State();
}

class _pro2State extends State<pro2> {
  @override
  Widget build(BuildContext context) {
    return 
   Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(children: [
              Container(
                height: 140,
                width: double.maxFinite,
                color: Colors.pink,
                margin: EdgeInsets.all(5),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5,top:5, bottom:5,right: 5),
                child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Container(
                                 height: 140,
                                 width: 110,
                                
                                 color: Colors.blue,
                            ),
                            Container(
                                  height: 140,
                                 width: 110,
                                  
                                 color: Colors.yellow,
                            ),
                            Container(
                                  height: 140,
                                 width: 110,
                                   
                                 color: Colors.pink,
                            ),
                      ],),
                ),
              ),
              Container(
                height: 140,
                width: double.maxFinite,
                margin: EdgeInsets.all(5),
                color: Colors.yellow,
              ),
              Container(
                height: 140,
                width: double.maxFinite,
                margin: EdgeInsets.all(5),
                color: Colors.blue,
              ),
            ]),
          ),
        ),
     );
  }
}

class pro3 extends StatefulWidget {
  const pro3({super.key});

  @override
  State<pro3> createState() => _pro3State();
}

class _pro3State extends State<pro3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: Container(
            child: Column(children: [
                  Container( 
                              height: 120,
                              width: double.maxFinite,
                              margin: EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                      Container(
                                            margin: EdgeInsets.all(25),
                                            child: Icon(Icons.shopping_cart,color: Color.fromARGB(255, 36, 36, 212),),
                                      ),
                                      Container(
                                            margin: EdgeInsets.all(25),
                                            child: Icon(Icons.shopping_cart,color: Color.fromARGB(255, 36, 36, 213),),
                                      ),
                                      Container(
                                            margin: EdgeInsets.all(25),
                                            child: Icon(Icons.shopping_cart,color: Color.fromARGB(255, 36, 36, 212),),
                                      ),
                                      Container(
                                            margin: EdgeInsets.all(25),
                                            child: Icon(Icons.shopping_cart,color: Color.fromARGB(255, 36, 36, 212),),
                                      ),
                              ],),
                          ),
                  Container(
                              height: 120,
                              width: double.maxFinite,
                              margin: EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              Container(
                                    margin: EdgeInsets.all(25),
                                    child: Icon(Icons.message,color: Color.fromARGB(255, 138, 6, 226),),
                              ),
                              Container(
                                    margin: EdgeInsets.all(25),
                                    child: Icon(Icons.message,color:Color.fromARGB(255, 138, 6, 226),),
                              ),
                              Container(
                                    margin: EdgeInsets.all(25),
                                    child: Icon(Icons.message,color: Color.fromARGB(255, 138, 6, 226),),
                              ),
                              Container(
                                    margin: EdgeInsets.all(25),
                                    child: Icon(Icons.message,color:Color.fromARGB(255, 138, 6, 226),),
                              ),
                       ],),
                  ),
                  Container(
                              height: 120,
                              width: double.maxFinite,
                              margin: EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              Container(
                                    margin: EdgeInsets.all(25),
                                    child: Icon(Icons.remove_red_eye,color: Color.fromARGB(255, 36, 36, 212),),
                              ),
                              Container(
                                    margin: EdgeInsets.all(25),
                                    child: Icon(Icons.remove_red_eye,color: Color.fromARGB(255, 36, 36, 213),),
                              ),
                              Container(
                                    margin: EdgeInsets.all(25),
                                    child: Icon(Icons.remove_red_eye,color: Color.fromARGB(255, 36, 36, 212),),
                              ),
                              Container(
                                    margin: EdgeInsets.all(25),
                                    child: Icon(Icons.remove_red_eye,color: Color.fromARGB(255, 36, 36, 212),),
                              ),
                       ],),
                  ),
                  Container(
                              height: 120,
                              width: double.maxFinite,
                              margin: EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              Container(
                                    margin: EdgeInsets.all(25),
                                    child: Icon(Icons.handshake_rounded,size: 20,color: Color.fromARGB(255, 222, 11, 225),),
                              ),
                              Container(
                                    margin: EdgeInsets.all(25),
                                    child: Icon(Icons.handshake_rounded,size: 20,color: Color.fromARGB(255, 222, 11, 225),),
                              ),
                              Container(
                                    margin: EdgeInsets.all(25),
                                    child: Icon(Icons.handshake_rounded,size: 20,color: Color.fromARGB(255, 222, 11, 225),),
                              ),
                              Container(
                                    margin: EdgeInsets.all(25),
                                    child: Icon(Icons.handshake_rounded,size:20,color: Color.fromARGB(255, 222, 11, 225),),
                              ),
                       ],),
                  ),
                  Container(
                              height: 120,
                              width: double.maxFinite,
                              margin: EdgeInsets.all(5),
                              color: Color.fromARGB(255, 190, 101, 206),
                              child: Row(
                        
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                
                              Container( 
                                    margin: EdgeInsets.all(15),
                                    child: Text("Filled"),
                              ),
                              Container(
                                    margin: EdgeInsets.all(15),
                                    child: Text("Outlined"),
                              ),
                              Container(
                                    margin: EdgeInsets.all(15),
                                    child: Text("Rounded"),
                              ),
                              Container(
                                    margin: EdgeInsets.all(15),
                                    child: Text("Sharp"),
                              ),
                              ],),
                  ),
            ],),
          ),
         );
  }
}

class pro4 extends StatefulWidget {
  const pro4({super.key});

  @override
  State<pro4> createState() => _pro4State();
}

class _pro4State extends State<pro4> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(title: Text("GRID LIST")),
        body: Container(
         child: Column(children: [
               Container(
                      height: 120,
                      width: double.maxFinite,
                      margin: EdgeInsets.all(5),
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.orange,
                          child: Column(children: [
                                Container(
                                  color: Colors.orange,
                                  margin: EdgeInsets.all(30),
                                  child: Icon(Icons.car_crash,size: 20,color: Colors.black,),
                                  ),
                                Container(
                                  child: Text("CAR"),
                                  ),
                            ]),
                          ),
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.orange,
                          child: Column(children: [
                                Container(
                                  color: Colors.orange,
                                  margin: EdgeInsets.all(30),
                                  child: Icon(Icons.bike_scooter,size: 20,color: Colors.black,),
                                  ),
                                Container(
                                  child: Text("Bicycle"),
                                    ),
                              ]),
                          ),
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.orange,
                          child: Column(children: [
                                Container(
                                  color: Colors.orange,
                                  margin: EdgeInsets.all(30),
                                  child: Icon(Icons.bolt,size: 20,color: Colors.black,),
                                  ),
                                Container(
                                  child: Text("BOLT"),
                                  ),
                              ]),
                          ),
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.orange,
                        child: Column(children: [
                          Container(
                            color: Colors.orange,
                            margin: EdgeInsets.all(30),
                            child: Icon(Icons.bus_alert,size: 20,color: Colors.black,),
                          ),
                          Container(
                            child: Text("BUS"),
                          ),
                        ]),
                        ),
                      
                      ],),
                    ),
               Container(
                      height: 120,
                      width: double.maxFinite,
                      margin: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.orange,
                        child: Column(children: [
                          Container(
                            color: Colors.orange,
                            margin: EdgeInsets.all(30),
                            child: Icon(Icons.train,size: 20,color: Colors.black,),
                          ),
                          Container(
                            child: Text("TRAIN"),
                          ),
                        ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.orange,
                        child: Column(children: [
                          Container(
                            color: Colors.orange,
                            margin: EdgeInsets.all(30),
                            child: Icon(Icons.wallet,size: 20,color: Colors.black,),
                          ),
                          Container(
                            child: Text("WALLET"),
                          ),
                        ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.orange,
                        child: Column(children: [
                          Container(
                            color: Colors.orange,
                            margin: EdgeInsets.all(30),
                            child: Icon(Icons.nordic_walking,size: 20,color: Colors.black,),
                          ),
                          Container(
                            child: Text("WALK"),
                          ),
                        ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.orange,
                        child: Column(children: [
                          Container(
                            color: Colors.orange,
                            margin: EdgeInsets.all(30),
                            child: Icon(Icons.dvr,size: 20,color: Colors.black,),
                          ),
                          Container(
                            child: Text("DVR"),
                          ),
                        ]),
                        ),
                      
                      ],),
                    ),
               Container(
                      height: 120,
                      width: double.maxFinite,
                      margin: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.orange,
                        child: Column(children: [
                          Container(
                            color: Colors.orange,
                            margin: EdgeInsets.all(30),
                            child: Icon(Icons.copyright,size: 20,color: Colors.black,),
                          ),
                          Container(
                            child: Text("copyright"),
                          ),
                        ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.orange,
                        child: Column(children: [
                          Container(
                            color: Colors.orange,
                            margin: EdgeInsets.all(30),
                            child: Icon(Icons.ac_unit_sharp,size: 20,color: Colors.black,),
                          ),
                          Container(
                            child: Text("AC"),
                          ),
                        ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.orange,
                        child: Column(children: [
                          Container(
                            color: Colors.orange,
                            margin: EdgeInsets.all(30),
                            child: Icon(Icons.area_chart_rounded,size: 20,color: Colors.black,),
                          ),
                          Container(
                            child: Text("ARRET"),
                          ),
                        ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.orange,
                        child: Column(children: [
                          Container(
                            color: Colors.orange,
                            margin: EdgeInsets.all(30),
                            child: Icon(Icons.no_luggage,size: 20,color: Colors.black,),
                          ),
                          Container(
                            child: Text("NUAGE"),
                          ),
                        ]),
                        ),
                      
                      ],),
                    ),
               Container(
                      height: 120,
                      width: double.maxFinite,
                      margin: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.orange,
                        child: Column(children: [
                          Container(
                            color: Colors.orange,
                            margin: EdgeInsets.all(30),
                            child: Icon(Icons.alarm,size: 20,color: Colors.black,),
                          ),
                          Container(
                            child: Text("ALARM"),
                          ),
                        ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.orange,
                        child: Column(children: [
                          Container(
                            color: Colors.orange,
                            margin: EdgeInsets.all(30),
                            child: Icon(Icons.lock_clock,size: 20,color: Colors.black,),
                          ),
                          Container(
                            child: Text("CLOCK"),
                          ),
                        ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.orange,
                        child: Column(children: [
                          Container(
                          
                            color: Colors.orange,
                            margin: EdgeInsets.all(30),
                            child: Icon(Icons.abc,size: 20,color: Colors.black,),
                          ),
                          Container(
                            child: Text("ABC"),
                          ),
                        ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.orange,
                        child: Column(children: [
                          Container(
                            color: Colors.orange,
                            margin: EdgeInsets.all(30),
                            child: Icon(Icons.track_changes,size: 20,color: Colors.black,),
                          ),
                          Container(
                            child: Text("TRACK"),
                          ),
                        ]),
                        ),
                      
                      ],),
                    ),
                    
                  ]),
                ),
                );
          }
        }

class pro5 extends StatefulWidget {
  const pro5({super.key});

  @override
  State<pro5> createState() => _pro5State();
}

class _pro5State extends State<pro5> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(title: Text("Grid View")),
      body: Container(
          child: Column(children: [
                 Container(
                       height: 120,
                      width: double.maxFinite,
                      margin: EdgeInsets.all(5),
                      child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                             Container(
                                  margin: EdgeInsets.all(5),
                                  color: Colors.yellow,
                                  child: Column(children: [
                                         Container(
                                               margin: EdgeInsets.all(30),
                                               child: Icon(Icons.home,size: 20,color: Colors.black,),
                                         ),
                                         Container(
                                               
                                               child: Text("Home"),
                                         ),
                                  ]),
                             ),
                             Container(
                                  margin: EdgeInsets.all(5),
                                  color: Color.fromARGB(255, 227, 142, 205),
                                  child: Column(children: [
                                         Container(
                                               margin: EdgeInsets.all(30),
                                               child: Icon(Icons.email,size: 20,color: Colors.black,),
                                         ),
                                         Container(
                                               
                                               child: Text("E-Mail"),
                                         ),
                                  ],),
                             ),
                             Container(
                                   margin: EdgeInsets.all(5),
                                   color: Color.fromARGB(255, 223, 59, 196),
                                   child: Column(children: [
                                         Container(
                                               margin: EdgeInsets.all(30),
                                               child: Icon(Icons.alarm,size: 20,color: Colors.black,),
                                         ),
                                         Container(
                                               
                                               child: Text("Alarm"),
                                         ),
                                  ],),
                             ),
                             
                      ],),
                 ),
                 Container(
                         height: 120,
                      width: double.maxFinite,
                      margin: EdgeInsets.all(5),
                        child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                             Container(
                                   margin: EdgeInsets.all(5),
                                  color: Color.fromARGB(255, 235, 17, 170),
                                  child: Column(children: [
                                         Container(
                                               margin: EdgeInsets.all(30),
                                               child: Icon(Icons.wallet,size: 20,color: Colors.black,),
                                         ),
                                         Container(
                                               
                                               child: Text("Wallet"),
                                         ),
                                  ]),
                             ),
                             Container(
                                  margin: EdgeInsets.all(5),
                                  color: Color.fromARGB(255, 231, 112, 205),
                                  child: Column(children: [
                                         Container(
                                               margin: EdgeInsets.all(30),
                                               child: Icon(Icons.backup,size: 20,color: Colors.black,),
                                         ),
                                         Container(
                                               
                                               child: Text("Backup"),
                                         ),
                                  ],),
                             ),
                             Container(
                                   margin: EdgeInsets.all(5),
                                   color: Color.fromARGB(255, 40, 131, 161),
                                   child: Column(children: [
                                         Container(
                                               margin: EdgeInsets.all(30),                                              
                                               child: Icon(Icons.book,size: 20,color: Colors.black,),
                                         ),
                                         Container(
                                               
                                               child: Text("Book"),
                                         ),
                                  ],),
                             ),
                             
                      ],),
                 
                 ),
                 Container(
                          height: 120,
                      width: double.maxFinite,
                      margin: EdgeInsets.all(5),
                         child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                             Container(
                                   margin: EdgeInsets.all(5),
                                  color: Color.fromARGB(255, 222, 38, 167),
                                  child: Column(children: [
                                         Container(
                                               margin: EdgeInsets.all(30),
                                               child: Icon(Icons.camera,size: 20,color: Colors.black,),
                                         ),
                                         Container(
                                               
                                               child: Text("Camera"),
                                         ),
                                  ]),
                             ),
                             Container(
                                  margin: EdgeInsets.all(5),
                                  color: Colors.pink,
                                  child: Column(children: [
                                         Container(
                                               margin: EdgeInsets.all(30),
                                               child: Icon(Icons.person,size: 20,color: Colors.black,),
                                         ),
                                         Container(
                                               
                                               child: Text("Person"),
                                         ),
                                  ],),
                             ),
                             Container(
                                   margin: EdgeInsets.all(5),
                                   color: Colors.cyan,
                                   child: Column(children: [
                                         Container(
                                               margin: EdgeInsets.all(30),
                                               child: Icon(Icons.print,size: 20,color: Colors.black,),
                                         ),
                                         Container(
                                               
                                               child: Text("Print"),
                                         ),
                                  ],),
                             ),
                             
                      ],),
                 
                 ),
                 Container(
                        height: 120,
                      width: double.maxFinite,
                      margin: EdgeInsets.all(5),
                        child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                             Container(
                                   margin: EdgeInsets.all(5),
                                  color: Color.fromARGB(255, 172, 41, 146),
                                  child: Column(children: [
                                         Container(
                                               margin: EdgeInsets.all(30),
                                               child: Icon(Icons.phone,size: 20,color: Colors.black,),
                                         ),
                                         Container(
                                               
                                               child: Text("Phone"),
                                         ),
                                  ]),
                             ),
                             Container(
                                   margin: EdgeInsets.all(5),
                                  color: Colors.purpleAccent,
                                  child: Column(children: [
                                         Container(
                                               margin: EdgeInsets.all(30),
                                               child: Icon(Icons.notes,size: 20,color: Colors.black,),
                                         ),
                                         Container(
                                               
                                               child: Text("Notes"),
                                         ),
                                  ],),
                             ),
                             Container(
                                   margin: EdgeInsets.all(5),
                                   color: Color.fromARGB(255, 251, 64, 251),
                                   child: Column(children: [
                                         Container(
                                               margin: EdgeInsets.all(30),
                                               child: Icon(Icons.music_note,size: 20,color: Colors.black,),
                                         ),
                                         Container(
                                               
                                               child: Text("Music"),
                                         ),
                                  ],),
                             ),
                             
                      ],),
                 
                 ),
          ],
          ),
      ),
    );
  }
  }

  class pro6 extends StatefulWidget {
  const pro6({super.key});

  @override
  State<pro6> createState() => _pro6State();
}

class _pro6State extends State<pro6> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        body: Container(
                    child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                                  Container(
                                           decoration: BoxDecoration(
                                           color: Colors.pinkAccent,
                                           borderRadius:BorderRadius.only(bottomRight: Radius.circular(100),topRight: Radius.circular(100),bottomLeft: Radius.circular(100),topLeft: Radius.circular(100)),
                                           ),
                                           child: Icon(Icons.person,color: Colors.pink,size: 100,),
                                  ),
                                  Container(
                                           
                                           decoration: BoxDecoration(
                                           color: Colors.cyanAccent,
                                           borderRadius:BorderRadius.only(bottomRight: Radius.circular(100),topRight: Radius.circular(100),bottomLeft: Radius.circular(100),topLeft: Radius.circular(100)),
                                           ),
                                           child: Icon(Icons.person,color: Colors.cyan,size: 100,),
                                  ),
                                  Container(
                                           decoration: BoxDecoration(
                                           color: Color.fromARGB(255, 186, 140, 124),
                                           borderRadius:BorderRadius.only(bottomRight: Radius.circular(100),topRight: Radius.circular(100),bottomLeft: Radius.circular(100),topLeft: Radius.circular(100)),
                                           ),
                                           child: Icon(Icons.person,color: Colors.brown,size: 100,),
                                  ),
                                  Container(
                                           decoration: BoxDecoration(
                                           color: Colors.deepPurpleAccent,
                                           borderRadius:BorderRadius.only(bottomRight: Radius.circular(100),topRight: Radius.circular(100),bottomLeft: Radius.circular(100),topLeft: Radius.circular(100)),
                                           ),
                                           child: Icon(Icons.person,color: Colors.deepPurple,size: 100,),
                                  ),
                            
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                  
                                  Container(
                                           margin: EdgeInsets.only(top: 60),
                                           decoration: BoxDecoration(
                                           color: Colors.pinkAccent,
                                           borderRadius:BorderRadius.only(bottomRight: Radius.circular(100),topRight: Radius.circular(100),bottomLeft: Radius.circular(100),topLeft: Radius.circular(100)),
                                           ),
                                           child: Icon(Icons.person,color: Colors.pink,size: 100,),
                                  ),
                                  Container(
                                            margin: EdgeInsets.only(top: 60),
                                           decoration: BoxDecoration(
                                           color: Colors.cyanAccent,
                                           borderRadius:BorderRadius.only(bottomRight: Radius.circular(100),topRight: Radius.circular(100),bottomLeft: Radius.circular(100),topLeft: Radius.circular(100)),
                                           ),
                                           child: Icon(Icons.person,color: Colors.cyan,size: 100,),
                                  ),
                                  Container(
                                            margin: EdgeInsets.only(top: 60),
                                           decoration: BoxDecoration(
                                           color: Color.fromARGB(255, 186, 140, 124),
                                           borderRadius:BorderRadius.only(bottomRight: Radius.circular(100),topRight: Radius.circular(100),bottomLeft: Radius.circular(100),topLeft: Radius.circular(100)),
                                           ),
                                           child: Icon(Icons.person,color: Colors.brown,size: 100,),
                                  
                                  ),
                                  Container( margin: EdgeInsets.only(top: 60),
                                           decoration: BoxDecoration(
                                           color: Colors.deepPurpleAccent,
                                           borderRadius:BorderRadius.only(bottomRight: Radius.circular(100),topRight: Radius.circular(100),bottomLeft: Radius.circular(100),topLeft: Radius.circular(100)),
                                           ),
                                           child: Icon(Icons.person,color: Colors.deepPurple,size: 100,),
                                  ),
                           ],)    
          ],),
          ),
    );
  }
}

class pro7 extends StatefulWidget {
  const pro7({super.key});

  @override
  State<pro7> createState() => _pro7State();
}

class _pro7State extends State<pro7> {
  @override
  Widget build(BuildContext context) {
   return  Scaffold(   
          body: Container(
                      margin: EdgeInsets.all(5),
                      child: Row(children: [
                                 Container(
                                          margin: EdgeInsets.all(5),
                                          child: Column(children: [
                                                        Container(
                                                                 margin: EdgeInsets.only(bottom: 3),
                                                                 height: 150,
                                                                 width: 200,
                                                                 color: Colors.greenAccent,
                                                        ),
                                                        Container(
                                                                  child: Row(children: [
                                                                             Container(
                                                                                      margin: EdgeInsets.only(right: 3),
                                                                                      height: 150,
                                                                                      width: 50,
                                                                                      color: Colors.cyan,
                                                                             ),
                                                                             Container(
                                                                                      height: 150,
                                                                                      width: 150,
                                                                                      color: Color.fromARGB(255, 225, 17, 17),
                                                                             ),
                                                                  ],),
                                                        ),
                                                        Container(
                                                                 margin: EdgeInsets.only(top: 3),
                                                                 height: 250,
                                                                 width: 200,
                                                                 color: Colors.pink,
                                                        ),
                                                        Container(
                                                                 margin: EdgeInsets.only(top: 3),
                                                                 height: 100,
                                                                 width: 200,
                                                                 color: Colors.cyan,
                                                        ),
                                          ],),
                                 ),
                                 Container(
                                          margin: EdgeInsets.all(5),
                                          child: Column(children: [
                                                        Container(
                                                                 height: 330,
                                                                 width: 112,
                                                                 margin: EdgeInsets.only(bottom: 3),
                                                                 color: Colors.pinkAccent,
                                                        ),
                                                        Container(
                                                                  child: Row(children: [
                                                                             Container(
                                                                                       height: 200,
                                                                                       width: 55,
                                                                                       margin: EdgeInsets.only(right: 3),
                                                                                       color: Colors.greenAccent,
                                                                             ),
                                                                             Container(
                                                                                       child: Column(children: [
                                                                                                     Container(
                                                                                                              height: 50,
                                                                                                              width: 55,
                                                                                                              margin: EdgeInsets.only(bottom: 3),
                                                                                                              color: Colors.cyan,
                                                                                                     ),
                                                                                                     Container(
                                                                                                              height: 150,
                                                                                                              width: 55,
                                                                                                              color: Color.fromARGB(255, 225, 17, 17),
                                                                                                     ),
                                                                                       ],),
                                                                             ),
                                                                  ],),
                                                        ),
                                                        Container(
                                                                height: 120,
                                                                width: 112,
                                                                margin: EdgeInsets.only(top: 3),
                                                                color: Colors.greenAccent,
                                                        ),
                                          ],),
                                 ),
                                 Container(
                                           margin: EdgeInsets.all(5),
                                           child: Column(children: [
                                                         Container(
                                                                   child: Row(children: [
                                                                              Container(
                                                                                       height: 500,
                                                                                       width: 70,
                                                                                       margin: EdgeInsets.only(right: 3),
                                                                                       color: Colors.greenAccent,
                                                                              ),
                                                                              Container(
                                                                                        child: Column(children: [
                                                                                                      Container(
                                                                                                               height: 200,
                                                                                                               width: 70,
                                                                                                               color: Colors.cyan,
                                                                                                      ),
                                                                                                      Container(
                                                                                                               height: 300,
                                                                                                               width: 70,
                                                                                                               margin: EdgeInsets.only(top: 3),
                                                                                                               color: Color.fromARGB(255, 225, 17, 17),
                                                                                                      ),
                                                                                        ],),
                                                                              ),
                                                                   ],),
                                                         ),
                                                         Container(
                                                                  height: 150,
                                                                  width: 140,
                                                                  margin: EdgeInsets.only(top: 3),
                                                                  color: Colors.pink,
                                                         ),
                                           ],),
                                 ),
                      ],),)
          );
  }
}

class pro8 extends StatefulWidget {
  const pro8({super.key});

  @override
  State<pro8> createState() => _pro8State();
}

class _pro8State extends State<pro8> {
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
        body: Container(
              decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Colors.blue[100]
                           ),
             child: Column(children: [
                    Container(
                          height: 70,
                          width: double.maxFinite,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 300,right: 300),
                           decoration: BoxDecoration(
                           color: Color.fromARGB(255, 223, 144, 170),
                           border: Border.all(color: Colors.cyan),
                           ),
                          child: Text("  Strawberry Pavlova  ",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold, color: Color.fromARGB(255, 116, 227, 132),),),
                    ),
                    Container(
                          height: 150,
                          width: double.maxFinite,
                          alignment: Alignment.center,
                           margin: EdgeInsets.only(left: 300,right: 300),
                          child: Text(" Pavlova is a merineue-based dessert named after the Russian ballerina Anna Pavlova fealures a crisp crust and soft,light inside,lopped with fruit and whipped cream."),
                    ),
                    Container(
                          height: 55,
                          width: double.maxFinite,
                          color: Colors.deepOrange,
                           margin: EdgeInsets.only(left: 300,right: 300),
                          alignment: Alignment.center,
                          child: Row(children: [
                                 Container(
                                       padding: EdgeInsets.only(left: 150,right: 17),
                                       child: Text(" ***** "),
                                 ),
                                 Container(
                                        padding: EdgeInsets.only(right: 150),
                                        child: Text("170 Reviews"),
                                 ),
                          ],),
                    ),
                    Container(
                          height: 125,
                          width: double.maxFinite,
                           margin: EdgeInsets.only(left: 300,right: 300),
                          alignment: Alignment.center,
                          child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                 Container(
                                       alignment: Alignment.center,
                                       child: Column(children: [
                                              Container(
                                                    child: Icon(Icons.mail,size: 30,),
                                              ),
                                              Container(
                                                    child: Text("Mail"),
                                              ),
                                              Container(
                                                    child: Text(" 25 min"),
                                              ),
                                       ],),
                                 ),
                                 Container(
                                       alignment: Alignment.center,
                                       child: Column(children: [
                                              Container(
                                                     child: Icon(Icons.cookie_rounded,size: 30,),
                                              ),
                                              Container(
                                                      child: Text("Cookie"),
                                              ),
                                              Container(
                                                       child: Text(" 1 h"),
                                              ),
                                       ],),
                                  ),
                                 Container(
                                       alignment: Alignment.center,
                                       child: Column(children: [
                                              Container(
                                                     child: Icon(Icons.feed,size: 30,),
                                              ),
                                              Container(
                                                      child: Text("Feeds"),
                                              ),
                                              Container(
                                                       child: Text(" 4 - b"),
                                              ),
                                       ],),
                                 ),
                          ],),
                    ),
             ],),),
        );
  }
}
      