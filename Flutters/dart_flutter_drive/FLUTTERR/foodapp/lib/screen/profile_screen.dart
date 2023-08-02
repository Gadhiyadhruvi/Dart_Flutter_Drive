import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:foodapp/widget/account_information_bottomsheet.dart';
import 'package:get/get.dart';
import '../get/controller/profile_controller.dart';

class ProfileScreen extends GetView<ProfileController> {
  static String pageId = '/screenProfile';

  ProfileScreen({Key? key}) : super(key: key);

  final controllerr = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Profile"),),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height*0.18,
                width: MediaQuery.of(context).size.width*1,
                decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Divider(),
                    Image(image: const AssetImage('assets/fb.png'),fit: BoxFit.fill,height: MediaQuery.of(context).size.height*0.09,),
                    const Text("Philippe Troussier "),
                  ],
                )
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.04,),
            Container(
              height: MediaQuery.of(context).size.height*0.54,
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20),topLeft: Radius.circular(20),topRight: Radius.circular(20)),color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("General"),
                    GestureDetector(

                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: controllerr.profilegenerallist.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                if(index != 3 && index != 4){
                                  showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      isScrollControlled: true,
                                      elevation: 0,
                                      context: context,
                                      builder: (context){
                                        return AccountInformationBottomSheet(index: index);
                                      }
                                  );
                                }
                                },
                              child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Divider(color: Colors.grey[300],),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20,right: 15),
                                          child: Icon(controllerr.profilegenerallist[index].icon1),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(controllerr.profilegenerallist[index].namegeneral,style: TextStyle(fontSize: 17),),
                                            Text(controllerr.profilegenerallist[index].subnamegeneral),
                                          ],
                                        ),
                                        SizedBox(width: MediaQuery.of(context).size.width*0.12,),
                                      ],
                                    ),
                                    const SizedBox(height: 15,),
                                  ],
                                ),
                                Positioned(
                                  top: MediaQuery.of(context).size.height*0.02,
                                  left: MediaQuery.of(context).size.width*0.82,
                                  child: const Icon(Icons.arrow_forward_ios_rounded),
                                )
                              ],
                            )
                          );
                        },),
                    )
                  ],
                ),
              )
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.25,
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20),topLeft: Radius.circular(20),topRight: Radius.circular(20)),color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Notification"),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: controllerr.profilenotificationlist.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Column(
                              children: [
                                Divider(color: Colors.grey[300],),
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 20,right: 10),
                                      child: Icon(Icons.notifications),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(controllerr.profilenotificationlist[index].namegeneral,style: TextStyle(fontSize: 17),),
                                        Text(controllerr.profilenotificationlist[index].subnamegeneral),
                                      ],
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.15,),
                                  ],
                                ),
                                const SizedBox(height: 15,),
                              ],
                            ),
                            Positioned(
                              top: MediaQuery.of(context).size.height*0.03,
                              left: MediaQuery.of(context).size.width*0.78,
                              child: Obx(() => FlutterSwitch(
                                height: MediaQuery.of(context).size.height*0.03,
                                width: MediaQuery.of(context).size.width*0.09,
                                toggleSize: 15.0,
                                borderRadius: 20.0,
                                activeColor: Colors.orange,
                                value: controllerr.status.value,
                                onToggle: (value) {
                                  controllerr.status.value = value;
                                },),),
                            )
                          ],
                        );
                      },)
                  ],
                ),
              )
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.25,
              width: MediaQuery.of(context).size.width*1,
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20),topLeft: Radius.circular(20),topRight: Radius.circular(20)),color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("More"),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: controllerr.profilemorelist.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Column(
                              children: [
                                Divider(color: Colors.grey[300],),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20,right: 15),
                                      child: Icon(controllerr.profilemorelist[index].icon1),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(controllerr.profilemorelist[index].namegeneral,style: TextStyle(fontSize: 17),),
                                        Text(controllerr.profilemorelist[index].subnamegeneral),
                                      ],
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.17,),
                                  ],
                                ),
                                const SizedBox(height: 15,),
                              ],
                            ),
                            Positioned(
                              top: MediaQuery.of(context).size.height*0.022,
                              left: MediaQuery.of(context).size.width*0.82,
                              child: const Icon(Icons.arrow_forward_ios_rounded),
                            )
                          ],
                        );
                      },)
                  ],
                ),
              )
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*1,
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20),topLeft: Radius.circular(20),topRight: Radius.circular(20)),color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                  const Icon(Icons.login_outlined),
                  const Text("Log Out",style: TextStyle(fontSize: 17),),
                  SizedBox(width: MediaQuery.of(context).size.width*0.36,),
                  const Icon(Icons.arrow_forward_ios_rounded),
                  SizedBox(width: MediaQuery.of(context).size.width*0.0001,),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}