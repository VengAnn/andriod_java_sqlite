import 'package:flutter/material.dart';

class Device extends StatelessWidget {
  final Widget smallSize;
  final Widget mediumSize;
  final Widget largeSize;

  const Device({
    super.key,
    required this.smallSize,
    required this.mediumSize,
    required this.largeSize,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, contraints) {
        if(contraints.maxWidth<=500){
          return smallSize;
        }else if(contraints.maxWidth <=1000){
          return mediumSize;
        }else{
          return largeSize;
        }
      }),
    );
  }
}
