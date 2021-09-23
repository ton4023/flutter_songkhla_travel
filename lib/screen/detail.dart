import 'package:flutter/material.dart';
import 'package:flutter_songkhla_travel/style.dart';
import 'package:flutter_songkhla_travel/widgets/primary_text.dart';

class DestinationDetail extends StatelessWidget {
  final String imagePath;

  DestinationDetail({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: PrimataText(
          text: 'Select Location',
          color: AppColor.primaryColor,
          size: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imagePath), fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customAppbar2(context),
                Container(
                  height: MediaQuery.of(context).size.height * .50,
                  padding: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColor.darkSecondaryColor,
                        AppColor.lightTertiaryColor
                      ]
                    )
                  ),
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: PrimataText(color: Colors.white60, size: 30, fontWeight: FontWeight.w300, text: 'เกาะยอ'),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 25,right: 25 ,bottom: 25),
                        child: PrimataText(color: Colors.white60, size: 24, fontWeight: FontWeight.w200, text: 'Ad occaecat ullamco anim exercitation nostrud tempor do adipisicing tempor nulla nisi consectetur do voluptate. Occaecat id cillum adipisicing non laboris duis ut.'),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding customAppbar2(context) {
    return Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: ()=> Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back,
                        size: 40,
                      ),
                    ),
                    RawMaterialButton(
                      onPressed: (){},
                      elevation: 2.0,
                      child: Icon(
                        Icons.info,
                        size: 40,
                      ),
                    )
                  ],
                ),
              );
  }
}
