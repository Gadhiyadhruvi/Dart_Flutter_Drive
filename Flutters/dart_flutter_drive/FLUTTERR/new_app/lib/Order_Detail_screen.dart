// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:easy_stepper/easy_stepper.dart';

class ProcessCard {
  String title;
  String description;
  IconData icon;

  ProcessCard(this.title, this.description, this.icon);
}

class Order_Detail_Screen extends StatefulWidget {
  final String name;
  final String order;
  final String pickup;
  final String quantity;
  final String amount;
  final String image;
  final String title;
  final String price;

  const Order_Detail_Screen(
      {Key? key,
      required this.name,
      required this.order,
      required this.pickup,
      required this.quantity,
      required this.amount,
      required this.image,
      required this.title,
      required this.price})
      : super(key: key);

  @override
  State<Order_Detail_Screen> createState() => _Order_Detail_ScreenState();
}

class _Order_Detail_ScreenState extends State<Order_Detail_Screen> {
  List<ProductList> productList = [];
  List<OrderList> orderList = [];

  @override
  void initState() {
    productList.add(ProductList(
      title: "English",price: "212",discountPrice: "235",discount: "10",image:'https://tse4.mm.bing.net/th?id=OIP.RixDGRn511lPDg-5npfZPwHaJk&pid=Api&P=0',BrandName: 'Nursery', school: 'Delhi Public School, Bopal',
      boardName: 'Gujarat Board',
      mediumName: 'Gujarati',
      standardName: '2',
      subjectName: 'English',
    ));
    productList.add(ProductList(
      title: "Science",
      price: "100",
      discountPrice: "125",
      discount: "2",
      image:
          'https://tse4.mm.bing.net/th?id=OIP.OUbBjDJU3SUVps8BS7zsdAHaHa&pid=Api&P=0',
      BrandName: '1',
      school: 'Udgam School For Children, Thaltej',
      boardName: 'CBSC',
      mediumName: 'English',
      standardName: '5',
      subjectName: 'Gujarati',
    ));
    productList.add(ProductList(
      title: "English Grammar",
      price: "200",
      discountPrice: "235",
      discount: "15",
      image:
          'https://tse1.mm.bing.net/th?id=OIP.59FDYCnsskmxXdC8KoIbDAHaJl&pid=Api&P=0',
      BrandName: '1',
      school: 'Vedant International School, Isanpur',
      boardName: 'Gujarat',
      mediumName: 'Hindi',
      standardName: '1',
      subjectName: 'Mathematices',
    ));
    productList.add(ProductList(
      title: "Gujarati",
      price: "150",
      discountPrice: "80",
      discount: "8",
      image:
          'https://2.bp.blogspot.com/--NACPs3p9I0/WPG_cC4NQaI/AAAAAAAAYJE/Q-cgrW0brvcQstSP8WIkgiXmpf7D-5P5gCEw/s1600/1.jpg',
      BrandName: '6',
      school: 'Podar International School, Chandkheda',
      boardName: 'ICSC',
      mediumName: 'English',
      standardName: '8',
      subjectName: 'Hindi',
    ));
    productList.add(ProductList(
      title: "Mathematics",
      price: "220",
      discountPrice: "120",
      discount: "10",
      image:
          'https://tse4.mm.bing.net/th?id=OIP.LgFvGN8I4LLmR7JB0jXQ8QHaHa&pid=Api&P=0',
      BrandName: '5',
      school: 'Adani Vidya Mandir, Makarba',
      boardName: 'Gujarat',
      mediumName: 'Gujarati',
      standardName: '10',
      subjectName: 'Social Science',
    ));
    productList.add(ProductList(
      title: "Hindi",
      price: "90",
      discountPrice: "50",
      discount: "18",
      image:
          'https://tse2.mm.bing.net/th?id=OIP._idKDk6rskubf16dm8p3LAHaJa&pid=Api&P=0',
      BrandName: '1',
      school: 'Anand Niketan, Maninagar',
      boardName: 'Gujarat',
      mediumName: 'Gujarati',
      standardName: '2',
      subjectName: 'Science',
    ));
    productList.add(ProductList(
      title: "Computer",
      price: "100",
      discountPrice: "80",
      discount: "2",
      image:
          'https://uploads-ssl.webflow.com/5f5cf4627107791c0412287b/60c9bfdd9364ce105f5c12d0_Computer%20Book%20-8-p-1080.jpeg',
      BrandName: '8',
      school: 'Calorx Public School, Ghatlodia',
      boardName: 'Gujarat',
      mediumName: 'Gujarati',
      standardName: '2',
      subjectName: 'English Grammer',
    ));
    productList.add(ProductList(
      title: "Science",
      price: "160",
      discountPrice: "120",
      discount: "20",
      image:
          'https://tse3.mm.bing.net/th?id=OIP.r1T31UTwUS-7cFLOYnJEpQAAAA&pid=Api&P=0',
      BrandName: '10',
      school: 'Cosmos Castle International School, S G Road',
      boardName: 'Gujarat',
      mediumName: 'Gujarati',
      standardName: '2',
      subjectName: 'Computer',
    ));
    productList.add(ProductList(
      title: "Social Science",
      price: "250",
      discountPrice: "200",
      discount: "5",
      image:
          'https://tse2.mm.bing.net/th?id=OIP.925o4UY1WdELT1MuNZZWDwHaHa&pid=Api&P=0',
      BrandName: '9',
      school: 'Divine Child International School, Adalaj',
      boardName: 'Gujarat',
      mediumName: 'Gujarati',
      standardName: '2',
      subjectName: 'Gujarati',
    ));
    productList.add(ProductList(
      title: "Hindi",
      price: "90",
      discountPrice: "50",
      discount: "8",
      image:
          'https://isteam.wsimg.com/ip/a68ccc00-d53d-11e5-892b-14feb5d41b49/ols/17065_original/:/rs=w:600,h:600',
      BrandName: '4',
      school: 'Nirman High School, Vastrapur',
      boardName: 'Gujarat',
      mediumName: 'Gujarati',
      standardName: '2',
      subjectName: 'Mathematices',
    ));

    orderList.add(OrderList(
        name: "MBV31",
        order: "22/02/2023",
        pickup: "12/03/2023",
        quantity: "2",
        amount: "897 NRP"));
    orderList.add(OrderList(
        name: "MBV42",
        order: "30/01/2023",
        pickup: "12/03/2023",
        quantity: "4",
        amount: "257 NRP"));
    orderList.add(OrderList(
        name: "MBV55",
        order: "29/02/2023",
        pickup: "12/03/2023",
        quantity: "7",
        amount: "34 NRP"));
    orderList.add(OrderList(
        name: "MBV86",
        order: "21/03/2023",
        pickup: "12/03/2023",
        quantity: "1",
        amount: "58 NRP"));
    orderList.add(OrderList(
        name: "MBV23",
        order: "23/01/2023",
        pickup: "12/03/2023",
        quantity: "9",
        amount: "87 NRP"));
    orderList.add(OrderList(
        name: "MBV97",
        order: "2/02/2023",
        pickup: "12/03/2023",
        quantity: "6",
        amount: "78 NRP"));
    orderList.add(OrderList(
        name: "MBV75",
        order: "5/01/2023",
        pickup: "12/03/2023",
        quantity: "2",
        amount: "89 NRP"));
    orderList.add(OrderList(
        name: "MBV83",
        order: "17/03/2023",
        pickup: "12/03/2023",
        quantity: "4",
        amount: "246 NRP"));
    orderList.add(OrderList(
        name: "MBV278",
        order: "18/03/2023",
        pickup: "12/03/2023",
        quantity: "0",
        amount: "95 NRP"));
    orderList.add(OrderList(
        name: "MBV195",
        order: "20/01/2023",
        pickup: "12/03/2023",
        quantity: "3",
        amount: "034 NRP"));

    super.initState();
  }

  int current_step = 0;
  List<Step> steps = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: AppBar(
        title: const Text("Order Details"),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text("Cancel", style: TextStyle(color: Colors.blue)),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
                child:  EasyStepper(
                  lineLength: 50,
                  activeStep: current_step,
                  stepRadius: 20,
                  showLoadingAnimation: false,
                  steps: [
                    EasyStep(
                      customStep: Container(
                        height: MediaQuery.of(context).size.height*0.27,
                        width: MediaQuery.of(context).size.width*0.27,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.blue),
                        child: Opacity(
                          opacity: current_step >= 0 ? 1 : 0.3,
                          child: const Icon(Icons.access_alarm_outlined,color: Colors.white,),
                        ),
                      ),
                      customTitle: const Text(
                        'Padding',
                        style: TextStyle(color: Colors.blue),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    EasyStep(
                      customStep: Container(
                        height: MediaQuery.of(context).size.height*0.27,
                        width: MediaQuery.of(context).size.width*0.27,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.blue),
                        child: Opacity(
                          opacity: current_step >= 1 ? 1 : 0.3,
                          child: const Icon(Icons.check_circle,color: Colors.white,),
                        ),
                      ),
                      customTitle: const Text(
                        'Confirmed',
                        style: TextStyle(color: Colors.blue),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    EasyStep(
                      customStep: Container(
                        height: MediaQuery.of(context).size.height*0.27,
                        width: MediaQuery.of(context).size.width*0.27,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.blue),
                        child: Opacity(
                          opacity: current_step >= 2 ? 1 : 0.3,
                          child: const Icon(Icons.car_crash_outlined,color: Colors.white,),
                        ),
                      ),
                      customTitle: const Text(
                        'Ready',
                        style: TextStyle(color: Colors.blue),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    EasyStep(
                      customStep: Container(
                        height: MediaQuery.of(context).size.height*0.27,
                        width: MediaQuery.of(context).size.width*0.27,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.blue),
                        child: Opacity(
                          opacity: current_step >= 3 ? 1 : 0.3,
                          child: const Icon(Icons.arrow_circle_down,color: Colors.white,),
                        ),
                      ),
                      customTitle: const Text(
                        'Cancel',
                        style: TextStyle(color: Colors.blue),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                  onStepReached: (index) =>
                      setState(() => current_step = index),
                  ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(3),
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Card(
                elevation: 0.2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Order:"),
                          Container(
                              margin: const EdgeInsets.only(right: 145),
                              child: Text(
                                widget.name,
                                style: const TextStyle(color: Colors.grey),
                              )),
                          Text(widget.order,
                              style: const TextStyle(color: Colors.red)),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 180),
                        child: RichText(
                          text: const TextSpan(
                              text: 'Patment Type :',
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Pickup',
                                    style: TextStyle(color: Colors.grey))
                              ]),
                        ),
                      ),
                      Row(
                        children: [
                          const Text("Pick up Date : "),
                          Container(
                              margin: const EdgeInsets.only(right: 75),
                              child: Text(
                                widget.pickup,
                                style: const TextStyle(color: Colors.grey),
                              )),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.cyan),
                            onPressed: () {},
                            child: const Center(
                              child: Text("Invoice",
                                  style: TextStyle(color: Colors.cyan)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("Total Amount : "),
                          Container(
                              margin: const EdgeInsets.only(right: 145),
                              child: Text(
                                widget.amount,
                                style: const TextStyle(color: Colors.blue),
                              )),
                        ],
                      ),
                      RichText(
                        text: const TextSpan(
                            text: 'Pick up Location :',
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      'goofy cnskcd junk Ludwik docked,eg, \ndagger fb ',
                                  style: TextStyle(color: Colors.grey))
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(3),
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Stack(children: [
                Card(
                  elevation: 0.2,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 17, right: 17),
                            child: Image(
                                image: NetworkImage(widget.image),
                                fit: BoxFit.fill,
                                width: MediaQuery.of(context).size.width * 0.20,
                                height:
                                    MediaQuery.of(context).size.height * 0.09),
                          ),
                          Column(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(
                                      top: 17, bottom: 10),
                                  child: Text(widget.title)),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.currency_rupee_outlined,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Text(
                                    widget.price,
                                    style: const TextStyle(color: Colors.blue),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 15,
                  top: 30,
                  child: Container(
                      margin: const EdgeInsets.only(
                        bottom: 40,
                      ),
                      child: const Text("x1")),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Payment Summary",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
            ),
            Container(
              margin: const EdgeInsets.all(3),
              height: MediaQuery.of(context).size.height / 2.90,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Card(
                color: Colors.grey[150],
                semanticContainer: true,
                elevation: 0.2,
                shadowColor: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          const Text("Total MRP",
                              style: TextStyle(fontSize: 15)),
                          Container(
                              margin: const EdgeInsets.only(left: 205),
                              child: const Icon(
                                Icons.currency_rupee,
                                size: 18,
                              )),
                          const Text("49", style: TextStyle(fontSize: 15))
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Text(
                            "Discount on MRP",
                            style: TextStyle(fontSize: 15),
                          ),
                          Container(
                              margin: const EdgeInsets.only(left: 160),
                              child: const Text(
                                "-",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 30),
                              )),
                          Container(
                              margin: const EdgeInsets.only(left: 1),
                              child: const Icon(
                                Icons.currency_rupee,
                                size: 18,
                                color: Colors.green,
                              )),
                          const Text(
                            "0",
                            style: TextStyle(color: Colors.green, fontSize: 15),
                          )
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Text("Coupon Discount",
                              style: TextStyle(fontSize: 15)),
                          Container(
                              margin: const EdgeInsets.only(left: 160),
                              child: const Text(
                                "-",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 30),
                              )),
                          Container(
                              margin: const EdgeInsets.only(left: 1),
                              child: const Icon(
                                Icons.currency_rupee,
                                size: 18,
                                color: Colors.green,
                              )),
                          const Text(
                            "0",
                            style: TextStyle(color: Colors.green),
                          )
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Text(" Order Total",
                              style: TextStyle(fontSize: 15)),
                          Container(
                              margin: const EdgeInsets.only(left: 200),
                              child: const Icon(
                                Icons.currency_rupee,
                                size: 18,
                              )),
                          const Text("49", style: TextStyle(fontSize: 15))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderList {
  final String name;
  final String order;
  final String pickup;
  final String quantity;
  final String amount;

  OrderList(
      {required this.name,
      required this.order,
      required this.pickup,
      required this.quantity,
      required this.amount});
}

class ProductList {
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

  ProductList(
      {required this.image,
      required this.title,
      required this.BrandName,
      required this.price,
      required this.discountPrice,
      required this.discount,
      required this.school,
      required this.boardName,
      required this.mediumName,
      required this.standardName,
      required this.subjectName});
}