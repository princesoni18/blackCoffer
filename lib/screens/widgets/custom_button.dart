import 'package:blackcoffer_assignment/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool filled;
  final double? size;
  final void Function()? func;
  const CustomButton({super.key,required this.text, this.filled=false,this.size=null,this.func});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap:func ,
      child: Container(
      
       padding: size!=null?EdgeInsets.symmetric(horizontal: 22,vertical: 4):EdgeInsets.symmetric(horizontal: 16,vertical: 4),
        decoration: BoxDecoration(
          color: filled?secondryblue:null,
          border: Border.all(color: secondryblue,width: 1),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Text(text,style: TextStyle(color: filled?Colors.white:secondryblue,fontSize: size??12),),
      ),
    );
  }
}