// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'Category.dart';
import 'Home_Screen.dart';
import 'Offers.dart';
import 'Orders.dart';
import 'Profile.dart';

class MainScreen extends StatefulWidget {
  int? receiveIndex;
  MainScreen({Key? key, this.receiveIndex}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // List<AllProductListData> allproductApi = [];
  // final String url = "";

  int _currentIndex = 0;
  // Future<List<AllProductListData>> getDataList() async {
  //   Map data = {
  //     'user_id':"3"
  //   };
  //   final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}allProduct");
  //   var response = await http.post(url,body: data);
  //   if(response.statusCode == 200){
  //     var data = json.decode(response.body);
  //     var rest = data["data"] as List;
  //     allproductApi = rest.map<AllProductListData>((e) => AllProductListData.fromJsonMap(e)).toList();
  //     setState(() {
  //      // _isLoading = false;
  //     });
  //     print("allproductApi");
  //     print(response.body);
  //   }
  //   return allproductApi;
  // }

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  void callBack(){
    setState(() {
      _currentIndex = 3;
    });
  }

  Widget? pages(int index){
    switch(index){
      case 0:
        {
          return  HomePage(productId: '',);
        }
      case 1:
        {
          return const Category();
        }
      case 2:
        {
          return const Offers();
        }
      case 3:
        {
          return const Orders();
        }
      case 4:
        {
          return Profile(onTap: callBack,);
        }
    }
    return null;
  }

  @override
  void initState() {
    // getDataList();
    setState(() {
      widget.receiveIndex != null
          ? _currentIndex = widget.receiveIndex!
          : _currentIndex;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      pages(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 13,
        elevation: 10,
        selectedIconTheme: const IconThemeData(color: Colors.blue, size: 30),
        selectedItemColor: Colors.blue,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex, //New
      ),
    );
  }
}
