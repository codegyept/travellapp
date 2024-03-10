import'package:flutter/material.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool isObsureText;
  final String obsureCharacters;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

   const CustomTextField({super.key,
     required this.controller,
     this.keyboardType=TextInputType.text,
     required this.isObsureText,
     required this.obsureCharacters,
     required this.hintText,
     this.prefixIcon,
     this.suffixIcon
   });

  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width;

    return Opacity(
      opacity: 0.1,
      child: TextFormField(
        controller:controller ,
         keyboardType:keyboardType ,
         obscureText:isObsureText,
         obscuringCharacter:obsureCharacters ,
         style:const TextStyle(fontFamily:"Switzer",
         color: Colors.grey,
         fontSize: 14),
         decoration: InputDecoration(
           contentPadding:  const EdgeInsets.only(top: 12),
           constraints:  BoxConstraints(
             maxHeight:height*0.065,
             maxWidth: width,
           ),
           filled: true,
           hintText:hintText ,
           hintStyle:const TextStyle(fontFamily:"Switzer",
               color: Colors.grey,
               fontSize: 14),
           prefixIcon:prefixIcon ,
           suffixIcon: suffixIcon,
           border:OutlineInputBorder(
             borderRadius: BorderRadius.circular(30.0),
               borderSide: const BorderSide(
                 color:AppColors.textAndBackgroundColorButton,
                 width: 1.0
           )
           ),
           enabledBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(30.0),
             borderSide: const BorderSide(
               color: AppColors.textAndBackgroundColorButton,
               width: 1.0,
             )
           )

         ),
      ),
    );

  }

  }