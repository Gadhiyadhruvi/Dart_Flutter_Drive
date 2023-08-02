import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            const Expanded(
                child: Text(
                  "Cancel",
                  textAlign: TextAlign.center,
                )),
            Expanded(
                child: MaterialButton(
                  height: 50,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Checkout(),));
                  },
                  color: const Color.fromARGB(255, 29, 98, 228),
                  child: const Text(
                    "Proceed Payment",
                    style: TextStyle(color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
      appBar: AppBar(title: const Text("Checkout")),
      body: Padding(
        padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: const Text("Pick up Address")),
            Container(
              height: MediaQuery.of(context).size.height*0.15,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.2,
                    child: Checkbox(
                      shape: const CircleBorder(),
                      value: value,
                      onChanged: (value) {
                        setState(() {
                          this.value = value!;
                        });
                      },),
                  ),
                  const Text("Madhavbaug Vidhyabhavan, New Kosad \nRoad, Amroli 394107. \nMobile No: 2645247986")
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 10,top: 10),
                child: const Text("Payment Summary")),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const Text("Total MRP",style: TextStyle(fontSize: 15)),
                        Container(
                            margin: const EdgeInsets.only(left: 210),
                            child: const Icon(Icons.currency_rupee,size: 18,)),
                        const Text("34",style: TextStyle(fontSize: 15))
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        const Text("Discount on MRP",style: TextStyle(fontSize: 15),),
                        Container(
                            margin: const EdgeInsets.only(left: 160),
                            child: const Text("-",style: TextStyle(color: Colors.green,fontSize: 30),)),
                        Container(
                            margin: const EdgeInsets.only(left: 1),
                            child: const Icon(Icons.currency_rupee,size: 18,color: Colors.green,)),
                        const Text("0",style: TextStyle(color: Colors.green,fontSize: 15),)
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        const Text("Coupon Discount",style: TextStyle(fontSize: 15)),
                        Container(
                            margin: const EdgeInsets.only(left: 160),
                            child: const Text("-",style: TextStyle(color: Colors.green,fontSize: 30),)),
                        Container(
                            margin: const EdgeInsets.only(left: 1),
                            child: const Icon(Icons.currency_rupee,size: 18,color: Colors.green,)),
                        const Text("0",style: TextStyle(color: Colors.green),)
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        const Text(" Order Total",style: TextStyle(fontSize: 15)),
                        Container(
                            margin: const EdgeInsets.only(left: 200),
                            child: const Icon(Icons.currency_rupee,size: 18,)),
                        const Text("34",style: TextStyle(fontSize: 15))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 10,top: 10),
                child: const Text("Mode of Payment")),
            Container(
              height: MediaQuery.of(context).size.height*0.10,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.2,
                    child: Checkbox(
                      shape: const CircleBorder(),
                      value: value,
                      onChanged: (value) {
                        setState(() {
                          this.value = value!;
                        });
                      },),
                  ),
                  const Text("Cash on Pick Up")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
