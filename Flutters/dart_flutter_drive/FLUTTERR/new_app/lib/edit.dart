// int totalItems = 1;
//
// class CartScreen extends StatefulWidget {
//   const CartScreen({Key? key}) : super(key: key);
//
//   @override
//   State<CartScreen> createState() => _CartScreenState();
// }
//
// class _CartScreenState extends State<CartScreen> {
//   // int addItemsCount = 1;
//   bool _isLoading = false;
//   late CartModel cartList;
//   late SaveWishListModel wishListModel;
//   late RemoveToCartModel removeToCartModel;
//
//
//
//   @override
//   void initState() {
//     _isLoading = true;
//     getCartList();
//     super.initState();
//   }
//

//   Future<void> saveToWishList(String productId)async{
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     Map data ={
//       'user_id':preferences.getString('id'),
//       'product_id': productId,
//     };
//     Uri url = Uri.parse("${STATIONARYCONFIG.base_app_url}saveWish");
//     var response = await http.post(url,body: data);
//     wishListModel = SaveWishListModel.fromJsonMap(json.decode(response.body));
//     if(response.statusCode == 200){
//       if(wishListModel.status == 200){
//         setState(() {
//           _isLoading = false;
//         });
//         Fluttertoast.showToast(
//           msg: wishListModel.message,
//           gravity: ToastGravity.BOTTOM,
//           timeInSecForIosWeb: 2,
//           toastLength: Toast.LENGTH_SHORT,
//         );
//       }else{
//         setState(() {
//           _isLoading = false;
//         });
//       }
//     }else{
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }
//
//   Future<void> removeCart(String productID)async{
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     Map data = {
//       "user_id": preferences.getString("id"),
//       "product_id": productID,
//     };
//     final Uri url = Uri.parse("${STATIONARYCONFIG.base_app_url}removeCart");
//     var response = await http.post(url,body: data);
//     removeToCartModel = RemoveToCartModel.fromJsonMap(json.decode(response.body));
//     if(response.statusCode == 200){
//       if(removeToCartModel.status ==200){
//         setState(() {
//           _isLoading = false;
//         });
//         // Fluttertoast.showToast(
//         //   msg:removeToCartModel.message,
//         //   timeInSecForIosWeb: 2,
//         //   toastLength: Toast.LENGTH_SHORT,
//         //   gravity: ToastGravity.BOTTOM,
//         // );
//       }else{
//         setState(() {
//           _isLoading = false;
//         });
//         // Fluttertoast.showToast(
//         //   msg:removeToCartModel.message,
//         //   timeInSecForIosWeb: 2,
//         //   toastLength: Toast.LENGTH_SHORT,
//         //   gravity: ToastGravity.BOTTOM,
//         // );
//       }
//     }else{
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }
//
//
//   Future<void> getCartList() async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     Map data = {
//       'user_id': preferences.getString("id"),
//     };
//     final Uri url = Uri.parse("${STATIONARYCONFIG.base_app_url}cartList");
//     var response = await http.post(url, body: data);
//     print(response.body);
//     cartList = CartModel.fromJsonMap(json.decode(response.body));
//     if (response.statusCode == 200) {
//       if (cartList.status == 200) {
//         setState(() {
//           _isLoading = false;
//         });
//       } else {
//         setState(() {
//           _isLoading = false;
//         });
//       }
//     } else {
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white.withOpacity(0.9),
//       appBar: AppBar(
//         title: const Text(
//           'Cart',
//         ),
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//               gradient: LinearGradient(colors: [
//                 Colors.blue.shade400,
//                 Colors.deepPurpleAccent.shade200,
//               ])),
//         ),
//       ),
//       body: _isLoading
//           ? const Center(child: CircularProgressIndicator())
//           : SingleChildScrollView(
//       child: cartList.cartData.cartDetails.isEmpty ? Center(child: Text("Data Not Found",style: TextStyle(color: Colors.grey.shade600,fontSize: 20,fontWeight: FontWeight.w500,height: 24),),) : Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//     ListView.builder(
//     padding: const EdgeInsets.symmetric(horizontal: 15),
//     itemCount: cartList.cartData.cartDetails.length,
//     shrinkWrap: true,
//     physics: const NeverScrollableScrollPhysics(),
//     itemBuilder: (context, index) {
//     return Column(
//     children: [
//     Dismissible(
//     confirmDismiss: (direction) {
//     // if (direction == DismissDirection.startToEnd) {
//     return showModalBottomSheet(
//     backgroundColor: Colors.transparent,
//     context: context,
//     builder: (context) {
//     return Container(
//     decoration: const BoxDecoration(
//     color: Colors.white,
//     borderRadius: BorderRadius.only(
//     topLeft: Radius.circular(15),
//     topRight: Radius.circular(15),
//     ),
//     ),
//     height: MediaQuery.of(context)
//         .size
//         .height *
//     0.25,
//     width: MediaQuery.of(context).size.width,
//     padding: EdgeInsets.only(right: 10),
//     child: Column(
//     children: [
//     ListTile(
//     title: Text(
//     cartList
//         .cartData
//         .cartDetails[index]
//         .productData
//         .product_name.length > 25 ? "${cartList
//         .cartData
//         .cartDetails[index]
//         .productData
//         .product_name.substring(0,18)}...":cartList
//         .cartData
//         .cartDetails[index]
//         .productData
//         .product_name,
//     style: const TextStyle(
//     overflow: TextOverflow.ellipsis,
//     color: Colors.grey,
//     fontSize: 12),
//     ),
//     subtitle: Text(
//     'Are you sure you want to move this item from \nbag?',
//     style: TextStyle(
//     height: 1,
//     color: Colors
//         .grey.shade600,
//     fontSize: 10,
//     fontWeight:
//     FontWeight
//         .w500),
//     ),
//     leading: Container(
//     margin: const EdgeInsets
//         .only(top: 10),
//     height: 120,
//     width: 100,
//     child: Image.network(
//     cartList
//         .cartData
//         .cartDetails[
//     index]
//         .productData
//         .product_image,
//     fit: BoxFit.cover,
//     ),
//     ),
//     trailing: InkWell(
//     child: const Icon(
//     Icons.close,
//     ),
//     onTap: () {
//     return Navigator.pop(
//     context);
//     },
//     )),
//     const SizedBox(
//     height: 58,
//     ),
//     Divider(
//     color:
//     Colors.grey.shade400,
//     height: 0.5),
//     const SizedBox(
//     height: 10,
//     ),
//     Row(
//     mainAxisAlignment:
//     MainAxisAlignment
//         .spaceAround,
//     mainAxisSize:
//     MainAxisSize.max,
//     children: [
//     TextButton(
//     onPressed: () {
//     Navigator.pop(context);
//     setState(() {
//     _isLoading = true;
//     });
//    removeCart(cartList.cartData.cartDetails[index].productData.id.toString()).then((value) {
//     setState(() {
//     getCartList();
//     });
//     });
//
//     },
//     child: Text(
//     'REMOVE',
//     style: TextStyle(
//     color: Colors
//         .grey
//         .shade400,
//     fontWeight:
//     FontWeight
//         .w600),
//     )),
//     VerticalDivider(
//     color: Colors
//         .grey.shade600,
//     indent: 5,
//     endIndent: 2,
//     width: 50,
//     thickness: 2),
//     TextButton(
//     onPressed: ()async{
//     setState(() {
//     _isLoading = true;
// removeCart(cartList.cartData.cartDetails[index].productData.id.toString());
//     saveToWishList(cartList.cartData.cartDetails[index].productData.id.toString()).then(((value) {
//     getCartList();
//     }));
//     });
//     Navigator.pop(context);
//
//     },
//     child: const Text(
//     'MOVE TO WISHLIST ',
//     style: TextStyle(
//     color:
//     Colors.blue,
//     fontWeight:
//     FontWeight
//         .w600),
//     )),
//     ],
//     ),
//     ],
//     ),
//     );
//     },
//     );
//     // }
//     },
//     background: Container(
//     padding: const EdgeInsets.only(left: 20),
//     decoration: BoxDecoration(
//     color: Colors.red,
//     borderRadius: BorderRadius.circular(10),
//     ),
//     margin: const EdgeInsets.only(
//     top: 20, bottom: 5),
//     height: 30,
//     child: const Align(
//     alignment: Alignment.centerLeft,
//     child: Icon(
//     Icons.delete_outline,
//     size: 40,
//     color: Colors.white,
//     )),
//     ),
//     direction: DismissDirection.startToEnd,
//     key: Key(index.toString()),
//     child: Container(
//     decoration: BoxDecoration(
//     boxShadow: const [
//     BoxShadow(
//     color: Colors.white70,
//     blurRadius: 3,
//     spreadRadius: 0.5,
//     offset: Offset(0, 1),
//     blurStyle: BlurStyle.outer)
//     ],
//     color: Colors.white,
//     borderRadius: BorderRadius.circular(10),
//     ),
//     margin: const EdgeInsets.only(top: 15),
//     height:
//     MediaQuery.of(context).size.height /
//     5.8,
//     width: MediaQuery.of(context).size.width,
//     child: Row(
//     children: [
//     Container(
//     decoration: BoxDecoration(
//     color: Colors.white,
//     borderRadius:
//     BorderRadius.circular(10)),
//     margin: const EdgeInsets.all(5),
//     width: MediaQuery.of(context)
//         .size
//         .width /
//     3.4,
//     height: MediaQuery.of(context)
//         .size
//         .height /
//     6.3,
//     child: Image.network(
//     cartList
//         .cartData
//         .cartDetails[index]
//         .productData
//         .product_image,
//     fit: BoxFit.cover,
//     ),
//     ),
//     Container(
//     width: MediaQuery.of(context)
//         .size
//         .width /
//     1.7,
//     color: Colors.transparent,
//     padding: const EdgeInsets.all(5),
//     child: Column(
//     mainAxisAlignment:
//     MainAxisAlignment
//         .spaceBetween,
//     crossAxisAlignment:
//     CrossAxisAlignment.start,
//     children: [
//     Row(
//     mainAxisAlignment:
//     MainAxisAlignment
//         .spaceBetween,
//     children: [
//     InkWell(
//     onTap: () {
//     Navigator.push(
//     context,
//     MaterialPageRoute(
//     builder: (context) =>
//     DetailScreen(),
//     ));
//     },
//     child: Text(
//     cartList
//         .cartData
//         .cartDetails[index]
//         .productData
//         .product_name.length > 30 ? "${cartList
//         .cartData
//         .cartDetails[index]
//         .productData
//         .product_name.substring(0,30)}...":cartList
//         .cartData
//         .cartDetails[index]
//         .productData
//         .product_name,
//     style: const TextStyle(
//     overflow: TextOverflow.ellipsis,
//     color: Colors.grey,
//     fontSize: 12),
//     ),
//     ),
//     InkWell(
//     child: const Icon(
//     Icons.close_rounded),
//     onTap: () {},
//     )
//     ],
//     ),
//     Text(
//     cartList
//         .cartData
//         .cartDetails[index]
//         .productData
//         .brand_name,
//     style: const TextStyle(
//     color: Colors.grey,
//     fontSize: 12),
//     ),
//     RichText(
//     text: TextSpan(
//     style: const TextStyle(
//     height: 1.5),
//     children: [
//