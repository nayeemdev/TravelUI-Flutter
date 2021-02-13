import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui/constants/color_constant.dart';
import 'package:travel_ui/widgets/bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          'TravelUi',
          style: TextStyle(color: Colors.blue[400]),
        ),
        elevation: 0,
      ),
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavigation(),
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Text('Hi, user This promo is for you!',),
            )
          ],
        ),
      ),
    );
  }
}
