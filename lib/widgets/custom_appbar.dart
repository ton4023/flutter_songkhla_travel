import 'package:flutter/material.dart';
import 'package:flutter_songkhla_travel/style.dart';
import 'package:flutter_songkhla_travel/widgets/primary_text.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(
                left: 25, right: 25, top: 25, bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PrimataText(
                  text: 'Songkhla Travel',
              
                  color: AppColor.primaryColor, 
                  fontWeight: FontWeight.w700,
                   size: 32,

                ),
                RawMaterialButton(
                    constraints: BoxConstraints(minWidth: 0),
                    padding: EdgeInsets.all(8),
                    elevation: 2.0,
                    shape: CircleBorder(),
                    fillColor: Colors.white10,
                    child: Icon(
                      Icons.search_rounded,
                      color: AppColor.primaryColor,
                    ),
                    onPressed: () {})
              ],
            ),
          );
  }
}
