import 'package:flutter/material.dart';

TextStyle kHintTextStyle = const TextStyle(
  color: Colors.white70,
);

class TravelRoute {
  TravelRoute({required this.origin, required this.dest, required this.date});

  String origin;
  String dest;
  String date;
}

List<TravelRoute> travelList = [];

TextStyle kTravelTextStyle = const TextStyle(
  fontSize: 16,
);

class TravelTile extends StatelessWidget {
  const TravelTile({super.key, required this.origin, required this.dest, required this.date});

  final String origin;
  final String dest;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$origin -> $dest', style: kTravelTextStyle,),
          Text(date, style: kTravelTextStyle),
        ],
      ),
    );
  }
}
