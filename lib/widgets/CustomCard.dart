import 'package:flutter/material.dart';


class CustomCard extends StatelessWidget {
  CustomCard(
      {super.key,
        required this.leadIcon,
        required this.title,
        required this.subTitle,
        required this.sideIcon,
        required this.onClick});

  final IconData leadIcon;
  final String title;

  final String subTitle;
  final IconData sideIcon;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      color: Colors.blue,
      margin: EdgeInsets.symmetric(horizontal: 20),
      elevation: 5,
      child: Padding(
          padding: EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(leadIcon),
              SizedBox(width: 20),
              Column(
                children: [
                  Text(this.title),
                  Text(subTitle),
                ],
              ),
              Spacer(),
              IconButton(
                onPressed: onClick,
                icon: Icon(sideIcon),
              ),
              // Text("Mohmmed agha : mbole develloper " )
            ],
          )),
    );
  }
}
