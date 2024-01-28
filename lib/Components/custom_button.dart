// import 'package:flutter/material.dart';
// import 'package:fypii/colors.dart';

// class CustomElevatedButton extends StatelessWidget {
//   final VoidCallback onPressed;
//   final String text;
//   Color? foregroundColor;
//   Color? backgroundColor;

//   CustomElevatedButton(
//       {super.key,
//       required this.onPressed,
//       required this.text,
//       this.backgroundColor,
//       this.foregroundColor});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onPressed,
//       style: ElevatedButton.styleFrom(
//         foregroundColor: foregroundColor ?? MyColors.white100,
//         backgroundColor: backgroundColor ?? MyColors.blueBg,
//         fixedSize: const Size.fromWidth(double.maxFinite),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//       child: Text(text),
//     );
//   }
// }
