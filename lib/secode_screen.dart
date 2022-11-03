import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Secode_Screen extends StatefulWidget {
  const Secode_Screen({Key? key}) : super(key: key);

  @override
  State<Secode_Screen> createState() => _Secode_ScreenState();
}

class _Secode_ScreenState extends State<Secode_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Align(
          alignment: Alignment.topCenter,
          child: InkWell(onTap: (){
            Get.back();
          },
            child: Hero(
              tag: 'image',
              child: Container(
                width: 400,
                color: Colors.blueAccent,
                child: Image.asset("assets/image/best.jfif",fit: BoxFit.fill,),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
