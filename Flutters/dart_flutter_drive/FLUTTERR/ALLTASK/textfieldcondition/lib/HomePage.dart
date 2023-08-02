import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int textFieldCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Text Fields'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  textFieldCount = int.tryParse(value) ?? 0;
                });
              },
              keyboardType: TextInputType.number,
              cursorColor: Colors.grey,
        autofocus: true,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding: const EdgeInsets.all(17),
          border: InputBorder.none,
          hintText: "Input Text Here",
          labelText: 'Enter the number of text fields',
        ),
            ),
          ),
          const SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: textFieldCount,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    cursorColor: Colors.grey,
        autofocus: false,
        style: const TextStyle(color: Color(0xFFF8F8FF)),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding: const EdgeInsets.all(17),
          border: InputBorder.none,
          labelText: 'Text Field ${index + 1}',
          hintText: "Input Text Here",
          hintStyle: const TextStyle(
              color: Color.fromARGB(255, 132, 140, 155)),
        ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   List<TextEditingController> listController = [TextEditingController()];
//   List<TextEditingController> fields = [TextEditingController()];
//   var numberInputFormatters = [FilteringTextInputFormatter.allow(RegExp("0-9")),];
//   int num = 0;
//
//   @override
//   void initState() {
//     listController.clear();
//     fields.clear();
//     for(int i = 0; i<num; i++) {
//       TextEditingController controller = TextEditingController();
//       listController.add(controller);
//       void field = TextField(
//         controller: controller,
//         inputFormatters: numberInputFormatters,
//         keyboardType: TextInputType.number,
//         cursorColor: Colors.grey,
//         autofocus: false,
//         style: const TextStyle(color: Color(0xFFF8F8FF)),
//         decoration: InputDecoration(
//           enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//           contentPadding: EdgeInsets.all(17),
//           border: InputBorder.none,
//           hintText: "Input Text Here",
//           hintStyle: TextStyle(
//               color: Color.fromARGB(255, 132, 140, 155)),
//         ),
//       );
//     }
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(
//         "Dynamic Text Field",
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           color: Color(0xFF2E384E),
//         ),
//       ),),
//       body: Padding(
//         padding: EdgeInsets.all( 30),
//         child: Column(
//           children:<Widget> [
//             TextField(
//               onChanged: (controller) {
//                 TextEditingController();
//                 num;
//               },
//               inputFormatters: numberInputFormatters,
//               keyboardType: TextInputType.number,
//               cursorColor: Colors.grey,
//               autofocus: true,
//               style: const TextStyle(color: Color(0xFFF8F8FF)),
//               decoration: InputDecoration(
//                 focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                 enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                 contentPadding: EdgeInsets.all(17),
//                 border: InputBorder.none,
//                 hintText: "Input Text Here",
//                 hintStyle: TextStyle(
//                     color: Color.fromARGB(255, 132, 140, 155)),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//         InkWell(
//                     onTap: () {
//                       setState(() {
//                         fields.length;
//                       });
//                       // if (isClick == true) {
//                       //   controller.text;
//                       //   for(int a = num; a <=num; a++){
//                       //     return ;
//                       //   }
//                       // }
//                       // return isClick = true ? for()
//                     },
//                     child: Container(
//                       height: MediaQuery.of(context).size.height*0.05,
//                       width: MediaQuery.of(context).size.width*0.5,
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue),
//                       child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 20),),
//                     ),
//                   ),
//             Expanded(
//                 child: Container(
//
//                 ))
//           ],
//         )
//         // TextField(
//         //
//         //   inputFormatters: numberInputFormatters,
//         //   keyboardType: TextInputType.number,
//         //   cursorColor: Colors.grey,
//         //   autofocus: true,
//         //   style: const TextStyle(color: Color(0xFFF8F8FF)),
//         //   decoration: InputDecoration(
//         //     focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//         //     enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//         //     contentPadding: EdgeInsets.all(17),
//         //     border: InputBorder.none,
//         //     hintText: "Input Text Here",
//         //     hintStyle: TextStyle(
//         //         color: Color.fromARGB(255, 132, 140, 155)),
//         //   ),
//         // ),
//       )
//       // SingleChildScrollView(
//       //     physics: NeverScrollableScrollPhysics(),
//       //     child: Column(
//       //       crossAxisAlignment: CrossAxisAlignment.start,
//       //       children: [
//       //         Padding(padding: EdgeInsets.only(top: 30),
//       //           child: TextFormField(
//       //     controller: listController[0],
//       //     inputFormatters: numberInputFormatters,
//       //     keyboardType: TextInputType.number,
//       //     cursorColor: Colors.grey,
//       //     autofocus: false,
//       //     style: const TextStyle(color: Color(0xFFF8F8FF)),
//       //     decoration: InputDecoration(
//       //       enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//       //       contentPadding: EdgeInsets.all(17),
//       //       border: InputBorder.none,
//       //       hintText: "Input Text Here",
//       //       hintStyle: TextStyle(
//       //           color: Color.fromARGB(255, 132, 140, 155)),
//       //     ),
//       //   ),),
//       // //         const SizedBox(
//       // //   width: 10,
//       // // ),
//       // //         0 != listController.length
//       // //             ? GestureDetector(
//       // //   onTap: (){
//       // //     setState(() {
//       // //       listController[0].clear();
//       // //       listController[0].dispose();
//       // //       listController.removeAt(0);
//       // //     });
//       // //   },
//       // //   child: const Icon(
//       // //     Icons.delete,
//       // //     color: Color(0xFF6B74D6),
//       // //     size: 35,
//       // //   ),
//       // // )
//       // //             : const SizedBox(),
//       //         const SizedBox(
//       //           height: 50,
//       //         ),
//       //         // Row(
//       //         //   children: [
//       //         //     GestureDetector(
//       //         //         onTap: (){
//       //         //           setState(() {
//       //         //             listController[index].clear();
//       //         //             listController[index].dispose();
//       //         //             listController.removeAt(index);
//       //         //           });
//       //         //         },
//       //         //         child: const Icon(
//       //         //           Icons.delete,
//       //         //           color: Color(0xFF6B74D6),
//       //         //           size: 35,
//       //         //         ),
//       //         //       )
//       //         //   ],
//       //         // ),
//       //
//       //
//       //
//       //
//       //
//       //
//       //   // InkWell(
//       //   //         onTap: () {
//       //   //           setState(() {
//       //   //             listController.add(TextEditingController());
//       //   //           });
//       //   //           // if (isClick == true) {
//       //   //           //   controller.text;
//       //   //           //   for(int a = num; a <=num; a++){
//       //   //           //     return ;
//       //   //           //   }
//       //   //           // }
//       //   //           // return isClick = true ? for()
//       //   //         },
//       //   //         child: Container(
//       //   //           height: MediaQuery.of(context).size.height*0.05,
//       //   //           width: MediaQuery.of(context).size.width*0.5,
//       //   //           alignment: Alignment.center,
//       //   //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue),
//       //   //           child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 20),),
//       //   //         ),
//       //   //       ),
//       //
//       //
//       //
//       //
//       //
//       //         // GestureDetector(
//       //         //   onTap: () {
//       //         //     setState(() {
//       //         //       listController.add(TextEditingController());
//       //         //     });
//       //         //   },
//       //         //   child: Center(
//       //         //     child: Container(
//       //         //       padding: const EdgeInsets.symmetric(
//       //         //           horizontal: 20, vertical: 15),
//       //         //       decoration: BoxDecoration(
//       //         //           color: const Color(0xFF444C60),
//       //         //           borderRadius: BorderRadius.circular(10)),
//       //         //       child: const Text("Add More",
//       //         //           style:
//       //         //           TextStyle(color: Color(0xFFF8F8FF))),
//       //         //     ),
//       //         //   ),
//       //         // ),
//       //
//       //
//       //
//       //
//       //         // Expanded(
//       //         //   child: ListView.builder(shrinkWrap: true,
//       //         //   itemCount: listController.length,
//       //         //   itemBuilder: (context, index) {
//       //         //     return TextFormField(
//       //         //       controller: listController[index],
//       //         //       inputFormatters: numberInputFormatters,
//       //         //       keyboardType: TextInputType.number,
//       //         //       cursorColor: Colors.grey,
//       //         //       autofocus: false,
//       //         //       style: const TextStyle(color: Color(0xFFF8F8FF)),
//       //         //       decoration: InputDecoration(
//       //         //         enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//       //         //         contentPadding: EdgeInsets.all(17),
//       //         //         border: InputBorder.none,
//       //         //         hintText: "Input Text Here",
//       //         //         hintStyle: TextStyle(
//       //         //             color: Color.fromARGB(255, 132, 140, 155)),
//       //         //       ),
//       //         //     );
//       //         //   },),),
//       //
//       //         // const SizedBox(
//       //         //   width: 10,
//       //         // )
//       //       ],
//       //     ),
//       //   ),
//     );
//   }
// }