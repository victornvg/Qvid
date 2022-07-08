import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:qvid/Components/entry_field.dart';
import 'package:qvid/Locale/locale.dart';
import 'package:qvid/Theme/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Comment {
  final String? image;
  final String? name;
  final String? comment;
  final String? time;

  Comment({this.image, this.name, this.comment, this.time});
}

void commentSheet(BuildContext context) async {
  var locale = AppLocalizations.of(context)!;

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
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                                  decoration: BoxDecoration(
                                      color: Colors.amber
                                  ),
                                  child: Text('Image $i', style: TextStyle(fontSize: 16.0),)
                              );
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
                                      padding: EdgeInsets.fromLTRB(30.0, 10, 0, 10),
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
                                      padding: EdgeInsets.fromLTRB(30.0, 10, 0, 20),
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
                                      padding: EdgeInsets.fromLTRB(30.0, 10, 0, 20),
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
                      )
                    ],
                  ),
                  beginOffset: Offset(0, 0.3),
                  endOffset: Offset(0, 0),
                  slideCurve: Curves.linearToEaseOut,
                ),
                PositionedDirectional(
                  bottom: -10,
                  start: 0,
                  end: 0,
                  child: EntryField(
                    counter: null,
                    padding: EdgeInsets.zero,
                    hint: locale.writeYourComment,
                    fillColor: darkColor,
                    prefix: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/user.webp'),
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.send,
                      color: mainColor,
                    ),
                  ),
                ),
              ],
            ),
          ));
}
