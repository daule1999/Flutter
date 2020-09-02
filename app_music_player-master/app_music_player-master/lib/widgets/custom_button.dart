import 'package:flutter/material.dart';
import '../core/const.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(200),
        ),
        border: Border.all(
          width: 2,
          color: AppColors.mainColor,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.lightBlueShadow,
            blurRadius: 10,
            offset: Offset(5, 5),
            spreadRadius: 2,
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 5,
            offset: Offset(-4, -5),
            spreadRadius: 4,
          ),
        ],
        gradient: RadialGradient(
          colors: [
            AppColors.mainColor,
            AppColors.mainColor,
            AppColors.mainColor,
            Colors.white,
          ],
        ),
      ),
      child: Icon(Icons.headset_off),
    );
  }
}
