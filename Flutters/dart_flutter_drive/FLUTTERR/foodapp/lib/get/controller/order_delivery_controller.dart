import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDeliveryController extends GetxController {
  RxInt current_step = 0.obs;
  RxList<Step> steps = [
    const Step(
      title: Text('Pending'),
      content: Text('Hello!'),
      isActive: true,
    ),
    const Step(
      title: Text('Confirmed'),
      content: Text('World!'),
      isActive: true,
    ),
    const Step(
      title: Text('Ready'),
      content: Text('Hello World!'),
      isActive: true,
    ),
    const Step(
      title: Text('Cancel'),
      content: Text('cancel'),
      state: StepState.complete,
      isActive: true,
    )
  ].obs;

}