import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Api_Task/screens/marketing.dart';
import 'Controller.dart';

class WelComeScreen extends StatelessWidget {
  const WelComeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dataController = Get.put(DataController());
     return Scaffold(
         appBar: AppBar(title: const Text("WELCOME"),),
         body:  Obx(
               () =>dataController.isDataLoading.value ? const Center(child: CircularProgressIndicator(),) : Column(
                 children: [
                   ListView.builder(
                     shrinkWrap: true,
                       itemCount: dataController.data!.data!.welcome!.length,
                       itemBuilder: (context, index) {
                         return Center(
                           child: Column(
                             children: [
                               const SizedBox(
                                 height: 10,
                               ),
                               Container(
                                   margin: const EdgeInsets.only(left: 20, right: 20),
                                   padding: const EdgeInsets.only(left: 20),
                                   height: 80,
                                   width: MediaQuery.of(context).size.width,
                                   decoration: BoxDecoration(
                                       color: Colors.white,
                                       borderRadius: BorderRadius.circular(20)),
                                   child: Row(
                                     children: [
                                       CircleAvatar(
                                         radius: 35,
                                         backgroundImage: NetworkImage(dataController
                                             .data!.data!.welcome![index].image.toString()),
                                       ),
                                       const SizedBox(
                                         width: 30,
                                       ),
                                       Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: [
                                           Text(
                                             dataController
                                                 .data!.data!.welcome![index].type.toString(),
                                             style: const TextStyle(
                                                 color: Colors.black, fontSize: 18),
                                           ),
                                           Text(
                                               dataController
                                                   .data!.data!.welcome![index].text.toString(),
                                               style: const TextStyle(
                                                   color: Colors.black, fontSize: 18)),
                                           Text(
                                               dataController
                                                   .data!.data!.welcome![index].subtext.toString(),
                                               style: const TextStyle(
                                                   color: Colors.black, fontSize: 18)),
                                         ],
                                       ),
                                     ],
                                   )),
                             ],
                           ),
                         );
                       }),
                   const SizedBox(
                     height: 30,
                   ),
                   InkWell(
                       onTap: () {
                         Get.to(() => const MarketingScreen());
                       },
                       child: Container(
                         width: MediaQuery.of(context).size.width/2,
                         height: MediaQuery.of(context).size.height*0.05,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blueGrey),
                         child: const Text(" WelCome ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),),
                       ))
                 ],
               )

         )
     );
  }
}
