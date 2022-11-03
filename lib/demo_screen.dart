import 'package:flutter/material.dart';

class Demo_Screem extends StatefulWidget {
  const Demo_Screem({Key? key}) : super(key: key);

  @override
  State<Demo_Screem> createState() => _Demo_ScreemState();
}

class _Demo_ScreemState extends State<Demo_Screem> with SingleTickerProviderStateMixin{
  AnimationController ? _animationController;

  @override
  void initState() {
    super.initState();
     _animationController = AnimationController(vsync: this,duration: Duration(seconds: 2));
     _animationController!.repeat();

   }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("earth"),
        ),
        body: Center(
          child: AnimatedBuilder(
            child: Image.asset("assets/image/earth.png",height: 100,width: 100,fit: BoxFit.fill,),
            animation:_animationController! ,
            builder: (context,v1){
              return Transform.rotate(
                angle: _animationController!.value*6,
                 child:v1,
              );
            },
          ),
        )
      ),
    );
  }
}
