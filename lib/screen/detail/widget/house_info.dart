import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HouseInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              MenuInfo(
                  imageUrl: 'assets/icons/bedroom.svg',
                  content: '2 Bedroom\n2 Master Bedroom'),
              MenuInfo(
                  imageUrl: 'assets/icons/bathroom.svg',
                  content: '2 Bathroom\n2 Toilet'),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              MenuInfo(
                  imageUrl: 'assets/icons/kitchen.svg',
                  content: '2 Kitchen\n80 sqft'),
              MenuInfo(
                  imageUrl: 'assets/icons/parking.svg',
                  content: '1 Parking\n80 sqft'),
            ],
          )
        ],
      ),
    );
  }
}

class MenuInfo extends StatelessWidget {
  final String imageUrl;
  final String content;
  const MenuInfo({Key? key, required this.imageUrl, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          children: [
            SvgPicture.asset(imageUrl),
            SizedBox(width: 20),
            Text(
              content,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
