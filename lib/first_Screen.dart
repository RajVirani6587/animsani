import 'package:animsani/secode_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class First_Screen extends StatefulWidget {
  const First_Screen({Key? key}) : super(key: key);

  @override
  State<First_Screen> createState() => _First_ScreenState();
}

class _First_ScreenState extends State<First_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Align(
          alignment: Alignment.bottomCenter,
          child: InkWell(onTap: (){
            Get.to(Secode_Screen());
          },
            child: Hero(
              tag: 'image',
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blueAccent,
                child: Image.asset("assets/image/gest.jfif",fit: BoxFit.fill),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
