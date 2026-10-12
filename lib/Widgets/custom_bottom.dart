import 'package:flutter/material.dart';
import 'package:note_app/constant/constants.dart';

// ignore: must_be_immutable
class CustomBotton extends StatelessWidget {
  CustomBotton({super.key, required this.bottonName, this.ontap});
  String bottonName;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width : MediaQuery.of(context).size.width,
        height: 50,
         decoration: BoxDecoration(
          color: kPrimeryColor,
          borderRadius: BorderRadius.circular(16),
          shape: BoxShape.rectangle,
        ),
        child: Center(
          child: Text(
            bottonName,
            style: TextStyle( color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
