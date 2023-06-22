// import 'package:flutter/material.dart';
// import 'Cart.dart';
// import 'Favorite.dart';
// import 'Order_Detail_screen.dart';
//
// class Orders extends StatefulWidget {
//   const Orders({Key? key}) : super(key: key);
//
//   @override
//   State<Orders> createState() => _OrdersState();
// }
//
// class _OrdersState extends State<Orders> with TickerProviderStateMixin {
//
//   // final String url = "";
//   // bool _isLoading = false;
//   // List<OrderListData> orderApi = [];
//
//   // Future<List<OrderListData>> getDataList() async {
//   //   Map data = {
//   //     'user_id':"3"
//   //   };
//   //   final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}orderList");
//   //   var response = await http.post(url,body: data);
//   //   if(response.statusCode == 200){
//   //     var data = json.decode(response.body);
//   //     var rest = data["data"] as List;
//   //     orderApi = rest.map<OrderListData>((e) => OrderListData.fromJsonMap(e)).toList();
//   //     setState(() {
//   //       _isLoading = false;
//   //     });
//   //     print("orderApi");
//   //     print(response.body);
//   //   }
//   //   return orderApi;
//   // }
//
//   late final TabController _tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(title: const Text("Order"),
//         actions:<Widget>[
//           IconButton(
//             icon: const Icon(
//               Icons.favorite,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               Navigator.push(context, MaterialPageRoute(builder: (context) => const Favorite(),));
//             },
//           ),
//           IconButton(onPressed: (){
//             Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart(),));
//           }, icon: const Icon(Icons.shopping_cart,color: Colors.white,))
//         ],),
//       body: Column(
//         children: <Widget>[
//           Container(
//             height: MediaQuery.of(context).size.height*0.05,
//             margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
//             padding: const EdgeInsets.only(right: 5,left: 5,top: 5,bottom: 5),
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.black45),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: TabBar(
//               controller: _tabController,
//               indicatorSize: TabBarIndicatorSize.tab,
//               indicator: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue),
//               labelColor: Colors.white,
//               unselectedLabelColor: Colors.black,
//               tabs: const [
//                 Text("Pending",style: TextStyle(fontSize: 15),),
//                 Text("Confirmed",style: TextStyle(fontSize: 15)),
//                 Text("Cancelled",style: TextStyle(fontSize: 15)),
//               ],
//             ),
//           ),
//           Expanded(
//             child: TabBarView(
//               controller: _tabController,
//               children: const <Widget>[
//                 Card(
//                   margin: EdgeInsets.all(16.0),
//                   child: Center(child: Text(': Overview tab')),
//                 ),
//                 Card(
//                   margin: EdgeInsets.all(16.0),
//                   child: Center(
//                       child: Text(': Specifications tab')),
//                 ),
//                 Card(
//                   margin: EdgeInsets.all(16.0),
//                   child: Center(
//                       child: Text(': Specifications tab')),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class Pending extends StatefulWidget {
//   const Pending({Key? key}) : super(key: key);
//
//   @override
//   State<Pending> createState() => _PendingState();
// }
//
// class _PendingState extends State<Pending> {
//   List<OrderList> orderList = [];
//   List<ProductList> productList = [];
//   // final String url = "";
//   // bool _isLoading = false;
//   // List<OrderListData> orderApi = [];
//
//   @override
//   void initState() {
//     //_isLoading = true;
//     // getDataList();
//     orderList.add(OrderList(name: "MBV31", order: "22/02/2023", pickup: "12/03/2023", quantity: "2", amount: "897 NRP"));
//     orderList.add(OrderList(name: "MBV42", order: "30/01/2023", pickup: "12/03/2023", quantity: "4", amount: "257 NRP"));
//     orderList.add(OrderList(name: "MBV55", order: "29/02/2023", pickup: "12/03/2023", quantity: "7", amount: "34 NRP"));
//     orderList.add(OrderList(name: "MBV86", order: "21/03/2023", pickup: "12/03/2023", quantity: "1", amount: "58 NRP"));
//     orderList.add(OrderList(name: "MBV23", order: "23/01/2023", pickup: "12/03/2023", quantity: "9", amount: "87 NRP"));
//     orderList.add(OrderList(name: "MBV97", order: "2/02/2023", pickup: "12/03/2023", quantity: "6", amount: "78 NRP"));
//     orderList.add(OrderList(name: "MBV75", order: "5/01/2023", pickup: "12/03/2023", quantity: "2", amount: "89 NRP"));
//     orderList.add(OrderList(name: "MBV83", order: "17/03/2023", pickup: "12/03/2023", quantity: "4", amount: "246 NRP"));
//     orderList.add(OrderList(name: "MBV278", order: "18/03/2023", pickup: "12/03/2023", quantity: "0", amount: "95 NRP"));
//     orderList.add(OrderList(name: "MBV195", order: "20/01/2023", pickup: "12/03/2023", quantity: "3", amount: "034 NRP"));
//
//     productList.add(ProductList(title: "English", price: "212", discountPrice: "235", discount: "10", image: 'https://tse4.mm.bing.net/th?id=OIP.RixDGRn511lPDg-5npfZPwHaJk&pid=Api&P=0', BrandName: 'Nursery', school: 'Delhi Public School, Bopal', boardName: 'Gujarat Board', mediumName: 'Gujarati', standardName: '2', subjectName: 'English',));
//     productList.add(ProductList(title: "Science", price: "100", discountPrice: "125", discount: "2", image: 'https://tse4.mm.bing.net/th?id=OIP.OUbBjDJU3SUVps8BS7zsdAHaHa&pid=Api&P=0', BrandName: '1', school: 'Udgam School For Children, Thaltej',  boardName: 'CBSC', mediumName: 'English', standardName: '5', subjectName: 'Gujarati',));
//     productList.add(ProductList(title: "English Grammar", price: "200", discountPrice: "235", discount: "15", image: 'https://tse1.mm.bing.net/th?id=OIP.59FDYCnsskmxXdC8KoIbDAHaJl&pid=Api&P=0', BrandName: '1', school: 'Vedant International School, Isanpur',  boardName: 'Gujarat', mediumName: 'Hindi', standardName: '1', subjectName: 'Mathematices',));
//     productList.add(ProductList(title: "Gujarati", price: "150", discountPrice: "80", discount: "8", image: 'https://2.bp.blogspot.com/--NACPs3p9I0/WPG_cC4NQaI/AAAAAAAAYJE/Q-cgrW0brvcQstSP8WIkgiXmpf7D-5P5gCEw/s1600/1.jpg', BrandName: '6', school: 'Podar International School, Chandkheda', boardName: 'ICSC', mediumName: 'English', standardName: '8', subjectName: 'Hindi',));
//     productList.add(ProductList(title: "Mathematics", price: "220", discountPrice: "120", discount: "10", image: 'https://tse4.mm.bing.net/th?id=OIP.LgFvGN8I4LLmR7JB0jXQ8QHaHa&pid=Api&P=0', BrandName: '5', school: 'Adani Vidya Mandir, Makarba',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '10', subjectName: 'Social Science',));
//     productList.add(ProductList(title: "Hindi", price: "90", discountPrice: "50", discount: "18", image: 'https://tse2.mm.bing.net/th?id=OIP._idKDk6rskubf16dm8p3LAHaJa&pid=Api&P=0', BrandName: '1', school: 'Anand Niketan, Maninagar', boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Science',));
//     productList.add(ProductList(title: "Computer", price: "100", discountPrice: "80", discount: "2", image: 'https://uploads-ssl.webflow.com/5f5cf4627107791c0412287b/60c9bfdd9364ce105f5c12d0_Computer%20Book%20-8-p-1080.jpeg', BrandName: '8', school: 'Calorx Public School, Ghatlodia',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'English Grammer',));
//     productList.add(ProductList(title: "Science", price: "160", discountPrice: "120", discount: "20", image: 'https://tse3.mm.bing.net/th?id=OIP.r1T31UTwUS-7cFLOYnJEpQAAAA&pid=Api&P=0', BrandName: '10', school: 'Cosmos Castle International School, S G Road',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Computer',));
//     productList.add(ProductList(title: "Social Science", price: "250", discountPrice: "200", discount: "5", image: 'https://tse2.mm.bing.net/th?id=OIP.925o4UY1WdELT1MuNZZWDwHaHa&pid=Api&P=0', BrandName: '9', school: 'Divine Child International School, Adalaj',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Gujarati',));
//     productList.add(ProductList(title: "Hindi", price: "90", discountPrice: "50", discount: "8", image: 'https://isteam.wsimg.com/ip/a68ccc00-d53d-11e5-892b-14feb5d41b49/ols/17065_original/:/rs=w:600,h:600', BrandName: '4', school: 'Nirman High School, Vastrapur', boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Mathematices',));
//
//     // confirmedList.add(ConfirmedList(name: "MBV31", order: "22/02/2023", pickup: "12/03/2023", quantity: "2", amount: "897 NRP"));
//     // confirmedList.add(ConfirmedList(name: "MBV42", order: "30/01/2023", pickup: "12/03/2023", quantity: "4", amount: "257 NRP"));
//     // confirmedList.add(ConfirmedList(name: "MBV55", order: "29/02/2023", pickup: "12/03/2023", quantity: "7", amount: "34 NRP"));
//     // confirmedList.add(ConfirmedList(name: "MBV86", order: "21/03/2023", pickup: "12/03/2023", quantity: "1", amount: "58 NRP"));
//     // confirmedList.add(ConfirmedList(name: "MBV23", order: "23/01/2023", pickup: "12/03/2023", quantity: "9", amount: "87 NRP"));
//     // confirmedList.add(ConfirmedList(name: "MBV97", order: "2/02/2023", pickup: "12/03/2023", quantity: "6", amount: "78 NRP"));
//     // confirmedList.add(ConfirmedList(name: "MBV75", order: "5/01/2023", pickup: "12/03/2023", quantity: "2", amount: "89 NRP"));
//     // confirmedList.add(ConfirmedList(name: "MBV83", order: "17/03/2023", pickup: "12/03/2023", quantity: "4", amount: "246 NRP"));
//     // confirmedList.add(ConfirmedList(name: "MBV278", order: "18/03/2023", pickup: "12/03/2023", quantity: "0", amount: "95 NRP"));
//     // confirmedList.add(ConfirmedList(name: "MBV195", order: "20/01/2023", pickup: "12/03/2023", quantity: "3", amount: "034 NRP"));
//
//     super.initState();
//   }
//
//   // Future<List<OrderListData>> getDataList() async {
//   //   Map data = {
//   //     'user_id':"11",
//   //     'order_type':"1"
//   //   };
//   //   final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}orderList");
//   //   var response = await http.post(url,body: data);
//   //   if(response.statusCode == 200){
//   //     var data = json.decode(response.body);
//   //     var rest = data["data"] as List;
//   //     orderApi = rest.map<OrderListData>((e) => OrderListData.fromJsonMap(e)).toList();
//   //     setState(() {
//   //       _isLoading = false;
//   //     });
//   //     print("orderApi");
//   //     print(response.body);
//   //   }
//   //   return orderApi;
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       //_isLoading ? const Center(child: CircularProgressIndicator(),) :
//     ListView.builder(
//         shrinkWrap: true,
//         itemCount: orderList.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Padding(
//             padding: const EdgeInsets.all(10),
//             child: Card(
//                 child:
//                 Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text("Order:"),
//                           Container(
//                               margin: const EdgeInsets.only(right: 145),
//                               child: Text(orderList[index].name,style: const TextStyle(color: Colors.grey),)),
//                           Text(orderList[index].order,style: const TextStyle(color: Colors.red)),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text("Pick up date:"),
//                           Container(
//                               margin: const EdgeInsets.only(right: 155),
//                               child: Text( orderList[index].pickup,style: const TextStyle(color: Colors.grey),)),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text("Quantity:"),
//                           Container(
//                               margin: const EdgeInsets.only(right: 70),
//                               child: Text(orderList[index].quantity,style: const TextStyle(color: Colors.grey),)),
//                           const Text("Total Amount:",style: TextStyle(fontWeight: FontWeight.bold),),
//                           Text(orderList[index].amount,style: const TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold)),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           ElevatedButton(
//                             style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.cyan),
//                             onPressed: (){
//                               Navigator.push(context,MaterialPageRoute(builder: (context) => Order_Detail_Screen(name: orderList[index].name, order: orderList[index].order, pickup: orderList[index].pickup, quantity: orderList[index].quantity, amount: orderList[index].amount, image: productList[index].image,  price: productList[index].price, title: productList[index].title,),));
//                             },
//                             child: const Center(
//                               child: Text("Details",style: TextStyle(color: Colors.cyan)),
//                             ),
//                           ),
//                           const Text("Pending",style: TextStyle(color: Colors.green)),
//                         ],
//                       ),
//                     ),
//                   ],)
//             ),
//           );
//         }
//     );
//   }
// }
//
// class Confirmed extends StatefulWidget {
//   const Confirmed({Key? key}) : super(key: key);
//
//   @override
//   State<Confirmed> createState() => _ConfirmedState();
// }
//
// class _ConfirmedState extends State<Confirmed> {
//   List<ConfirmedList> confirmedList = [];
//   List<OrderList> orderList = [];
//   List<ProductList> productList = [];
//   //
//   // final String url = "";
//   // bool _isLoading = false;
//   // List<OrderListData> orderApi = [];
//
//   // Future<List<OrderListData>> getDataList() async {
//   //   Map data = {
//   //     'user_id':"11",
//   //     'order_type':"2"
//   //   };
//   //   final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}orderList");
//   //   var response = await http.post(url,body: data);
//   //   if(response.statusCode == 200){
//   //     var data = json.decode(response.body);
//   //     var rest = data["data"] as List;
//   //     orderApi = rest.map<OrderListData>((e) => OrderListData.fromJsonMap(e)).toList();
//   //     setState(() {
//   //       _isLoading = false;
//   //     });
//   //     print("orderApi");
//   //     print(response.body);
//   //   }
//   //   return orderApi;
//   // }
//
//
//   @override
//   void initState() {
//    // _isLoading = true;
//     // getDataList();
//     orderList.add(OrderList(name: "MBV31", order: "22/02/2023", pickup: "12/03/2023", quantity: "2", amount: "897 NRP"));
//     orderList.add(OrderList(name: "MBV42", order: "30/01/2023", pickup: "12/03/2023", quantity: "4", amount: "257 NRP"));
//     orderList.add(OrderList(name: "MBV55", order: "29/02/2023", pickup: "12/03/2023", quantity: "7", amount: "34 NRP"));
//     orderList.add(OrderList(name: "MBV86", order: "21/03/2023", pickup: "12/03/2023", quantity: "1", amount: "58 NRP"));
//     orderList.add(OrderList(name: "MBV23", order: "23/01/2023", pickup: "12/03/2023", quantity: "9", amount: "87 NRP"));
//     orderList.add(OrderList(name: "MBV97", order: "2/02/2023", pickup: "12/03/2023", quantity: "6", amount: "78 NRP"));
//     orderList.add(OrderList(name: "MBV75", order: "5/01/2023", pickup: "12/03/2023", quantity: "2", amount: "89 NRP"));
//     orderList.add(OrderList(name: "MBV83", order: "17/03/2023", pickup: "12/03/2023", quantity: "4", amount: "246 NRP"));
//     orderList.add(OrderList(name: "MBV278", order: "18/03/2023", pickup: "12/03/2023", quantity: "0", amount: "95 NRP"));
//     orderList.add(OrderList(name: "MBV195", order: "20/01/2023", pickup: "12/03/2023", quantity: "3", amount: "034 NRP"));
//
//     productList.add(ProductList(title: "English", price: "212", discountPrice: "235", discount: "10", image: 'https://tse4.mm.bing.net/th?id=OIP.RixDGRn511lPDg-5npfZPwHaJk&pid=Api&P=0', BrandName: 'Nursery', school: 'Delhi Public School, Bopal', boardName: 'Gujarat Board', mediumName: 'Gujarati', standardName: '2', subjectName: 'English',));
//     productList.add(ProductList(title: "Science", price: "100", discountPrice: "125", discount: "2", image: 'https://tse4.mm.bing.net/th?id=OIP.OUbBjDJU3SUVps8BS7zsdAHaHa&pid=Api&P=0', BrandName: '1', school: 'Udgam School For Children, Thaltej',  boardName: 'CBSC', mediumName: 'English', standardName: '5', subjectName: 'Gujarati',));
//     productList.add(ProductList(title: "English Grammar", price: "200", discountPrice: "235", discount: "15", image: 'https://tse1.mm.bing.net/th?id=OIP.59FDYCnsskmxXdC8KoIbDAHaJl&pid=Api&P=0', BrandName: '1', school: 'Vedant International School, Isanpur',  boardName: 'Gujarat', mediumName: 'Hindi', standardName: '1', subjectName: 'Mathematices',));
//     productList.add(ProductList(title: "Gujarati", price: "150", discountPrice: "80", discount: "8", image: 'https://2.bp.blogspot.com/--NACPs3p9I0/WPG_cC4NQaI/AAAAAAAAYJE/Q-cgrW0brvcQstSP8WIkgiXmpf7D-5P5gCEw/s1600/1.jpg', BrandName: '6', school: 'Podar International School, Chandkheda', boardName: 'ICSC', mediumName: 'English', standardName: '8', subjectName: 'Hindi',));
//     productList.add(ProductList(title: "Mathematics", price: "220", discountPrice: "120", discount: "10", image: 'https://tse4.mm.bing.net/th?id=OIP.LgFvGN8I4LLmR7JB0jXQ8QHaHa&pid=Api&P=0', BrandName: '5', school: 'Adani Vidya Mandir, Makarba',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '10', subjectName: 'Social Science',));
//     productList.add(ProductList(title: "Hindi", price: "90", discountPrice: "50", discount: "18", image: 'https://tse2.mm.bing.net/th?id=OIP._idKDk6rskubf16dm8p3LAHaJa&pid=Api&P=0', BrandName: '1', school: 'Anand Niketan, Maninagar', boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Science',));
//     productList.add(ProductList(title: "Computer", price: "100", discountPrice: "80", discount: "2", image: 'https://uploads-ssl.webflow.com/5f5cf4627107791c0412287b/60c9bfdd9364ce105f5c12d0_Computer%20Book%20-8-p-1080.jpeg', BrandName: '8', school: 'Calorx Public School, Ghatlodia',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'English Grammer',));
//     productList.add(ProductList(title: "Science", price: "160", discountPrice: "120", discount: "20", image: 'https://tse3.mm.bing.net/th?id=OIP.r1T31UTwUS-7cFLOYnJEpQAAAA&pid=Api&P=0', BrandName: '10', school: 'Cosmos Castle International School, S G Road',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Computer',));
//     productList.add(ProductList(title: "Social Science", price: "250", discountPrice: "200", discount: "5", image: 'https://tse2.mm.bing.net/th?id=OIP.925o4UY1WdELT1MuNZZWDwHaHa&pid=Api&P=0', BrandName: '9', school: 'Divine Child International School, Adalaj',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Gujarati',));
//     productList.add(ProductList(title: "Hindi", price: "90", discountPrice: "50", discount: "8", image: 'https://isteam.wsimg.com/ip/a68ccc00-d53d-11e5-892b-14feb5d41b49/ols/17065_original/:/rs=w:600,h:600', BrandName: '4', school: 'Nirman High School, Vastrapur', boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Mathematices',));
//
//     confirmedList.add(ConfirmedList(name: "MBV31", order: "22/02/2023", pickup: "12/03/2023", quantity: "2", amount: "897 NRP"));
//     confirmedList.add(ConfirmedList(name: "MBV42", order: "30/01/2023", pickup: "12/03/2023", quantity: "4", amount: "257 NRP"));
//     confirmedList.add(ConfirmedList(name: "MBV55", order: "29/02/2023", pickup: "12/03/2023", quantity: "7", amount: "34 NRP"));
//     confirmedList.add(ConfirmedList(name: "MBV86", order: "21/03/2023", pickup: "12/03/2023", quantity: "1", amount: "58 NRP"));
//     confirmedList.add(ConfirmedList(name: "MBV23", order: "23/01/2023", pickup: "12/03/2023", quantity: "9", amount: "87 NRP"));
//     confirmedList.add(ConfirmedList(name: "MBV97", order: "2/02/2023", pickup: "12/03/2023", quantity: "6", amount: "78 NRP"));
//     confirmedList.add(ConfirmedList(name: "MBV75", order: "5/01/2023", pickup: "12/03/2023", quantity: "2", amount: "89 NRP"));
//     confirmedList.add(ConfirmedList(name: "MBV83", order: "17/03/2023", pickup: "12/03/2023", quantity: "4", amount: "246 NRP"));
//     confirmedList.add(ConfirmedList(name: "MBV278", order: "18/03/2023", pickup: "12/03/2023", quantity: "0", amount: "95 NRP"));
//     confirmedList.add(ConfirmedList(name: "MBV195", order: "20/01/2023", pickup: "12/03/2023", quantity: "3", amount: "034 NRP"));
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return
//       //_isLoading ? const Center(child: CircularProgressIndicator(),) :
//     ListView.builder(
//       shrinkWrap: true,
//         itemCount: orderList.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Padding(
//             padding: const EdgeInsets.all(10),
//             child: Card(
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text("Order:"),
//                           Container(
//                               margin: const EdgeInsets.only(right: 145),
//                               child: Text(orderList[index].name,style: const TextStyle(color: Colors.grey),)),
//                           Text(orderList[index].order,style: const TextStyle(color: Colors.red)),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text("Pick up date:"),
//                           Container(
//                               margin: const EdgeInsets.only(right: 155),
//                               child: Text( orderList[index].pickup,style: const TextStyle(color: Colors.grey),)),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text("Quantity:"),
//                           Container(
//                               margin: const EdgeInsets.only(right: 70),
//                               child: Text(orderList[index].quantity,style: const TextStyle(color: Colors.grey),)),
//                           const Text("Total Amount:",style: TextStyle(fontWeight: FontWeight.bold),),
//                           Text(orderList[index].amount,style: const TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold)),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           ElevatedButton(
//                             style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.cyan),
//                             onPressed: (){
//                               Navigator.push(context,MaterialPageRoute(builder: (context) => Order_Detail_Screen(name: orderList[index].name, order: orderList[index].order, pickup: orderList[index].pickup, quantity: orderList[index].quantity, amount: orderList[index].amount, image: productList[index].image,  price: productList[index].price, title: productList[index].title,),));
//                             },
//                             child: const Center(
//                               child: Text("Details",style: TextStyle(color: Colors.cyan)),
//                             ),
//                           ),
//                           const Text("Confirmed",style: TextStyle(color: Colors.green)),
//                         ],
//                       ),
//                     ),
//                   ],)
//             ),
//           );
//         }
//     );
//   }
// }
//
// class Cancel extends StatefulWidget {
//   const Cancel({Key? key}) : super(key: key);
//
//   @override
//   State<Cancel> createState() => _CancelState();
// }
//
// class _CancelState extends State<Cancel> {
//   List<CancelledList> cancelledList = [];
//   List<OrderList> orderList = [];
//   List<ProductList> productList = [];
//
//   // final String url = "";
//   // bool _isLoading = false;
//   // List<OrderListData> orderApi = [];
//
//   // Future<List<OrderListData>> getDataList() async {
//   //   Map data = {
//   //     'user_id':"11",
//   //     'order_type':"5"
//   //   };
//   //   final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}orderList");
//   //   var response = await http.post(url,body: data);
//   //   if(response.statusCode == 200){
//   //     var data = json.decode(response.body);
//   //     var rest = data["data"] as List;
//   //     orderApi = rest.map<OrderListData>((e) => OrderListData.fromJsonMap(e)).toList();
//   //     setState(() {
//   //       _isLoading = false;
//   //     });
//   //     print("orderApi");
//   //     print(response.body);
//   //   }
//   //   return orderApi;
//   // }
//
//
//   @override
//   void initState() {
//     // _isLoading = true;
//     // getDataList();
//     orderList.add(OrderList(name: "MBV31", order: "22/02/2023", pickup: "12/03/2023", quantity: "2", amount: "897 NRP"));
//     orderList.add(OrderList(name: "MBV42", order: "30/01/2023", pickup: "12/03/2023", quantity: "4", amount: "257 NRP"));
//     orderList.add(OrderList(name: "MBV55", order: "29/02/2023", pickup: "12/03/2023", quantity: "7", amount: "34 NRP"));
//     orderList.add(OrderList(name: "MBV86", order: "21/03/2023", pickup: "12/03/2023", quantity: "1", amount: "58 NRP"));
//     orderList.add(OrderList(name: "MBV23", order: "23/01/2023", pickup: "12/03/2023", quantity: "9", amount: "87 NRP"));
//     orderList.add(OrderList(name: "MBV97", order: "2/02/2023", pickup: "12/03/2023", quantity: "6", amount: "78 NRP"));
//     orderList.add(OrderList(name: "MBV75", order: "5/01/2023", pickup: "12/03/2023", quantity: "2", amount: "89 NRP"));
//     orderList.add(OrderList(name: "MBV83", order: "17/03/2023", pickup: "12/03/2023", quantity: "4", amount: "246 NRP"));
//     orderList.add(OrderList(name: "MBV278", order: "18/03/2023", pickup: "12/03/2023", quantity: "0", amount: "95 NRP"));
//     orderList.add(OrderList(name: "MBV195", order: "20/01/2023", pickup: "12/03/2023", quantity: "3", amount: "034 NRP"));
//
//     productList.add(ProductList(title: "English", price: "212", discountPrice: "235", discount: "10", image: 'https://tse4.mm.bing.net/th?id=OIP.RixDGRn511lPDg-5npfZPwHaJk&pid=Api&P=0', BrandName: 'Nursery', school: 'Delhi Public School, Bopal', boardName: 'Gujarat Board', mediumName: 'Gujarati', standardName: '2', subjectName: 'English',));
//     productList.add(ProductList(title: "Science", price: "100", discountPrice: "125", discount: "2", image: 'https://tse4.mm.bing.net/th?id=OIP.OUbBjDJU3SUVps8BS7zsdAHaHa&pid=Api&P=0', BrandName: '1', school: 'Udgam School For Children, Thaltej',  boardName: 'CBSC', mediumName: 'English', standardName: '5', subjectName: 'Gujarati',));
//     productList.add(ProductList(title: "English Grammar", price: "200", discountPrice: "235", discount: "15", image: 'https://tse1.mm.bing.net/th?id=OIP.59FDYCnsskmxXdC8KoIbDAHaJl&pid=Api&P=0', BrandName: '1', school: 'Vedant International School, Isanpur',  boardName: 'Gujarat', mediumName: 'Hindi', standardName: '1', subjectName: 'Mathematices',));
//     productList.add(ProductList(title: "Gujarati", price: "150", discountPrice: "80", discount: "8", image: 'https://2.bp.blogspot.com/--NACPs3p9I0/WPG_cC4NQaI/AAAAAAAAYJE/Q-cgrW0brvcQstSP8WIkgiXmpf7D-5P5gCEw/s1600/1.jpg', BrandName: '6', school: 'Podar International School, Chandkheda', boardName: 'ICSC', mediumName: 'English', standardName: '8', subjectName: 'Hindi',));
//     productList.add(ProductList(title: "Mathematics", price: "220", discountPrice: "120", discount: "10", image: 'https://tse4.mm.bing.net/th?id=OIP.LgFvGN8I4LLmR7JB0jXQ8QHaHa&pid=Api&P=0', BrandName: '5', school: 'Adani Vidya Mandir, Makarba',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '10', subjectName: 'Social Science',));
//     productList.add(ProductList(title: "Hindi", price: "90", discountPrice: "50", discount: "18", image: 'https://tse2.mm.bing.net/th?id=OIP._idKDk6rskubf16dm8p3LAHaJa&pid=Api&P=0', BrandName: '1', school: 'Anand Niketan, Maninagar', boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Science',));
//     productList.add(ProductList(title: "Computer", price: "100", discountPrice: "80", discount: "2", image: 'https://uploads-ssl.webflow.com/5f5cf4627107791c0412287b/60c9bfdd9364ce105f5c12d0_Computer%20Book%20-8-p-1080.jpeg', BrandName: '8', school: 'Calorx Public School, Ghatlodia',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'English Grammer',));
//     productList.add(ProductList(title: "Science", price: "160", discountPrice: "120", discount: "20", image: 'https://tse3.mm.bing.net/th?id=OIP.r1T31UTwUS-7cFLOYnJEpQAAAA&pid=Api&P=0', BrandName: '10', school: 'Cosmos Castle International School, S G Road',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Computer',));
//     productList.add(ProductList(title: "Social Science", price: "250", discountPrice: "200", discount: "5", image: 'https://tse2.mm.bing.net/th?id=OIP.925o4UY1WdELT1MuNZZWDwHaHa&pid=Api&P=0', BrandName: '9', school: 'Divine Child International School, Adalaj',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Gujarati',));
//     productList.add(ProductList(title: "Hindi", price: "90", discountPrice: "50", discount: "8", image: 'https://isteam.wsimg.com/ip/a68ccc00-d53d-11e5-892b-14feb5d41b49/ols/17065_original/:/rs=w:600,h:600', BrandName: '4', school: 'Nirman High School, Vastrapur', boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Mathematices',));
//
//     cancelledList.add(CancelledList(name: "MBV31", order: "22/02/2023", pickup: "12/03/2023", quantity: "2", amount: "897 NRP"));
//     cancelledList.add(CancelledList(name: "MBV42", order: "30/01/2023", pickup: "12/03/2023", quantity: "4", amount: "257 NRP"));
//     cancelledList.add(CancelledList(name: "MBV55", order: "29/02/2023", pickup: "12/03/2023", quantity: "7", amount: "34 NRP"));
//     cancelledList.add(CancelledList(name: "MBV86", order: "21/03/2023", pickup: "12/03/2023", quantity: "1", amount: "58 NRP"));
//     cancelledList.add(CancelledList(name: "MBV23", order: "23/01/2023", pickup: "12/03/2023", quantity: "9", amount: "87 NRP"));
//     cancelledList.add(CancelledList(name: "MBV97", order: "2/02/2023", pickup: "12/03/2023", quantity: "6", amount: "78 NRP"));
//     cancelledList.add(CancelledList(name: "MBV75", order: "5/01/2023", pickup: "12/03/2023", quantity: "2", amount: "89 NRP"));
//     cancelledList.add(CancelledList(name: "MBV83", order: "17/03/2023", pickup: "12/03/2023", quantity: "4", amount: "246 NRP"));
//     cancelledList.add(CancelledList(name: "MBV278", order: "18/03/2023", pickup: "12/03/2023", quantity: "0", amount: "95 NRP"));
//     cancelledList.add(CancelledList(name: "MBV195", order: "20/01/2023", pickup: "12/03/2023", quantity: "3", amount: "034 NRP"));
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return
//       //_isLoading ? const Center(child: CircularProgressIndicator(),) :
//     ListView.builder(
//       shrinkWrap: true,
//         itemCount: orderList.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Padding(
//             padding: const EdgeInsets.all(10),
//             child: Card(
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text("Order:"),
//                           Container(
//                               margin: const EdgeInsets.only(right: 145),
//                               child: Text(orderList[index].name,style: const TextStyle(color: Colors.grey),)),
//                           Text(orderList[index].order,style: const TextStyle(color: Colors.red)),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text("Pick up date:"),
//                           Container(
//                               margin: const EdgeInsets.only(right: 155),
//                               child: Text(orderList[index].pickup,style: const TextStyle(color: Colors.grey),)),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text("Quantity:"),
//                           Container(
//                               margin: const EdgeInsets.only(right: 70),
//                               child: Text(orderList[index].quantity,style: const TextStyle(color: Colors.grey),)),
//                           const Text("Total Amount:",style: TextStyle(fontWeight: FontWeight.bold),),
//                           Text(orderList[index].amount,style: const TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold)),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           ElevatedButton(
//                             style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.cyan),
//                             onPressed: (){
//                               Navigator.push(context,MaterialPageRoute(builder: (context) => Order_Detail_Screen(name: orderList[index].name, order: orderList[index].order, pickup: orderList[index].pickup, quantity: orderList[index].quantity, amount: orderList[index].amount, image: productList[index].image,  price: productList[index].price, title: productList[index].title,),));
//                             },
//                             child: const Center(
//                               child: Text("Details",style: TextStyle(color: Colors.cyan)),
//                             ),
//                           ),
//                           const Text("Cancelled",style: TextStyle(color: Colors.green)),
//                         ],
//                       ),
//                     ),
//                   ],)
//             ),
//           );
//         }
//     );
//   }
// }
//
// class OrderList {
//   final String name;
//   final String order;
//   final String pickup;
//   final String quantity;
//   final String amount;
//
//   OrderList({
//     required this.name,
//     required this.order,
//     required this.pickup,
//     required this.quantity,
//     required this.amount
//   });
// }
//
// class ConfirmedList {
//   final String name;
//   final String order;
//   final String pickup;
//   final String quantity;
//   final String amount;
//
//   ConfirmedList({
//     required this.name,
//     required this.order,
//     required this.pickup,
//     required this.quantity,
//     required this.amount
//   });
// }
//
// class CancelledList {
//   final String name;
//   final String order;
//   final String pickup;
//   final String quantity;
//   final String amount;
//
//   CancelledList({
//     required this.name,
//     required this.order,
//     required this.pickup,
//     required this.quantity,
//     required this.amount
//   });
// }
// class ProductList{
//   final String image;
//   final String title;
//   final String BrandName;
//   final String price;
//   final String discountPrice;
//   final String discount;
//   final String school;
//   final String boardName;
//   final String mediumName;
//   final String standardName;
//   final String subjectName;
//   bool isAddedToCart = false;
//
//   ProductList({
//     required this.image,
//     required this.title,
//     required this.BrandName,
//     required this.price,
//     required this.discountPrice,
//     required this.discount,
//     required this.school,
//     required this.boardName,
//     required this.mediumName,
//     required this.standardName,
//     required this.subjectName
//   });
// }

import 'package:flutter/material.dart';

import 'Cart.dart';
import 'Favorite.dart';
import 'Order_Detail_screen.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Order"),
        actions:<Widget>[
          IconButton(
            icon: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Favorite(),));
            },
          ),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart(),));
          }, icon: const Icon(Icons.shopping_cart,color: Colors.white,))
        ],),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              padding: const EdgeInsets.only(right: 5,left: 5,top: 5,bottom: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: const [
                  Text("Pending",style: TextStyle(fontSize: 15),),
                  Text("Confirmed",style: TextStyle(fontSize: 15)),
                  Text("Cancelled",style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  Pending(),
                  Confirmed(),
                  Cancelled(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Pending extends StatefulWidget{
  const Pending({super.key});

  @override
  State<StatefulWidget> createState() {
    return PendingState();
  }
}

class PendingState extends State<Pending>{
  List<OrderList> orderList = [];
  List<ProductList> productList = [];

  @override
  void initState() {
    orderList.add(OrderList(name: "MBV31", order: "22/02/2023", pickup: "12/03/2023", quantity: "2", amount: "897 NRP"));
    orderList.add(OrderList(name: "MBV42", order: "30/01/2023", pickup: "12/03/2023", quantity: "4", amount: "257 NRP"));
    orderList.add(OrderList(name: "MBV55", order: "29/02/2023", pickup: "12/03/2023", quantity: "7", amount: "34 NRP"));
    orderList.add(OrderList(name: "MBV86", order: "21/03/2023", pickup: "12/03/2023", quantity: "1", amount: "58 NRP"));
    orderList.add(OrderList(name: "MBV23", order: "23/01/2023", pickup: "12/03/2023", quantity: "9", amount: "87 NRP"));
    orderList.add(OrderList(name: "MBV97", order: "2/02/2023", pickup: "12/03/2023", quantity: "6", amount: "78 NRP"));
    orderList.add(OrderList(name: "MBV75", order: "5/01/2023", pickup: "12/03/2023", quantity: "2", amount: "89 NRP"));
    orderList.add(OrderList(name: "MBV83", order: "17/03/2023", pickup: "12/03/2023", quantity: "4", amount: "246 NRP"));
    orderList.add(OrderList(name: "MBV278", order: "18/03/2023", pickup: "12/03/2023", quantity: "0", amount: "95 NRP"));
    orderList.add(OrderList(name: "MBV195", order: "20/01/2023", pickup: "12/03/2023", quantity: "3", amount: "034 NRP"));

    productList.add(ProductList(title: "English", price: "212", discountPrice: "235", discount: "10", image: 'https://tse4.mm.bing.net/th?id=OIP.RixDGRn511lPDg-5npfZPwHaJk&pid=Api&P=0', BrandName: 'Nursery', school: 'Delhi Public School, Bopal', boardName: 'Gujarat Board', mediumName: 'Gujarati', standardName: '2', subjectName: 'English',));
    productList.add(ProductList(title: "Science", price: "100", discountPrice: "125", discount: "2", image: 'https://tse4.mm.bing.net/th?id=OIP.OUbBjDJU3SUVps8BS7zsdAHaHa&pid=Api&P=0', BrandName: '1', school: 'Udgam School For Children, Thaltej',  boardName: 'CBSC', mediumName: 'English', standardName: '5', subjectName: 'Gujarati',));
    productList.add(ProductList(title: "English Grammar", price: "200", discountPrice: "235", discount: "15", image: 'https://tse1.mm.bing.net/th?id=OIP.59FDYCnsskmxXdC8KoIbDAHaJl&pid=Api&P=0', BrandName: '1', school: 'Vedant International School, Isanpur',  boardName: 'Gujarat', mediumName: 'Hindi', standardName: '1', subjectName: 'Mathematices',));
    productList.add(ProductList(title: "Gujarati", price: "150", discountPrice: "80", discount: "8", image: 'https://2.bp.blogspot.com/--NACPs3p9I0/WPG_cC4NQaI/AAAAAAAAYJE/Q-cgrW0brvcQstSP8WIkgiXmpf7D-5P5gCEw/s1600/1.jpg', BrandName: '6', school: 'Podar International School, Chandkheda', boardName: 'ICSC', mediumName: 'English', standardName: '8', subjectName: 'Hindi',));
    productList.add(ProductList(title: "Mathematics", price: "220", discountPrice: "120", discount: "10", image: 'https://tse4.mm.bing.net/th?id=OIP.LgFvGN8I4LLmR7JB0jXQ8QHaHa&pid=Api&P=0', BrandName: '5', school: 'Adani Vidya Mandir, Makarba',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '10', subjectName: 'Social Science',));
    productList.add(ProductList(title: "Hindi", price: "90", discountPrice: "50", discount: "18", image: 'https://tse2.mm.bing.net/th?id=OIP._idKDk6rskubf16dm8p3LAHaJa&pid=Api&P=0', BrandName: '1', school: 'Anand Niketan, Maninagar', boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Science',));
    productList.add(ProductList(title: "Computer", price: "100", discountPrice: "80", discount: "2", image: 'https://uploads-ssl.webflow.com/5f5cf4627107791c0412287b/60c9bfdd9364ce105f5c12d0_Computer%20Book%20-8-p-1080.jpeg', BrandName: '8', school: 'Calorx Public School, Ghatlodia',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'English Grammer',));
    productList.add(ProductList(title: "Science", price: "160", discountPrice: "120", discount: "20", image: 'https://tse3.mm.bing.net/th?id=OIP.r1T31UTwUS-7cFLOYnJEpQAAAA&pid=Api&P=0', BrandName: '10', school: 'Cosmos Castle International School, S G Road',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Computer',));
    productList.add(ProductList(title: "Social Science", price: "250", discountPrice: "200", discount: "5", image: 'https://tse2.mm.bing.net/th?id=OIP.925o4UY1WdELT1MuNZZWDwHaHa&pid=Api&P=0', BrandName: '9', school: 'Divine Child International School, Adalaj',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Gujarati',));
    productList.add(ProductList(title: "Hindi", price: "90", discountPrice: "50", discount: "8", image: 'https://isteam.wsimg.com/ip/a68ccc00-d53d-11e5-892b-14feb5d41b49/ols/17065_original/:/rs=w:600,h:600', BrandName: '4', school: 'Nirman High School, Vastrapur', boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Mathematices',));

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: orderList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
                child:
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Order:"),
                          Container(
                              margin: const EdgeInsets.only(right: 145),
                              child: Text(orderList[index].name,style: const TextStyle(color: Colors.grey),)),
                          Text(orderList[index].order,style: const TextStyle(color: Colors.red)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Pick up date:"),
                          Container(
                              margin: const EdgeInsets.only(right: 155),
                              child: Text( orderList[index].pickup,style: const TextStyle(color: Colors.grey),)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Quantity:"),
                          Container(
                              margin: const EdgeInsets.only(right: 70),
                              child: Text(orderList[index].quantity,style: const TextStyle(color: Colors.grey),)),
                          const Text("Total Amount:",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(orderList[index].amount,style: const TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.cyan),
                            onPressed: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Order_Detail_Screen(name: orderList[index].name, order: orderList[index].order, pickup: orderList[index].pickup, quantity: orderList[index].quantity, amount: orderList[index].amount, image: productList[index].image,  price: productList[index].price, title: productList[index].title,),));
                            },
                            child: const Center(
                              child: Text("Details",style: TextStyle(color: Colors.cyan)),
                            ),
                          ),
                          const Text("Pending",style: TextStyle(color: Colors.green)),
                        ],
                      ),
                    ),
                  ],)
            ),
          );
        }
    );
  }
}

class Confirmed extends StatefulWidget{
  const Confirmed({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConfirmedState();
  }
}

class ConfirmedState extends State<Confirmed>{
  List<ConfirmedList> confirmedList = [];
  List<OrderList> orderList = [];
  List<ProductList> productList = [];

  @override
  void initState() {
    orderList.add(OrderList(name: "MBV31", order: "22/02/2023", pickup: "12/03/2023", quantity: "2", amount: "897 NRP"));
    orderList.add(OrderList(name: "MBV42", order: "30/01/2023", pickup: "12/03/2023", quantity: "4", amount: "257 NRP"));
    orderList.add(OrderList(name: "MBV55", order: "29/02/2023", pickup: "12/03/2023", quantity: "7", amount: "34 NRP"));
    orderList.add(OrderList(name: "MBV86", order: "21/03/2023", pickup: "12/03/2023", quantity: "1", amount: "58 NRP"));
    orderList.add(OrderList(name: "MBV23", order: "23/01/2023", pickup: "12/03/2023", quantity: "9", amount: "87 NRP"));
    orderList.add(OrderList(name: "MBV97", order: "2/02/2023", pickup: "12/03/2023", quantity: "6", amount: "78 NRP"));
    orderList.add(OrderList(name: "MBV75", order: "5/01/2023", pickup: "12/03/2023", quantity: "2", amount: "89 NRP"));
    orderList.add(OrderList(name: "MBV83", order: "17/03/2023", pickup: "12/03/2023", quantity: "4", amount: "246 NRP"));
    orderList.add(OrderList(name: "MBV278", order: "18/03/2023", pickup: "12/03/2023", quantity: "0", amount: "95 NRP"));
    orderList.add(OrderList(name: "MBV195", order: "20/01/2023", pickup: "12/03/2023", quantity: "3", amount: "034 NRP"));

    productList.add(ProductList(title: "English", price: "212", discountPrice: "235", discount: "10", image: 'https://tse4.mm.bing.net/th?id=OIP.RixDGRn511lPDg-5npfZPwHaJk&pid=Api&P=0', BrandName: 'Nursery', school: 'Delhi Public School, Bopal', boardName: 'Gujarat Board', mediumName: 'Gujarati', standardName: '2', subjectName: 'English',));
    productList.add(ProductList(title: "Science", price: "100", discountPrice: "125", discount: "2", image: 'https://tse4.mm.bing.net/th?id=OIP.OUbBjDJU3SUVps8BS7zsdAHaHa&pid=Api&P=0', BrandName: '1', school: 'Udgam School For Children, Thaltej',  boardName: 'CBSC', mediumName: 'English', standardName: '5', subjectName: 'Gujarati',));
    productList.add(ProductList(title: "English Grammar", price: "200", discountPrice: "235", discount: "15", image: 'https://tse1.mm.bing.net/th?id=OIP.59FDYCnsskmxXdC8KoIbDAHaJl&pid=Api&P=0', BrandName: '1', school: 'Vedant International School, Isanpur',  boardName: 'Gujarat', mediumName: 'Hindi', standardName: '1', subjectName: 'Mathematices',));
    productList.add(ProductList(title: "Gujarati", price: "150", discountPrice: "80", discount: "8", image: 'https://2.bp.blogspot.com/--NACPs3p9I0/WPG_cC4NQaI/AAAAAAAAYJE/Q-cgrW0brvcQstSP8WIkgiXmpf7D-5P5gCEw/s1600/1.jpg', BrandName: '6', school: 'Podar International School, Chandkheda', boardName: 'ICSC', mediumName: 'English', standardName: '8', subjectName: 'Hindi',));
    productList.add(ProductList(title: "Mathematics", price: "220", discountPrice: "120", discount: "10", image: 'https://tse4.mm.bing.net/th?id=OIP.LgFvGN8I4LLmR7JB0jXQ8QHaHa&pid=Api&P=0', BrandName: '5', school: 'Adani Vidya Mandir, Makarba',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '10', subjectName: 'Social Science',));
    productList.add(ProductList(title: "Hindi", price: "90", discountPrice: "50", discount: "18", image: 'https://tse2.mm.bing.net/th?id=OIP._idKDk6rskubf16dm8p3LAHaJa&pid=Api&P=0', BrandName: '1', school: 'Anand Niketan, Maninagar', boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Science',));
    productList.add(ProductList(title: "Computer", price: "100", discountPrice: "80", discount: "2", image: 'https://uploads-ssl.webflow.com/5f5cf4627107791c0412287b/60c9bfdd9364ce105f5c12d0_Computer%20Book%20-8-p-1080.jpeg', BrandName: '8', school: 'Calorx Public School, Ghatlodia',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'English Grammer',));
    productList.add(ProductList(title: "Science", price: "160", discountPrice: "120", discount: "20", image: 'https://tse3.mm.bing.net/th?id=OIP.r1T31UTwUS-7cFLOYnJEpQAAAA&pid=Api&P=0', BrandName: '10', school: 'Cosmos Castle International School, S G Road',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Computer',));
    productList.add(ProductList(title: "Social Science", price: "250", discountPrice: "200", discount: "5", image: 'https://tse2.mm.bing.net/th?id=OIP.925o4UY1WdELT1MuNZZWDwHaHa&pid=Api&P=0', BrandName: '9', school: 'Divine Child International School, Adalaj',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Gujarati',));
    productList.add(ProductList(title: "Hindi", price: "90", discountPrice: "50", discount: "8", image: 'https://isteam.wsimg.com/ip/a68ccc00-d53d-11e5-892b-14feb5d41b49/ols/17065_original/:/rs=w:600,h:600', BrandName: '4', school: 'Nirman High School, Vastrapur', boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Mathematices',));

    confirmedList.add(ConfirmedList(name: "MBV31", order: "22/02/2023", pickup: "12/03/2023", quantity: "2", amount: "897 NRP"));
    confirmedList.add(ConfirmedList(name: "MBV42", order: "30/01/2023", pickup: "12/03/2023", quantity: "4", amount: "257 NRP"));
    confirmedList.add(ConfirmedList(name: "MBV55", order: "29/02/2023", pickup: "12/03/2023", quantity: "7", amount: "34 NRP"));
    confirmedList.add(ConfirmedList(name: "MBV86", order: "21/03/2023", pickup: "12/03/2023", quantity: "1", amount: "58 NRP"));
    confirmedList.add(ConfirmedList(name: "MBV23", order: "23/01/2023", pickup: "12/03/2023", quantity: "9", amount: "87 NRP"));
    confirmedList.add(ConfirmedList(name: "MBV97", order: "2/02/2023", pickup: "12/03/2023", quantity: "6", amount: "78 NRP"));
    confirmedList.add(ConfirmedList(name: "MBV75", order: "5/01/2023", pickup: "12/03/2023", quantity: "2", amount: "89 NRP"));
    confirmedList.add(ConfirmedList(name: "MBV83", order: "17/03/2023", pickup: "12/03/2023", quantity: "4", amount: "246 NRP"));
    confirmedList.add(ConfirmedList(name: "MBV278", order: "18/03/2023", pickup: "12/03/2023", quantity: "0", amount: "95 NRP"));
    confirmedList.add(ConfirmedList(name: "MBV195", order: "20/01/2023", pickup: "12/03/2023", quantity: "3", amount: "034 NRP"));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Order:"),
                          Container(
                              margin: const EdgeInsets.only(right: 145),
                              child: Text(confirmedList[index].name,style: const TextStyle(color: Colors.grey),)),
                          Text(confirmedList[index].order,style: const TextStyle(color: Colors.red)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Pick up date:"),
                          Container(
                              margin: const EdgeInsets.only(right: 155),
                              child: Text( confirmedList[index].pickup,style: const TextStyle(color: Colors.grey),)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Quantity:"),
                          Container(
                              margin: const EdgeInsets.only(right: 70),
                              child: Text(confirmedList[index].quantity,style: const TextStyle(color: Colors.grey),)),
                          const Text("Total Amount:",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(confirmedList[index].amount,style: const TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.cyan),
                            onPressed: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Order_Detail_Screen(name: orderList[index].name, order: orderList[index].order, pickup: orderList[index].pickup, quantity: orderList[index].quantity, amount: orderList[index].amount, image: productList[index].image,  price: productList[index].price, title: productList[index].title,),));
                            },
                            child: const Center(
                              child: Text("Details",style: TextStyle(color: Colors.cyan)),
                            ),
                          ),
                          const Text("Confirmed",style: TextStyle(color: Colors.green)),
                        ],
                      ),
                    ),
                  ],)
            ),
          );
        }
    );
  }
}

class Cancelled extends StatefulWidget{
  const Cancelled({super.key});

  @override
  State<StatefulWidget> createState() {
    return CancelledState();
  }
}

class CancelledState extends State<Cancelled>{
  List<CancelledList> cancelledList = [];
  List<OrderList> orderList = [];
  List<ProductList> productList = [];

  @override
  void initState() {
    orderList.add(OrderList(name: "MBV31", order: "22/02/2023", pickup: "12/03/2023", quantity: "2", amount: "897 NRP"));
    orderList.add(OrderList(name: "MBV42", order: "30/01/2023", pickup: "12/03/2023", quantity: "4", amount: "257 NRP"));
    orderList.add(OrderList(name: "MBV55", order: "29/02/2023", pickup: "12/03/2023", quantity: "7", amount: "34 NRP"));
    orderList.add(OrderList(name: "MBV86", order: "21/03/2023", pickup: "12/03/2023", quantity: "1", amount: "58 NRP"));
    orderList.add(OrderList(name: "MBV23", order: "23/01/2023", pickup: "12/03/2023", quantity: "9", amount: "87 NRP"));
    orderList.add(OrderList(name: "MBV97", order: "2/02/2023", pickup: "12/03/2023", quantity: "6", amount: "78 NRP"));
    orderList.add(OrderList(name: "MBV75", order: "5/01/2023", pickup: "12/03/2023", quantity: "2", amount: "89 NRP"));
    orderList.add(OrderList(name: "MBV83", order: "17/03/2023", pickup: "12/03/2023", quantity: "4", amount: "246 NRP"));
    orderList.add(OrderList(name: "MBV278", order: "18/03/2023", pickup: "12/03/2023", quantity: "0", amount: "95 NRP"));
    orderList.add(OrderList(name: "MBV195", order: "20/01/2023", pickup: "12/03/2023", quantity: "3", amount: "034 NRP"));

    productList.add(ProductList(title: "English", price: "212", discountPrice: "235", discount: "10", image: 'https://tse4.mm.bing.net/th?id=OIP.RixDGRn511lPDg-5npfZPwHaJk&pid=Api&P=0', BrandName: 'Nursery', school: 'Delhi Public School, Bopal', boardName: 'Gujarat Board', mediumName: 'Gujarati', standardName: '2', subjectName: 'English',));
    productList.add(ProductList(title: "Science", price: "100", discountPrice: "125", discount: "2", image: 'https://tse4.mm.bing.net/th?id=OIP.OUbBjDJU3SUVps8BS7zsdAHaHa&pid=Api&P=0', BrandName: '1', school: 'Udgam School For Children, Thaltej',  boardName: 'CBSC', mediumName: 'English', standardName: '5', subjectName: 'Gujarati',));
    productList.add(ProductList(title: "English Grammar", price: "200", discountPrice: "235", discount: "15", image: 'https://tse1.mm.bing.net/th?id=OIP.59FDYCnsskmxXdC8KoIbDAHaJl&pid=Api&P=0', BrandName: '1', school: 'Vedant International School, Isanpur',  boardName: 'Gujarat', mediumName: 'Hindi', standardName: '1', subjectName: 'Mathematices',));
    productList.add(ProductList(title: "Gujarati", price: "150", discountPrice: "80", discount: "8", image: 'https://2.bp.blogspot.com/--NACPs3p9I0/WPG_cC4NQaI/AAAAAAAAYJE/Q-cgrW0brvcQstSP8WIkgiXmpf7D-5P5gCEw/s1600/1.jpg', BrandName: '6', school: 'Podar International School, Chandkheda', boardName: 'ICSC', mediumName: 'English', standardName: '8', subjectName: 'Hindi',));
    productList.add(ProductList(title: "Mathematics", price: "220", discountPrice: "120", discount: "10", image: 'https://tse4.mm.bing.net/th?id=OIP.LgFvGN8I4LLmR7JB0jXQ8QHaHa&pid=Api&P=0', BrandName: '5', school: 'Adani Vidya Mandir, Makarba',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '10', subjectName: 'Social Science',));
    productList.add(ProductList(title: "Hindi", price: "90", discountPrice: "50", discount: "18", image: 'https://tse2.mm.bing.net/th?id=OIP._idKDk6rskubf16dm8p3LAHaJa&pid=Api&P=0', BrandName: '1', school: 'Anand Niketan, Maninagar', boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Science',));
    productList.add(ProductList(title: "Computer", price: "100", discountPrice: "80", discount: "2", image: 'https://uploads-ssl.webflow.com/5f5cf4627107791c0412287b/60c9bfdd9364ce105f5c12d0_Computer%20Book%20-8-p-1080.jpeg', BrandName: '8', school: 'Calorx Public School, Ghatlodia',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'English Grammer',));
    productList.add(ProductList(title: "Science", price: "160", discountPrice: "120", discount: "20", image: 'https://tse3.mm.bing.net/th?id=OIP.r1T31UTwUS-7cFLOYnJEpQAAAA&pid=Api&P=0', BrandName: '10', school: 'Cosmos Castle International School, S G Road',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Computer',));
    productList.add(ProductList(title: "Social Science", price: "250", discountPrice: "200", discount: "5", image: 'https://tse2.mm.bing.net/th?id=OIP.925o4UY1WdELT1MuNZZWDwHaHa&pid=Api&P=0', BrandName: '9', school: 'Divine Child International School, Adalaj',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Gujarati',));
    productList.add(ProductList(title: "Hindi", price: "90", discountPrice: "50", discount: "8", image: 'https://isteam.wsimg.com/ip/a68ccc00-d53d-11e5-892b-14feb5d41b49/ols/17065_original/:/rs=w:600,h:600', BrandName: '4', school: 'Nirman High School, Vastrapur', boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Mathematices',));


    cancelledList.add(CancelledList(name: "MBV31", order: "22/02/2023", pickup: "12/03/2023", quantity: "2", amount: "897 NRP"));
    cancelledList.add(CancelledList(name: "MBV42", order: "30/01/2023", pickup: "12/03/2023", quantity: "4", amount: "257 NRP"));
    cancelledList.add(CancelledList(name: "MBV55", order: "29/02/2023", pickup: "12/03/2023", quantity: "7", amount: "34 NRP"));
    cancelledList.add(CancelledList(name: "MBV86", order: "21/03/2023", pickup: "12/03/2023", quantity: "1", amount: "58 NRP"));
    cancelledList.add(CancelledList(name: "MBV23", order: "23/01/2023", pickup: "12/03/2023", quantity: "9", amount: "87 NRP"));
    cancelledList.add(CancelledList(name: "MBV97", order: "2/02/2023", pickup: "12/03/2023", quantity: "6", amount: "78 NRP"));
    cancelledList.add(CancelledList(name: "MBV75", order: "5/01/2023", pickup: "12/03/2023", quantity: "2", amount: "89 NRP"));
    cancelledList.add(CancelledList(name: "MBV83", order: "17/03/2023", pickup: "12/03/2023", quantity: "4", amount: "246 NRP"));
    cancelledList.add(CancelledList(name: "MBV278", order: "18/03/2023", pickup: "12/03/2023", quantity: "0", amount: "95 NRP"));
    cancelledList.add(CancelledList(name: "MBV195", order: "20/01/2023", pickup: "12/03/2023", quantity: "3", amount: "034 NRP"));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Order:"),
                          Container(
                              margin: const EdgeInsets.only(right: 145),
                              child: Text(cancelledList[index].name,style: const TextStyle(color: Colors.grey),)),
                          Text(cancelledList[index].order,style: const TextStyle(color: Colors.red)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Pick up date:"),
                          Container(
                              margin: const EdgeInsets.only(right: 155),
                              child: Text( cancelledList[index].pickup,style: const TextStyle(color: Colors.grey),)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Quantity:"),
                          Container(
                              margin: const EdgeInsets.only(right: 70),
                              child: Text(cancelledList[index].quantity,style: const TextStyle(color: Colors.grey),)),
                          const Text("Total Amount:",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(cancelledList[index].amount,style: const TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.cyan),
                            onPressed: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Order_Detail_Screen(name: orderList[index].name, order: orderList[index].order, pickup: orderList[index].pickup, quantity: orderList[index].quantity, amount: orderList[index].amount, image: productList[index].image,  price: productList[index].price, title: productList[index].title,),));
                            },
                            child: const Center(
                              child: Text("Details",style: TextStyle(color: Colors.cyan)),
                            ),
                          ),
                          const Text("Cancelled",style: TextStyle(color: Colors.green)),
                        ],
                      ),
                    ),
                  ],)
            ),
          );
        }
    );
  }
}

class OrderList {
  final String name;
  final String order;
  final String pickup;
  final String quantity;
  final String amount;

  OrderList({
    required this.name,
    required this.order,
    required this.pickup,
    required this.quantity,
    required this.amount
  });
}

class ConfirmedList {
  final String name;
  final String order;
  final String pickup;
  final String quantity;
  final String amount;

  ConfirmedList({
    required this.name,
    required this.order,
    required this.pickup,
    required this.quantity,
    required this.amount
  });
}

class CancelledList {
  final String name;
  final String order;
  final String pickup;
  final String quantity;
  final String amount;

  CancelledList({
    required this.name,
    required this.order,
    required this.pickup,
    required this.quantity,
    required this.amount
  });
}
class ProductList{
  final String image;
  final String title;
  final String BrandName;
  final String price;
  final String discountPrice;
  final String discount;
  final String school;
  final String boardName;
  final String mediumName;
  final String standardName;
  final String subjectName;
  bool isAddedToCart = false;

  ProductList({
    required this.image,
    required this.title,
    required this.BrandName,
    required this.price,
    required this.discountPrice,
    required this.discount,
    required this.school,
    required this.boardName,
    required this.mediumName,
    required this.standardName,
    required this.subjectName
  });
}
