import 'package:flutter/material.dart';
import 'package:flutter_songkhla_travel/style.dart';
import 'package:flutter_songkhla_travel/widgets/custom_appbar.dart';

final List destination = [
  'https://cms.dmpcdn.com/travel/2020/12/18/fdf0d180-4127-11eb-9b6d-3fdf37c2e48e_original.jpg',
  'https://cms.dmpcdn.com/travel/2020/11/05/5715bbb0-1f57-11eb-bdc6-db3ea5673cdc_original.jpg',
  'https://cms.dmpcdn.com/travel/2020/11/04/71396a90-1e4f-11eb-a8d8-5b3fe5a0469e_original.jpg',
  'https://cms.dmpcdn.com/travel/2021/02/15/93c4d820-6f75-11eb-a8c0-d70143d96eac_original.jpg',
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              AppColor.secondaryColor,
              AppColor.tertiaryColor,
            ])),
        child: ListView(
          children: [
            CustomAppbar(),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: destination.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: index == 0 ? 30 : 0),
                  child: destinationCard(context, destination[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack destinationCard(BuildContext context, String imagePath) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width - 60,
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(imagePath), fit: BoxFit.cover)),
        ),
        Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width - 60,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [AppColor.secondaryColor, Colors.transparent])),
            ))
      ],
    );
  }
}
