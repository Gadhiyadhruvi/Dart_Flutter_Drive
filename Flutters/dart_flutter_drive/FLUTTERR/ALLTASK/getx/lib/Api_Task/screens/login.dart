// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Api_Task/screens/Controller.dart';
import 'package:getx/Api_Task/screens/register.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dataController = Get.put(DataController());
    return Scaffold(
        appBar: AppBar(title: const Text("LOGIN"),),
        body:  Obx(
              () =>dataController.isDataLoading.value ? const Center(child: CircularProgressIndicator(),) : ListView.builder(
              itemCount: dataController.data!.data!.login!.length,
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
                                    .data!.data!.login![index].image.toString()),
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
                                        .data!.data!.login![index].type.toString(),
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                  Text(
                                      dataController
                                          .data!.data!.login![index].text.toString(),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 18)),
                                  Text(
                                      dataController
                                          .data!.data!.login![index].subtext.toString(),
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
                            Get.to(() => const Register());
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width/2,
                            height: MediaQuery.of(context).size.height*0.05,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blueGrey),
                            child: const Text(" Login ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),),
                          ))
                    ],
                  ),
                );
              }),
        )
    );
  }
}
