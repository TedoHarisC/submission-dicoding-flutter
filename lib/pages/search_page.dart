// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:submission_dicoding_tedo_hc/theme.dart';
import 'package:submission_dicoding_tedo_hc/widgets/schedule_tile.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kWhiteColor,
          elevation: 0,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.chevron_left,
                  color: kBlackColor,
                ),
              ),
              SizedBox(width: 18),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: kLightGreyColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          textInputAction: TextInputAction.go,
                          onFieldSubmitted: (value) {
                            Navigator.pushNamed(context, '/search-result');
                          },
                          decoration: InputDecoration.collapsed(
                            hintText: 'Search Destination',
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.close,
                        color: kGreyColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          SizedBox(height: 41),
          Text(
            'Recomendation',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          ),
          SizedBox(height: 20),
          ScheduleTile(
            imageUrl: 'assets/destination_3.png',
            name: 'Mount ALbrus',
            nation: 'Italy',
          ),
          SizedBox(height: 20),
          ScheduleTile(
            imageUrl: 'assets/destination_1.png',
            name: 'Mount ALbrus',
            nation: 'Italy',
          ),
          SizedBox(height: 20),
          ScheduleTile(
            imageUrl: 'assets/destination_2.png',
            name: 'Mount ALbrus',
            nation: 'Italy',
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
