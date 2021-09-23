import 'package:flutter/material.dart';
import 'package:flutter_songkhla_travel/screen/detail.dart';
import 'package:flutter_songkhla_travel/style.dart';
import 'package:flutter_songkhla_travel/widgets/custom_appbar.dart';
import 'package:flutter_songkhla_travel/widgets/primary_text.dart';

final List destination = [
  'https://cms.dmpcdn.com/travel/2020/12/18/fdf0d180-4127-11eb-9b6d-3fdf37c2e48e_original.jpg',
  'https://cms.dmpcdn.com/travel/2020/11/05/5715bbb0-1f57-11eb-bdc6-db3ea5673cdc_original.jpg',
  'https://cms.dmpcdn.com/travel/2020/11/04/71396a90-1e4f-11eb-a8d8-5b3fe5a0469e_original.jpg',
  'https://cms.dmpcdn.com/travel/2021/02/15/93c4d820-6f75-11eb-a8c0-d70143d96eac_original.jpg',
];
final List hotDestination = [
  {
    'imagePath':
        'https://cms.dmpcdn.com/travel/2020/11/04/9a0858a0-1e4f-11eb-a8d8-5b3fe5a0469e_original.jpg',
    'placeName': 'ย่านเมืองเก่าสงขลา',
    'placeCount': '18 Tourist place',
  },
  {
    'imagePath':
        'https://cms.dmpcdn.com/travel/2021/02/15/f61c3580-6f76-11eb-8164-4f1178f5d734_original.jpg',
    'placeName': 'ตลาดกิมหยง',
    'placeCount': '20 Tourist place',
  },
  {
    'imagePath':
        'https://cms.dmpcdn.com/travel/2020/10/04/193dbfe0-0611-11eb-b20d-4fbe3b052d33_original.jpg',
    'placeName': 'เกาะยอ',
    'placeCount': '16 Tourist place',
  },
  {
    'imagePath':
        'https://cms.dmpcdn.com/travel/2021/02/15/5864e9b0-6f74-11eb-b450-7d8b872e7c86_original.jpg',
    'placeName': 'วัดเขารูปช้าง',
    'placeCount': '10 Tourist place',
  },
  {
    'imagePath':
        'https://cms.dmpcdn.com/travel/2020/12/29/f58835c0-49cd-11eb-98c6-1375d195be9c_original.jpg',
    'placeName': 'หาดสมิหลา',
    'placeCount': '24 Tourist place',
  },
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColor.darkSecondaryColor,
                  AppColor.lightSecondary
                ])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: Colors.white54,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.place,
                  color: AppColor.primaryColor,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: Colors.white54,
                  size: 30,
                )),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
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
              Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 25, bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PrimataText(
                      text: 'Hot Travel',
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w700,
                      size: 24,
                    ),
                    PrimataText(
                      text: 'more',
                      color: Colors.white38,
                      fontWeight: FontWeight.w700,
                      size: 16,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hotDestination.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 30 : 0),
                    child: hotDestinationCard(
                        context,
                        hotDestination[index]['imagePath'],
                        hotDestination[index]['placeName'],
                        hotDestination[index]['placeCount']),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 50, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PrimataText(
                      text: 'Most Review',
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w700,
                      size: 24,
                    ),
                    PrimataText(
                      text: '22 reviews',
                      color: Colors.white38,
                      fontWeight: FontWeight.w700,
                      size: 16,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, bottom: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://avatars.githubusercontent.com/u/29207868?v=4'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 100,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PrimataText(
                                  color: Colors.white54,
                                  size: 14,
                                  fontWeight: FontWeight.w600,
                                  text: 'Ton4023'),
                              PrimataText(
                                  color: Colors.white54,
                                  size: 14,
                                  fontWeight: FontWeight.w600,
                                  text: '24 Jun')
                            ],
                          ),
                          SizedBox(height: 10,),
                          PrimataText(
                              color: Colors.white54,
                              size: 16,
                              fontWeight: FontWeight.w600,
                              text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
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

  Widget hotDestinationCard(BuildContext context, String imagePath,
      String placeName, String placeCount) {
    return GestureDetector(
      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DestinationDetail(
        imagePath: destination[0],
      ))),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 150,
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
              width: 150,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [AppColor.secondaryColor, Colors.transparent])),
            ),
          ),
          Positioned(
              bottom: 10,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimataText(
                      color: Colors.white70,
                      size: 16,
                      fontWeight: FontWeight.w700,
                      text: placeName),
                  SizedBox(
                    height: 5,
                  ),
                  PrimataText(
                      color: Colors.white70,
                      size: 10,
                      fontWeight: FontWeight.w700,
                      text: placeCount)
                ],
              ))
        ],
      ),
    );
  }
}
