import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Task1/Controller.dart';

class GetxDemo extends StatelessWidget {
  const GetxDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final TapController controller = Get.put(TapController());
    return Scaffold(
      appBar: AppBar(title: const Text("")),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child:  Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            const Text("GetX",style: TextStyle(fontSize: 50,color: Colors.blue),),
            Container(
              height: MediaQuery.of(context).size.height*0.06,
              width: MediaQuery.of(context).size.width*0.83,
              margin: const EdgeInsets.only(top: 100),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  border: const Border(right: BorderSide(color: Colors.grey),left: BorderSide(color: Colors.grey),top: BorderSide(color: Colors.grey),bottom: BorderSide(color: Colors.grey))),
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: TextFormField(
                  controller: controller.namecontroller,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelStyle:
                    TextStyle(color: Colors.grey,),
                    hintText: "Enter name",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.06,
              width: MediaQuery.of(context).size.width*0.83,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  border: const Border(right: BorderSide(color: Colors.grey),left: BorderSide(color: Colors.grey),top: BorderSide(color: Colors.grey),bottom: BorderSide(color: Colors.grey))),
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: TextFormField(
                  controller: controller.numbercontroller,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelStyle: TextStyle(color: Colors.grey,),
                    hintText: "Enter number",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.addtoList();
                }, child: const Text("Save",style: TextStyle(color: Colors.white),)),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blueGrey[200]),
              child:  Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Obx(() => ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.namelist.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(controller.namelist[index]),
                          );
                        },
                      ))),
                  Expanded(
                      flex: 2,
                      child: Obx(() => ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.numberlist.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(controller.numberlist[index]),
                          );
                        },
                      ))),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
