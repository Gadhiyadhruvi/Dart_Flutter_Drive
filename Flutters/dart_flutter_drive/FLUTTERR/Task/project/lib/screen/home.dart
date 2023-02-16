import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      
      children: [
               Container(
                         margin: EdgeInsets.only(top: 30),
                         child: Text("FOOD  EXPRESS",style: TextStyle(color: Color.fromARGB(255, 80, 212, 230),fontSize: 30,fontWeight: FontWeight.bold),),
               ),
               Container(
                         height:400,
                         width: double.maxFinite,
                         child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzLAyOicIWbKKJYvlV6lz1JRKsxe8nk-rEgw&usqp=CAU"),
               ),
               Container(
                         child: Text("Delivery to your Home",style: TextStyle(color: Color.fromARGB(255, 33, 131, 223),fontSize: 30,fontWeight: FontWeight.bold),),
               ),
               Container(
                         alignment: Alignment.center,
                           margin: EdgeInsets.only(left: 30,right: 30,top: 10),
                          child: Text(" Pavlova is a merineue-based dessert named after the Russian ballerina Anna Pavlova fealures a crisp crust and soft,light inside,lopped with fruit and whipped cream.",style: TextStyle(color: Color.fromARGB(255, 10, 67, 119),fontSize: 20,fontWeight: FontWeight.bold),),
                   ),
              
               Container(
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                    Container(
                                              child: Icon(Icons.square,size: 10,),
                                    ),
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                         ],),
               ),
               Container(
                        child: Row(children: [
                                   Container(
                                            height: 30,
                                            width: 80,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(right: 210,top: 30),
                                            decoration: BoxDecoration(
                                              color: Colors.greenAccent,
                                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10)),
                                            ),
                                   child: Text("SKIP",style: TextStyle(color: Colors.blueAccent,fontSize: 20,
                                   ),),
                                   ),
                                   GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (((context) => Screen1()))));
                                    },
                                   
                                  child: Container(
                                    height: 30,
                                            width: 80,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(left: 132,top: 30),
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(255, 9, 68, 40),
                                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
                                            ),
                                   child: Text("NEXT",style: TextStyle(color: Color.fromARGB(255, 111, 152, 223),fontSize: 20,
                                   ),),
                                   
                                   ),),
                        ],),
               ),
             ],
    ));
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        body: Column(
      
      children: [
               Container(
                         margin: EdgeInsets.only(top: 30),
                         child: Text("FOOD  EXPRESS",style: TextStyle(color: Color.fromARGB(255, 80, 212, 230),fontSize: 30,fontWeight: FontWeight.bold),),
               ),
               Container(
                         height:400,
                         width: double.maxFinite,
                         margin: EdgeInsets.only(bottom: 30,top: 30),
                         child: Image.network("https://nationaltoday.com/wp-content/uploads/2021/07/shutterstock_1518533924-min.jpg"),
               ),
               Container(
                         child: Text("Prepared by Experts",style: TextStyle(color: Color.fromARGB(255, 33, 131, 223),fontSize: 30,fontWeight: FontWeight.bold),),
               ),
               Container(
                         alignment: Alignment.center,
                           margin: EdgeInsets.only(left: 30,right: 30,top: 10),
                          child: Text("Lorem ipsum is simply dummy text of the printing and typesetting. ",style: TextStyle(color: Color.fromARGB(255, 10, 67, 119),fontSize: 20,fontWeight: FontWeight.bold),),
                   ),
              
               Container(
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.square,size: 10,),
                                    ),
                                    Container(
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                         ],),
               ),
               Container(
                        child: Row(children: [
                                   GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (((context) => HomeScreen()))));
                                    },
                                   
                                  child: 
                                   Container(
                                            height: 30,
                                            width: 80,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(right: 210,top: 30),
                                            decoration: BoxDecoration(
                                              color: Colors.greenAccent,
                                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10)),
                                            ),
                                   child: Text("SKIP",style: TextStyle(color: Colors.blueAccent,fontSize: 20,
                                   ),),
                                   ),),
                                   GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (((context) => Screen2()))));
                                    },
                                   
                                  child: Container(
                                    height: 30,
                                            width: 80,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(left: 132,top: 30),
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(255, 9, 68, 40),
                                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
                                            ),
                                   child: Text("NEXT",style: TextStyle(color: Color.fromARGB(255, 111, 152, 223),fontSize: 20,
                                   ),),
                                   
                                   ),),
                        ],),
               ),
             ],
    ));
  }
}

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        body: Column(
      
      children: [
               Container(
                         margin: EdgeInsets.only(top: 30),
                         child: Text("FOOD  EXPRESS",style: TextStyle(color: Color.fromARGB(255, 80, 212, 230),fontSize: 30,fontWeight: FontWeight.bold),),
               ),
               Container(
                         height:400,
                         width: double.maxFinite,
                         margin: EdgeInsets.only(bottom: 30,top: 30),
                         child: Image.network("https://cdn.cdnparenting.com/articles/2018/12/14121244/1143416498-H.jpg"),
               ),
               Container(
                         child: Text("Enjoy with Everyone",style: TextStyle(color: Color.fromARGB(255, 33, 131, 223),fontSize: 30,fontWeight: FontWeight.bold),),
               ),
               Container(
                         alignment: Alignment.center,
                           margin: EdgeInsets.only(left: 30,right: 30,top: 10),
                          child: Text("Lorem ipsum is simply dummy text of the printing and typesetting. ",style: TextStyle(color: Color.fromARGB(255, 10, 67, 119),fontSize: 20,fontWeight: FontWeight.bold),),
                   ),
              
               Container(
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                    Container(
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.square,size: 10,),
                                    ),
                         ],),
               ),
              GestureDetector(
                            onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (((context) => HomeScreen()))));
                                    },
                               child: 
                                   Container(
                                            height: 50,
                                            width: 120,
                                            alignment: Alignment.center,
                                            
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(255, 14, 7, 78),
                                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
                                            ),
                                   child: Text("LET's GO",style: TextStyle(color: Color.fromARGB(255, 236, 238, 241),fontSize: 15,
                                   ),),
                                   ),),      
                        ],),
    );
  }
}

/////////////////////////   Task 2   ////////////////////// 

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
                    Container(
                              margin: EdgeInsets.only(top: 30),
                              child: Text("ALODOKTER" ,style: TextStyle(color: Color.fromARGB(255, 46, 27, 221),fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                              margin: EdgeInsets.only(bottom: 30,top: 15),
                              child: Text("Chat Dokter Pilihan Kami",style: TextStyle(color: Color.fromARGB(255, 69, 50, 237),fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                               height:350,
                               width: double.maxFinite,
                               child: Image.network("https://technode.global/wp-content/uploads/2021/06/stethoscope-2617701_1920.jpg"),
               
                    ),
                    Container(
                               margin: EdgeInsets.only(bottom: 30,top: 30),
                               child: Text("Dapatkan fhdd rnd hje ehjs edebfj sdie jddnjnf ffnbs dn rfu sryue hfb bduj.",style: TextStyle(color: Color.fromARGB(255, 33, 131, 223),fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                              child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.square,size: 10,),
                                    ),
                                    Container(
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                     Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),       
                         ],),
                    ),
                  
                              GestureDetector(
                            onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (((context) => home1()))));
                                    },
                               child: 
                                   Container(
                                            height: 50,
                                            width: 120,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(top: 30),
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(255, 14, 7, 78),
                                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
                                            ),
                                   child: Text("SELANJUTNYA",style: TextStyle(color: Color.fromARGB(255, 236, 238, 241),fontSize: 15,
                                   ),),
                                   ),      
              
                    ),
          ],
        ));
  }
}

class home1 extends StatefulWidget {
  const home1({super.key});

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        body: Column(
          children: [
                    Container(
                               margin: EdgeInsets.only(top: 30),
                              child: Text("ALODOKTER" ,style: TextStyle(color: Color.fromARGB(255, 46, 27, 221),fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                             margin: EdgeInsets.only(bottom: 30,top: 15),
                             child: Text("Buat Janji Dengan Dokter",style: TextStyle(color: Color.fromARGB(255, 69, 50, 237),fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                               height:350,
                               width: double.maxFinite,
                               child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNiJNbGvTjYJvPq5GwRrBLzd2P6XyNUitYIXk-hwvJg23L8YdNLKKR8H6VdYUS9_eQsac&usqp=CAU"),
               
                    ),
                    Container(
                               margin: EdgeInsets.only(bottom: 30,top: 30),
                               child: Text("Dapatkan fhdd rnd hje ehjs edebfj sdie jddnjnf ffnbs dn rfu sryue hfb bduj.",style: TextStyle(color: Color.fromARGB(255, 33, 131, 223),fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                              child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                    Container(
                                              child: Icon(Icons.square,size: 10,),
                                    ),
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                     Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),       
                         ],),
                    ),
                  
                              GestureDetector(
                            onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (((context) => home2()))));
                                    },
                               child: 
                                   Container(
                                            height: 50,
                                            width: 120,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(top: 30),
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(255, 14, 7, 78),
                                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
                                            ),
                                   child: Text("SELANJUTNYA",style: TextStyle(color: Color.fromARGB(255, 236, 238, 241),fontSize: 15,
                                   ),),
                                   ),      
              
                    ),
          ],
        ));
  }
}

class home2 extends StatefulWidget {
  const home2({super.key});

  @override
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        body: Column(
          children: [
                    Container(
                               margin: EdgeInsets.only(top: 30),
                              child: Text("ALODOKTER" ,style: TextStyle(color: Color.fromARGB(255, 46, 27, 221),fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                              margin: EdgeInsets.only(bottom: 30,top: 15),
                              child: Text("Jelajahi Informasi",style: TextStyle(color: Color.fromARGB(255, 69, 50, 237),fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                               height:350,
                               width: double.maxFinite,
                               child: Image.network("data:image/jpeg;base64,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"),
               
                    ),
                    Container(
                               margin: EdgeInsets.only(bottom: 30,top: 30),
                               child: Text("Dapatkan fhdd rnd hje ehjs edebfj sdie jddnjnf ffnbs dn rfu sryue hfb bduj.",style: TextStyle(color: Color.fromARGB(255, 33, 131, 223),fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                              child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                    Container(
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.square,size: 10,),
                                    ),
                                     Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),       
                         ],),
                    ),
                  
                              GestureDetector(
                            onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (((context) => home3()))));
                                    },
                               child: 
                                   Container(
                                            height: 50,
                                            width: 120,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(top: 30),
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(255, 14, 7, 78),
                                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
                                            ),
                                   child: Text("SELANJUTNYA",style: TextStyle(color: Color.fromARGB(255, 236, 238, 241),fontSize: 15,
                                   ),),
                                   ),      
              
                    ),
          ],
        ));
  }
}

class home3 extends StatefulWidget {
  const home3({super.key});

  @override
  State<home3> createState() => _home3State();
}

class _home3State extends State<home3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
                    Container(
                               margin: EdgeInsets.only(top: 30),
                              child: Text("ALODOKTER" ,style: TextStyle(color: Color.fromARGB(255, 46, 27, 221),fontSize: 30,fontWeight: FontWeight.bold),),
                        ),
                    Container(
                              margin: EdgeInsets.only(bottom: 30,top: 15),
                              child: Text("Proteksi Alodokter",style: TextStyle(color: Color.fromARGB(255, 69, 50, 237),fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                               height:350,
                               width: double.maxFinite,
                               child: Image.network("https://telko.id/wp-content/uploads/2022/06/Image-Press-Release-Aloproteksi-Plus-2022-B2-scaled.jpg"),
               
                    ),
                    Container(
                               margin: EdgeInsets.only(bottom: 30,top: 30),
                               child: Text("Dapatkan fhdd rnd hje ehjs edebfj sdie jddnjnf ffnbs dn rfu sryue hfb bduj.",style: TextStyle(color: Color.fromARGB(255, 33, 131, 223),fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                              child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.square,size: 10,),
                                    ),
                                    Container(
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                     Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),       
                         ],),
                    ),
                  
                              GestureDetector(
                            onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (((context) => HomeScreen1()))));
                                    },
                               child: 
                                   Container(
                                            height: 50,
                                            width: 120,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(top: 30),
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(255, 14, 7, 78),
                                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
                                            ),
                                   child: Text("SELANJUTNYA",style: TextStyle(color: Color.fromARGB(255, 236, 238, 241),fontSize: 15,
                                   ),),
                                   ),      
              
                    ),
          ],
        ));
  }
}

//////////////////////////// Task 3  ///////////////////

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: Column(children: [
                        Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(top: 30,left: 20),
                                  child: Text("Skip", style: TextStyle(color: Color.fromARGB(255, 66, 117, 194),fontSize: 15,),),
                        ),
                        Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(top: 30),
                                  child: Text("FIND RESTAURANT", style: TextStyle(color: Color.fromARGB(255, 25, 210, 191),fontSize: 35,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                                 alignment: Alignment.center,
                                 margin: EdgeInsets.only(bottom: 30,top: 30,left: 40,right: 40),
                                 child: Text("Dapatkan fhn sfgfu vbhg vhhv cu zegrrse hjgfty cg fhdd rnd hje ehjs edebfj sdie jddnjnf ffnbs dn rfu sryue hfb bduj.",style: TextStyle(color: Color.fromARGB(255, 16, 16, 17),fontSize: 15,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                                 child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,color: Color.fromARGB(255, 25, 210, 191),),
                                    ),
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                     Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),       
                         ],),
                        ),
                        GestureDetector(
                              onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (((context) => Page1()))));
                                    },
                               child: 
                                  Container(
                                  height:400,
                               width: double.maxFinite,
                                 margin: EdgeInsets.only(top: 20),
                               
                               child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHJEGnajs9Id-evp5J34eZAq4dynbZf8qpnQ&usqp=CAU",fit: BoxFit.cover,
                               ),
                          ),
                        ),
                 ],),
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: Column(children: [
                        Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(top: 30,left: 20),
                                  child: Text("Skip", style: TextStyle(color: Color.fromARGB(255, 66, 117, 194),fontSize: 15,),),
                        ),
                        Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(top: 30),
                                  child: Text("PICK THE BEST", style: TextStyle(color: Color.fromARGB(255, 25, 210, 191),fontSize: 35,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                                 alignment: Alignment.center,
                                 margin: EdgeInsets.only(bottom: 30,top: 30,left: 40,right: 40),
                                 child: Text("Dapatkan fhn sfgfu vbhg vhhv cu zegrrse hjgfty cg fhdd rnd hje ehjs edebfj sdie jddnjnf ffnbs dn rfu sryue hfb bduj.",style: TextStyle(color: Color.fromARGB(255, 16, 16, 17),fontSize: 15,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                                 child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,color: Color.fromARGB(255, 25, 210, 191),),
                                    ),
                                     Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),       
                         ],),
                        ),
                        GestureDetector(
                              onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (((context) => Page2()))));
                                    },
                               child: 
                                  Container(
                                  height:400,
                               width: double.maxFinite,
                               margin: EdgeInsets.only(top: 20),
                               
                               child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkwzQRqF6EOkxgrzWYj8DdQFMOWEZSqNE4-A&usqp=CAU",fit: BoxFit.fill,),
                          ),
                        ),
                 ],),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: Column(children: [
                        
                        Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(top: 30),
                                  child: Text("CHOOSE YOUR MEAL ", style: TextStyle(color: Color.fromARGB(255, 25, 210, 191),fontSize: 35,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                                 alignment: Alignment.center,
                                 margin: EdgeInsets.only(bottom: 30,top: 30,left: 40,right: 40),
                                 child: Text("Dapatkan fhn sfgfu vbhg vhhv cu zegrrse hjgfty cg fhdd rnd hje ehjs edebfj sdie jddnjnf ffnbs dn rfu sryue hfb bduj.",style: TextStyle(color: Color.fromARGB(255, 16, 16, 17),fontSize: 15,fontWeight: FontWeight.bold),),
                        ),GestureDetector(
                              onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (((context) => HomeScreen2()))));
                                    },
                               child: 
                        
                        Container(
                                  height: 50,
                                            width: 120,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(top: 30),
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(255, 25, 210, 191),
                                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
                                            ),
                                   child: Text("GET STARTED",style: TextStyle(color: Color.fromARGB(255, 236, 238, 241),fontSize: 15,
                                   ),),
                        ),),
                                  Container(
                                  height:400,
                               width: double.maxFinite,
                              
                               margin: EdgeInsets.only(top: 20),
                               child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnbtC2BNgJleqNqR3qkTVqLF6mg29QO6i3Ug&usqp=CAU",fit: BoxFit.cover,),
                          ),
                        
                 ],),
    );
  }
}

//////////////////////////////  Task 4  /////////

class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({super.key});

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      
      children: [
               
               Container(
                         height:400,
                         width: double.maxFinite,
                         child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmLm_zLA2-iEF0tIKM4lkq3fBnGHip8sF2bg&usqp=CAU",fit: BoxFit.cover,),
               ),
               Container(
                         child: Text("A Taste Of Exotic India",style: TextStyle(color: Color.fromARGB(255, 33, 131, 223),fontSize: 30,fontWeight: FontWeight.bold),),
               ),
               Container(
                         alignment: Alignment.center,
                           margin: EdgeInsets.only(left: 30,right: 30,top: 10),
                          child: Text(" Pavlova is a merineue-based dessert named after the Russian ballerina Anna Pavlova fealures a crisp crust and soft,light inside,lopped with fruit and whipped cream.",style: TextStyle(color: Color.fromARGB(255, 10, 67, 119),fontSize: 20,fontWeight: FontWeight.bold),),
                   ),
              
               Container(
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.square,size: 10,),
                                    ),
                                    Container(
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                         ],),
               ),
               Container(
                        child: Row(children: [
                                   Container(
                                            height: 30,
                                            width: 80,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(right: 210,top: 30),
                                            decoration: BoxDecoration(
                                              color: Colors.greenAccent,
                                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10)),
                                            ),
                                   child: Text("SKIP",style: TextStyle(color: Colors.blueAccent,fontSize: 20,
                                   ),),
                                   ),
                                   GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (((context) => page1()))));
                                    },
                                   
                                  child: Container(
                                    height: 30,
                                            width: 80,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(left: 132,top: 30),
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(255, 9, 68, 40),
                                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
                                            ),
                                   child: Text("NEXT",style: TextStyle(color: Color.fromARGB(255, 111, 152, 223),fontSize: 20,
                                   ),),
                                   
                                   ),),
                        ],),
               ),
             ],
    ));
  }
}

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        body: Column(
      
      children: [
               
               Container(
                         height:400,
                         width: double.maxFinite,
                         margin: EdgeInsets.only(bottom: 30,top: 30),
                         child: Image.network("data:image/jpeg;base64,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",fit: BoxFit.cover,),
               ),
               Container(
                         child: Text("Delivering Happiness",style: TextStyle(color: Color.fromARGB(255, 33, 131, 223),fontSize: 30,fontWeight: FontWeight.bold),),
               ),
               Container(
                         alignment: Alignment.center,
                           margin: EdgeInsets.only(left: 30,right: 30,top: 10),
                          child: Text("Lorem ipsum is simply dummy text of the printing and typesetting. ",style: TextStyle(color: Color.fromARGB(255, 10, 67, 119),fontSize: 20,fontWeight: FontWeight.bold),),
                   ),
              
               Container(
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.square,size: 10,),
                                    ),
                                    Container(
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                         ],),
               ),
               Container(
                        child: Row(children: [
                                   GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (((context) => HomeScreen3()))));
                                    },
                                   
                                  child: 
                                   Container(
                                            height: 30,
                                            width: 80,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(right: 210,top: 30),
                                            decoration: BoxDecoration(
                                              color: Colors.greenAccent,
                                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10)),
                                            ),
                                   child: Text("SKIP",style: TextStyle(color: Colors.blueAccent,fontSize: 20,
                                   ),),
                                   ),),
                                   GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (((context) => page2()))));
                                    },
                                   
                                  child: Container(
                                    height: 30,
                                            width: 80,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(left: 132,top: 30),
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(255, 9, 68, 40),
                                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
                                            ),
                                   child: Text("NEXT",style: TextStyle(color: Color.fromARGB(255, 111, 152, 223),fontSize: 20,
                                   ),),
                                   
                                   ),),
                        ],),
               ),
             ],
    ));
  }
}

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        body: Column(
      
      children: [
               
               Container(
                         height:400,
                         width: double.maxFinite,
                         margin: EdgeInsets.only(bottom: 30,top: 30),
                         child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrGYulvE5HcLjvrgMYq-722n3VsKVKAJC4_g&usqp=CAU",fit: BoxFit.cover,),
               ),
               Container(
                         child: Text("Hot And Spicy Foods",style: TextStyle(color: Color.fromARGB(255, 33, 131, 223),fontSize: 30,fontWeight: FontWeight.bold),),
               ),
               Container(
                         alignment: Alignment.center,
                           margin: EdgeInsets.only(left: 30,right: 30,top: 10),
                          child: Text("Lorem ipsum is simply dummy text of the printing and typesetting. ",style: TextStyle(color: Color.fromARGB(255, 10, 67, 119),fontSize: 20,fontWeight: FontWeight.bold),),
                   ),
              
               Container(
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                    Container(
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.square,size: 10,),
                                    ),
                         ],),
               ),
              GestureDetector(
                            onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (((context) => HomeScreen3()))));
                                    },
                               child: 
                                   Container(
                                            height: 50,
                                            width: 120,
                                            alignment: Alignment.center,
                                            
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(255, 14, 7, 78),
                                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
                                            ),
                                   child: Text("GET STARTED",style: TextStyle(color: Color.fromARGB(255, 236, 238, 241),fontSize: 15,
                                   ),),
                                   ),),      
                        ],),
    );
  }
}

///////////////////////////// Task 5 //////////

class HomeScreen4 extends StatefulWidget {
  const HomeScreen4({super.key});

  @override
  State<HomeScreen4> createState() => _HomeScreen4State();
}

class _HomeScreen4State extends State<HomeScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      
      children: [
               Container(
                         height:400,
                         width: double.maxFinite,
                         child: Image.network("data:image/jpeg;base64,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"),
               ),
               Container(
                         child: Text("Explore",style: TextStyle(color: Color.fromARGB(255, 33, 131, 223),fontSize: 30,fontWeight: FontWeight.bold),),
               ),
               Container(
                         alignment: Alignment.center,
                           margin: EdgeInsets.only(left: 30,right: 30,top: 10),
                          child: Text(" Pavlova is a merineue-based dessert named after the Russian ballerina Anna Pavlova fealures a crisp crust and soft,light inside,lopped with fruit and whipped cream.",style: TextStyle(color: Color.fromARGB(255, 10, 67, 119),fontSize: 20,fontWeight: FontWeight.bold),),
                   ),
              
               Container(
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.square,size: 10,color: Colors.orange,),
                                    ),
                                    Container(
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                         ],),
               ),
              GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (((context) => Screenn1()))));
                                    },
                                   
                                  child: Container(
                                    height: 30,
                                            width: 80,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(left: 132,top: 30),
                                            child: Text("NEXT",style: TextStyle(color: Color.fromARGB(255, 111, 152, 223),fontSize: 20,
                                   ),),
                                   ),),
                        ],),
            );
  }
}

class Screenn1 extends StatefulWidget {
  const Screenn1({super.key});

  @override
  State<Screenn1> createState() => _Screenn1State();
}

class _Screenn1State extends State<Screenn1> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        body: Column(
      
      children: [
               Container(
                         height:400,
                         width: double.maxFinite,
                         margin: EdgeInsets.only(bottom: 30,top: 30),
                         child: Image.network("data:image/jpeg;base64,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"),
               ),
               Container(
                         child: Text("Book",style: TextStyle(color: Color.fromARGB(255, 45, 178, 80),fontSize: 30,fontWeight: FontWeight.bold),),
               ),
               Container(
                         alignment: Alignment.center,
                           margin: EdgeInsets.only(left: 30,right: 30,top: 10),
                          child: Text("Lorem ipsum is simply dummy text of the printing and typesetting. ",style: TextStyle(color: Color.fromARGB(255, 45, 178, 80),fontSize: 20,fontWeight: FontWeight.bold),),
                   ),
               Container(
                         child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                    Container(
                                              child: Icon(Icons.square,size: 10,color: Colors.orange,),
                                    ),
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                         ],),
               ),GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (((context) => Screenn2()))));
                                    },
                                   
                                  child: Container(
                                    height: 30,
                                            width: 80,
                                            alignment: Alignment.bottomRight,
                                            margin: EdgeInsets.only(left: 132,top: 30),
                                            child: Text("NEXT",style: TextStyle(color: Color.fromARGB(255, 12, 15, 20),fontSize: 20,
                            ),),),),],),);}
}

class Screenn2 extends StatefulWidget {
  const Screenn2({super.key});

  @override
  State<Screenn2> createState() => _Screenn2State();
}

class _Screenn2State extends State<Screenn2> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        body: Column(
      
      children: [
                Container(
                         height:400,
                         width: double.maxFinite,
                         margin: EdgeInsets.only(bottom: 30,top: 30),
                         child: Image.network("https://cdn.cdnparenting.com/articles/2018/12/14121244/1143416498-H.jpg"),
               ),
               Container(
                         child: Text("Enjoy ",style: TextStyle(color: Color.fromARGB(255, 33, 131, 223),fontSize: 30,fontWeight: FontWeight.bold),),
               ),
               Container(
                         alignment: Alignment.center,
                           margin: EdgeInsets.only(left: 30,right: 30,top: 10),
                          child: Text("Lorem ipsum is simply dummy text of the printing and typesetting. ",style: TextStyle(color: Color.fromARGB(255, 10, 67, 119),fontSize: 20,fontWeight: FontWeight.bold),),
                   ),
              
               Container(
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                    Container(
                                              child: Icon(Icons.circle,size: 10,),
                                    ),
                                    Container(
                                              margin: EdgeInsets.all(5),
                                              child: Icon(Icons.square,size: 10,color: Colors.orange,),
                                    ),
                         ],),
               ),
              GestureDetector(
                            onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (((context) => HomeScreen4()))));
                                    },
                               child: 
                                   Container(
                                            height: 50,
                                            width: 120,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: Colors.orangeAccent,
                                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
                                            ),
                                   child: Text("GET STARTED",style: TextStyle(color: Color.fromARGB(255, 236, 238, 241),fontSize: 15,
                                   ),),
                                   ),),      
                        ],),
    );
  }
}

