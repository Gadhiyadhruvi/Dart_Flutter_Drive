import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Api_Task/screens/login.dart';
import 'Controller.dart';

class MarketingScreen extends StatelessWidget {
  const MarketingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dataController = Get.put(DataController());

    return Scaffold(
      appBar: AppBar(title: const Text("MARKETING"),),
      body:  Obx(
        () =>dataController.isDataLoading.value ? const Center(child: CircularProgressIndicator(),) : ListView.builder(
            itemCount: dataController.data!.data!.marketing!.length,
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
                                  .data!.data!.marketing![index].image.toString()),
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
                                      .data!.data!.marketing![index].type.toString(),
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                                Text(
                                    dataController
                                        .data!.data!.marketing![index].text.toString(),
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 18)),
                                Text(
                                    dataController
                                        .data!.data!.marketing![index].subtext.toString(),
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 18)),
                              ],
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(() => const LoginScreen());
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width/2,
                          height: MediaQuery.of(context).size.height*0.05,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blueGrey),
                          child: const Text(" Save ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),),
                        ))
                  ],
                ),
              );
            }),
      )
    );
  }
}
