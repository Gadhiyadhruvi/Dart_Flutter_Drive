import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'paymentcard_bottomsheet.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pop();
      },
      child: DraggableScrollableSheet(
        initialChildSize: 0.9,
        builder: (_, controller){
          return Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 150),
                      height: MediaQuery.of(context).size.height*0.01,
                      width: MediaQuery.of(context).size.width*0.13,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20))
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 80,top: 10,bottom: 5),
                    child: const Text("Payment Methods",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 20),),
                  ),
                  const Divider(),
                  const Text("Credit Cards"),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height*0.1,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey[300]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height*0.025,),
                            const Text("4086148238059709"),
                            const Text("Default Payment"),
                          ],
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width*0.17,),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height*0.1,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey[300]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.orange,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height*0.025,),
                            const Text("5314098616607150"),
                            const Text("Not Default"),
                          ],
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width*0.17,),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.13,),
                  GestureDetector(
                      onTap: () {
                        Get.back();
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            elevation: 0,
                            context: context,
                            builder: (context){
                              return PatmentCardBottomSheet();
                            }
                        );
                      },
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange),
                          height: MediaQuery.of(context).size.height*0.06,
                          child: const Text("Add Card",style: TextStyle(color: Colors.white,fontSize: 18),))),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}