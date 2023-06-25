import 'package:bioapp/widgets/CustomCard.dart';
import 'package:bioapp/widgets/MyCard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    void _showMessage(BuildContext context, {required String text}) {
      final snackBar = SnackBar(
        content: Container(
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Builder(
        // Add Builder widget here
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: const Text('BIO APP',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              elevation: 0,
              centerTitle: true,
            ),
            body: Container(
              alignment: Alignment.center,

              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  CircleAvatar(
                    radius: 48,
                    backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/36562531?v=4'),
                    //   image here
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Mohmmed agha : mbole develloper ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text("TECH BOX : FLUTTER COURSE"),
                  Divider(
                    height: 40,
                    thickness: 2,
                    color: Colors.grey,
                    indent: 30,
                    endIndent: 30,
                  ),
                  // CustomCard
                  MyCard(
                    leadIcon: Icons.phone_android_outlined,
                    title: "Mobile ",
                    subTitle: "0597205585",
                    sideIcon: Icons.phone_android_outlined,
                    yMargin: 12.0,
                    onClick: () {
                      _showMessage(context, text: "0597205585");
                    },
                  ),
                  MyCard(
                    leadIcon: Icons.mail_lock_outlined,
                    title: "Email",
                    subTitle: "mohammedtabsem@gmail.com",
                    sideIcon: Icons.arrow_circle_right,
                    yMargin: 12.0,
                    onClick: () {
                      _showMessage(context, text: "mohammedtabsem@gmail.com");
                    },
                  ),
                  MyCard(
                    leadIcon: Icons.phone_android_outlined,
                    title: "titddle",
                    subTitle: "subTitle",
                    sideIcon: Icons.phone_android_outlined,
                    yMargin: 12.0,
                    onClick: () {
                      _showMessage(context, text: "Text for MyCard");
                    },
                  ),
                  Spacer(),
                  Text("tech box"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
