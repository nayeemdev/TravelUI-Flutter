import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui/constants/color_constant.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  var bottomStyle =
      GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
          color: fillColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 15,
                offset: Offset(0, 5))
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          )),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? new Icon(Icons.home)
                  : new Icon(Icons.home_outlined),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? new Icon(Icons.ad_units)
                  : new Icon(Icons.ad_units_outlined),
              label: 'Order'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? new Icon(Icons.featured_play_list_rounded)
                  : new Icon(Icons.featured_play_list_outlined),
              label: 'Watch List'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? new Icon(Icons.account_box)
                  : new Icon(Icons.account_box_outlined),
              label: 'Account'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: blueColor,
        unselectedItemColor: grayColor,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showUnselectedLabels: true,
        elevation: 0,
        onTap: _onItemTapped,
      ),
    );
  }
}
