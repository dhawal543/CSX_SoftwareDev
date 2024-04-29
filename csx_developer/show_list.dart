import 'package:flutter/material.dart';
import 'custom.dart';

class ShowListScreen extends StatefulWidget {
  const ShowListScreen({super.key});

  @override
  State<ShowListScreen> createState() => _ShowListScreenState();
}

class _ShowListScreenState extends State<ShowListScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.keyboard_arrow_left_outlined,
            color: Colors.white,
          ),
        ),
        title: const Center(
          child: Text(
            "Available Travel Routes",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: travelList.length,
          itemBuilder: (BuildContext context, int index) {
            return TravelTile(
              origin: travelList[index].origin,
              dest: travelList[index].dest,
              date: travelList[index].date,
            );
          }),
    );
  }
}
