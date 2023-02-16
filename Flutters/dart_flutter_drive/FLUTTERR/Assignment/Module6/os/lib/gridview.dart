import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Grid_View extends StatefulWidget {
  const Grid_View({super.key});

  @override
  State<Grid_View> createState() => _Grid_ViewState();
}

class _Grid_ViewState extends State<Grid_View> {
  final List<String> _listitem = [
    "https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg",
    "https://media.istockphoto.com/id/1322277517/photo/wild-grass-in-the-mountains-at-sunset.jpg?s=612x612&w=0&k=20&c=6mItwwFFGqKNKEAzv0mv6TaxhLN3zSE43bWmFN--J5w=",
    "https://thumbs.dreamstime.com/b/autumn-landscape-nature-background-dried-flowers-water-drops-rain-field-banner-selective-focus-75038244.jpg",
    "https://t4.ftcdn.net/jpg/03/57/85/41/360_F_357854155_pZ7ueCQaQ8lBl1ePCaaQ5rRUfKctxr7d.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Grid View")),
        body: SafeArea(
            child: Expanded(
                child: Container(
                    child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: _listitem
                            .map((Item) => Card(
                                elevation: 10,
                                child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                  image: NetworkImage(Item),
                                  fit: BoxFit.cover,
                                )))))
                            .toList())))));
  }
}
