import 'package:matcher/matcher.dart';
//import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rating_Bar extends StatefulWidget {
  const Rating_Bar({super.key});

  @override
  State<Rating_Bar> createState() => _Rating_BarState();
}

class _Rating_BarState extends State<Rating_Bar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          RatingBar.builder(initialRating: 3, minRating: 1, maxRating: 5, item),
    );
  }
}
