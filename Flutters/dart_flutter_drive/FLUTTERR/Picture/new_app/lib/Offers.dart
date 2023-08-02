import 'package:flutter/material.dart';
import 'Cart.dart';
import 'Favorite.dart';

class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  List<OffersList> offersList = [];
  bool copyIcon = true;

  @override
  void initState() {
    offersList.add(OffersList());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Offers'),
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
          ],
        ),
        body: Container(
          height:120,
          width: double.maxFinite,
          margin: const EdgeInsets.all(5),
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAlias,
            elevation:2,
            shadowColor: Colors.black,
            child: Column(
              children: [
                Row(
                  children: [Container(
                    margin: const EdgeInsets.only(right: 136,left: 5),
                    child: const Text("Coupon Code:  HRKS26"),
                  ),
                    IconButton(
                        onPressed: (){
                          setState(() {
                            copyIcon =!copyIcon;
                          });
                        }, icon: Icon(Icons.copy,color: copyIcon ? Colors.black : Colors.blue,))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 150,left: 5),
                      child: const Text("Category:  All"),
                    ),
                    const InkWell(
                      child: Text("Discount:  10%"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    Container(
                    margin: const EdgeInsets.only(right: 50,left: 5),
                    child: const Text("Valid from: 15/02/2023"),
                  ),
                    const InkWell(
                      child: Text("Valid to: 28/03/2023"),
                    )
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}

class OffersList{
  bool isAddedToCart = false;
}