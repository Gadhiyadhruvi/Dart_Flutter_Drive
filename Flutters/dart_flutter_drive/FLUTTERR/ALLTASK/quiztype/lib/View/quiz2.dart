import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'quiz3.dart';

class Quiz2 extends StatefulWidget {
  const Quiz2({Key? key}) : super(key: key);

  @override
  State<Quiz2> createState() => _Quiz2State();
}

class _Quiz2State extends State<Quiz2> {
  String _selectvalue = 'Option';
  bool isSelected = false;
  // final PageController _pageController = PageController();
  List qustion = [
    'A) Bangkok',
    'B) Geneva',
    'c) Santiago (Chile)',
    'D) Baghdad',
  ];
  List<int> score = [
    10,
    0,
    0,
    0,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz3(),));
                      },
                      child: Text("Skip",style: TextStyle(fontSize: 20),),
                    )
                  ],
                ),
                const SizedBox(height: 50,),
                Text("Fisio",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500,color: Colors.orange[700])),
                const SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 10,),
                  child:  Container(
                    // decoration: BoxDecoration(color: Colors.black12),
                    child: const Text("2. The headquarter of ESCAP Economic and Social Commission for Asia are situated at",style: TextStyle(fontSize: 20),),
                  ),),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: qustion.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          border: const Border(top: BorderSide(style: BorderStyle.solid), bottom: BorderSide(style: BorderStyle.solid), left: BorderSide(style: BorderStyle.solid), right: BorderSide(style: BorderStyle.solid))),
                      child: Row(
                        children: [
                          Radio(
                            value: qustion[index], groupValue: _selectvalue, onChanged: (value) {
                              setState(() {

                                _selectvalue =  value;

                              });
                          },),

                          Container(
                            child: Text(qustion[index],style: const TextStyle(fontSize: 20)),)
                        ],
                      ),

                    );
                  },),
                const SizedBox(height: 40,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz3(),));
                    // Get.to(() => const Quiz2());
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.05,
                    width: MediaQuery.of(context).size.width*0.5,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange[700]),
                    child: const Text("Next",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}