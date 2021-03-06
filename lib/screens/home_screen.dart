import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:travel_ui/constants/color_constant.dart';
import 'package:travel_ui/constants/style_constant.dart';
import 'package:travel_ui/models/blog_model.dart';
import 'package:travel_ui/models/popular_destination_model.dart';
import 'package:travel_ui/models/slider_model.dart';
import 'package:travel_ui/widgets/bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentSliderIndex = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];

    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF2E7D32),
    ));
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: backgroundColor,
        title: Text(
          'Travel Ui',
          style: TextStyle(color: Colors.blue[400], fontWeight: FontWeight.w900, fontStyle: FontStyle.italic),
        ),
        elevation: 0,
      ),
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavigation(),
      body: Container(
        padding: EdgeInsets.only(bottom: 16),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            //Sliders Section
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 16),
              child: Text(
                'Hi, user This promo is for you!',
                style: titleStyle,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 16, right: 16),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 195,
                    child: Swiper(
                      onIndexChanged: (index) {
                        setState(() {
                          _currentSliderIndex = index;
                        });
                      },
                      autoplay: true,
                      layout: SwiperLayout.DEFAULT,
                      itemCount: sliders.length,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: NetworkImage(sliders[index].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: map<Widget>(
                          sliders,
                          (index, image) {
                            return Container(
                              alignment: Alignment.centerLeft,
                              height: 6,
                              width: 6,
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _currentSliderIndex == index
                                      ? blueColor
                                      : grayColor),
                            );
                          },
                        ),
                      ),
                      Text('More..', style: discountStyle),
                    ],
                  )
                ],
              ),
            ),

            //  Booking Section
            Padding(
              padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
              child: Text(
                'Let\'s Booking!',
                style: titleStyle,
              ),
            ),
            Container(
              height: 144,
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: fillColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: borderColor, width: 1),
                          ),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('assets/icons/plane.png'),
                                height: 30,
                                width: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Flight',
                                      style: serviceTileStyle,
                                    ),
                                    Text(
                                      'Feel Freedom',
                                      style: popularSubTileStyle,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: fillColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: borderColor, width: 1),
                          ),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('assets/icons/train.png'),
                                height: 30,
                                width: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Trains',
                                      style: serviceTileStyle,
                                    ),
                                    Text(
                                      'Intercity',
                                      style: popularSubTileStyle,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: fillColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: borderColor, width: 1),
                          ),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('assets/icons/hotel.png'),
                                height: 30,
                                width: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Hotel',
                                      style: serviceTileStyle,
                                    ),
                                    Text(
                                      'Let\'s Check in',
                                      style: popularSubTileStyle,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: fillColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: borderColor, width: 1),
                          ),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('assets/icons/car.png'),
                                height: 30,
                                width: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Car Rental',
                                      style: serviceTileStyle,
                                    ),
                                    Text(
                                      'Around Your City',
                                      style: popularSubTileStyle,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //Destination Section
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 16, top: 16),
              child: Text(
                'Popular Destination!',
                style: titleStyle,
              ),
            ),
            Container(
              height: 130,
              child: Padding(
                padding: const EdgeInsets.only(right: 16, left: 16),
                child: ListView.builder(
                    itemCount: destinations.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          height: 130,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: borderColor, width: 1),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              CircleAvatar(
                                radius: 35.0,
                                backgroundImage:
                                    NetworkImage(destinations[index].image),
                                backgroundColor: Colors.transparent,
                              ),
                              Text(
                                destinations[index].name,
                                style: popularTileStyle,
                              ),
                              Text(
                                destinations[index].country,
                                style: popularSubTileStyle,
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),

            //Blog Section
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 16, top: 16),
              child: Text(
                'Travel Blog!',
                style: titleStyle,
              ),
            ),
            Container(
              height: 180,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 16),
                itemCount: blogs.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 16),
                    width: 220,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 104,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(blogs[index].image),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                              child: Text(
                                blogs[index].name,
                                style: TextStyle(
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              bottom: 8,
                              left: 8,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          blogs[index].content,
                          maxLines: 3,
                          style: blogContentStyle,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          blogs[index].place,
                          style: blogPlaceStyle,
                        ),
                      ],
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
