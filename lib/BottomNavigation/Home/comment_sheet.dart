import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:qvid/Components/entry_field.dart';
import 'package:qvid/Locale/locale.dart';
import 'package:qvid/Theme/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Comment {
  final String? image;
  final String? name;
  final String? comment;
  final String? time;

  Comment({this.image, this.name, this.comment, this.time});
}

void commentSheet(BuildContext context) async {
  var locale = AppLocalizations.of(context)!;
  final VoidCallback? onPressed = () {
    launchUrl(Uri.parse('tel:+84987654321'));
  };
  await showModalBottomSheet(
      enableDrag: false,
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
          borderSide: BorderSide.none),
      context: context,
      builder: (context) => Container(
            height: MediaQuery.of(context).size.height / 1.1,
            child: Stack(
              children: <Widget>[
                FadedSlideAnimation(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          locale.propertyDetails!,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: lightTextColor),
                        ),
                      ),
                      CarouselSlider(
                        options: CarouselOptions(height: 200.0, aspectRatio: 16/9),
                        items: [1,2,3,4,5].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Image.asset("assets/images/listing/$i.jpg");
                            },
                          );
                        }).toList(),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 20.0, 0, 0),
                        child: RichText(
                          text: TextSpan(
                            text: '300 000 CHF',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                            ),
                        )
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(20.0, 10.0, 0, 0),
                          child: RichText(
                            text: TextSpan(
                              text: 'Werdstrasse 21, 8004 Zurich, Switzerland',
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                      ),
                      Divider(
                        height: 20,
                        thickness: 1,
                        color: Colors.white,
                        indent: 20,
                        endIndent: 20
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(30.0, 10, 0, 0),
                                      child: RichText(
                                        text: TextSpan(
                                          text: '4',
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                        ),
                                      )
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(30.0, 10, 0, 0),
                                      child: RichText(
                                        text: TextSpan(
                                          text: 'Bedrooms',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(30.0, 10, 0, 0),
                                      child: RichText(
                                        text: TextSpan(
                                          text: '2',
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                        ),
                                      )
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(30.0, 10, 0, 0),
                                      child: RichText(
                                        text: TextSpan(
                                          text: 'Bathrooms',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(30.0, 10, 0, 0),
                                      child: RichText(
                                        text: TextSpan(
                                          text: '250 m2',
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                        ),
                                      )
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(30.0, 10, 0, 0),
                                      child: RichText(
                                        text: TextSpan(
                                          text: 'Living space',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Divider(
                          thickness: 1,
                          color: Colors.white,
                          indent: 20,
                          endIndent: 20
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(20.0, 10, 0, 0),
                          child: RichText(
                            text: TextSpan(
                              text: 'Main information',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          )
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(20.0, 10, 0, 0),
                                  child: RichText(
                                      text: TextSpan(
                                        text: 'Type',
                                        style: TextStyle(fontSize: 15),
                                      )
                                  ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
                                child: RichText(
                                    text: TextSpan(
                                      text: 'Apartment',
                                      style: TextStyle(fontSize: 15),
                                    )
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(20.0, 10, 0, 0),
                                child: RichText(
                                    text: TextSpan(
                                      text: 'Floor',
                                      style: TextStyle(fontSize: 15),
                                    )
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
                                child: RichText(
                                    text: TextSpan(
                                      text: '4. floor',
                                      style: TextStyle(fontSize: 15),
                                    )
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(20.0, 10, 0, 0),
                                child: RichText(
                                    text: TextSpan(
                                      text: 'Listing Id',
                                      style: TextStyle(fontSize: 15),
                                    )
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
                                child: RichText(
                                    text: TextSpan(
                                      text: '12345',
                                      style: TextStyle(fontSize: 15),
                                    )
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(20.0, 10, 0, 0),
                          child: RichText(
                            text: TextSpan(
                              text: 'Description',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: RichText(
                            text: TextSpan(
                              text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                              style: TextStyle(fontSize: 15),
                            )
                        ),
                      )
                    ],
                  ),
                  beginOffset: Offset(0, 0.3),
                  endOffset: Offset(0, 0),
                  slideCurve: Curves.linearToEaseOut,
                ),
                PositionedDirectional(
                  bottom: 0,
                  start: 20,
                  end: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: onPressed,
                            child: const Text('Call'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey,
                              minimumSize: Size(160, 50),
                              maximumSize: Size(160, 50)
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: onPressed,
                            child: const Text('Message'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey,
                                minimumSize: Size(160, 50),
                                maximumSize: Size(160, 50)
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ));
}
