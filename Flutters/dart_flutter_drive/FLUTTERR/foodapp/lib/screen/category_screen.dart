import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/Category_controller.dart';
import 'package:foodapp/widget/category_history.dart';
import 'package:get/get.dart';

class CategoryScreen extends GetView<CategoryController> {
  static String pageId = '/screenCategory';

  CategoryScreen({Key? key}) : super(key: key);
  final controller = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    final CategoryController tabx = Get.put(CategoryController());

    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height*1.74,
              decoration: BoxDecoration(borderRadius: const BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),color: Colors.grey[300]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),color: Colors.white),
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,top: 70),
                         child: TextFormField(
                            cursorColor: Colors.grey,
                            style: const TextStyle(fontSize: 15),
                            textInputAction: TextInputAction.search,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.location_on,color: Colors.grey,),
                              filled: true,
                              fillColor: Colors.grey[300],
                              hintText: 'Search on Coody',
                              hintStyle: const TextStyle(color: Colors.grey,fontSize: 18),
                              labelStyle: const TextStyle(color: Colors.grey,fontSize: 28),
                              contentPadding: const EdgeInsets.only(
                                  left: 24.0, bottom: 14.0, top: 14.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20.7),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20.7),
                              ),
                            ),
                          ),),
                        DefaultTabController(length: 2, child: TabBar(
                          indicatorColor: Colors.orange,
                          labelColor: Colors.orange,
                          controller: tabx.controller,
                          tabs: tabx.productTab,
                        )),
                      ],
                    ),
                  ),
                  Flexible(
                    child: TabBarView(
                      controller: tabx.controller,
                      children: [
                        const Column(
                          children: [
                            Text("Ongoing...",style: TextStyle(fontSize: 25)),
                          ],
                        ),
                        CategoryHistory(),
                      ],
                    ),
                  )
                ],
              ),
            ),
      ),
    );
  }
}
