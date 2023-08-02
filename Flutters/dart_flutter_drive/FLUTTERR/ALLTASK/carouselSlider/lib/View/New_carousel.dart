import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  Home({this.tital = "Error", this.message = "Something went wrong", required this.onPressed});
  final String tital,message;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
        child: Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error,color: Colors.red,),
              Text(tital,style: Theme.of(context).textTheme.bodyText1,),
              Text(message,style: Theme.of(context).textTheme.bodyText2,),
              ElevatedButton(
                  onPressed: () {

                  },
                  child: const Text('Retry'))
            ],
          ),
        ),
    );
  }
}
