import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard(
      {super.key,
      required this.leadIcon,
      required this.title,
      required this.subTitle,
      required this.sideIcon,
      required this.onClick,
      this.yMargin});

  final IconData leadIcon;
  final String title;

  final String subTitle;
  final IconData sideIcon;
  final double? yMargin;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      color: Colors.lightBlueAccent,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: this.yMargin ?? 0),
      elevation: 5,
    child: ListTile(
      title:Text(this.title , style: TextStyle(fontWeight: FontWeight.bold),) ,
      subtitle: Text(subTitle),
      leading:Icon(leadIcon , color: Colors.white,),
      trailing: IconButton(
        onPressed: onClick,
        icon: Icon(sideIcon, color: Colors.white,),
      ),
    ),
    //   child: Padding(
    //       padding: EdgeInsets.all(6.0),
    // child: Row(
    // children: [
    // Icon(leadIcon),
    // SizedBox(width: 20),
    // ListTile()
    // // Column(
    // // crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
    // // children: [
    // // Text(this.title),
    // // Text(subTitle),
    // // ],
    // // ),
    // Spacer(),
    // IconButton(
    // onPressed: onClick,
    // icon: Icon(sideIcon),
    // ),
    // ],
    // ),

    );
  }
}
