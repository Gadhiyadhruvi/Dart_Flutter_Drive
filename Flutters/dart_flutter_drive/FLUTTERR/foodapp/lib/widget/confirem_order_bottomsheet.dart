import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../get/controller/foodmain_controller.dart';
import 'payment_dialog.dart';

class ConfirmOrderBottomSheet extends StatelessWidget {
  ConfirmOrderBottomSheet({Key? key}) : super(key: key);
  final controller = Get.find<FoodMainController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pop();
      },
      child: DraggableScrollableSheet(
        initialChildSize: 1,
        builder: (_, controller){
          return Padding(
            padding: EdgeInsets.only(left: 12,right: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.01,
                  width: MediaQuery.of(context).size.width*0.12,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[400]),
                ),
                const Text("Add your payment methods",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Divider(color: Colors.grey[400],),
                TextFormField(
                      // controller: controller.controllerForSearch,
                      cursorColor: Colors.grey,
                      style: const TextStyle(fontSize: 15),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.check_circle_rounded,color: Colors.grey[400],),
                        prefixIcon: const Icon(
                          Icons.padding_rounded,color: Colors.grey,),
                        filled: true,
                        fillColor: Colors.grey[100],
                        hintText: '3999 - 1234 - 5678 - 0000',
                        hintStyle: const TextStyle(color: Colors.grey,fontSize: 18),
                        labelStyle: const TextStyle(color: Colors.grey,fontSize: 28),
                        contentPadding: const EdgeInsets.only(
                            left: 24.0, bottom: 18.0, top: 18.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20.7),
                        ),
                      ),
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.43,
                      child: TextFormField(
                        cursorColor: Colors.grey,
                        style: const TextStyle(fontSize: 15),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[100],
                          hintText: 'MM/YY ',
                          hintStyle: const TextStyle(color: Colors.grey,fontSize: 18),
                          labelStyle: const TextStyle(color: Colors.grey,fontSize: 28),
                          contentPadding: const EdgeInsets.only(
                              left: 18.0, bottom: 1.0, top: 1.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(15.7),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.43,
                      child: TextFormField(
                        cursorColor: Colors.grey,
                        style: const TextStyle(fontSize: 15),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[100],
                          hintText: 'CVC ',
                          hintStyle: const TextStyle(color: Colors.grey,fontSize: 18),
                          labelStyle: const TextStyle(color: Colors.grey,fontSize: 28),
                          contentPadding: const EdgeInsets.only(
                              left: 18.0, bottom: 1.0, top: 1.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20.7),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                    showDialog(
                        context: context,
                        builder: (BuildContext context ){
                          return PaymentDialogBox();
                        });
                    },
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.06,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orange),
                    child: const Text("Add Card",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.06,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey[300]),
                    child: const Text("Scan Card",style: TextStyle(color: Colors.black,fontSize: 18),),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    )/*,
      )*/;
  }
}