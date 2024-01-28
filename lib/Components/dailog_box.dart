// import 'package:flutter/material.dart';
// import 'package:fypii/Components/custom_button.dart';
// // import 'package:get/get.dart';
// // Import your CustomElevatedButton or the relevant widget

// class CustomDialog extends StatefulWidget {
//   final String message;
//   final String buttonText;
//   final VoidCallback onPressed;

//   const CustomDialog({
//     Key? key,
//     required this.message,
//     required this.buttonText,
//     required this.onPressed,
//   }) : super(key: key);

//   @override
//   _CustomDialogState createState() => _CustomDialogState();
// }

// class _CustomDialogState extends State<CustomDialog> {
//   @override
//   Widget build(BuildContext context) {
//     return Builder(
//       builder: (BuildContext context) {
//         return Dialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20.0),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 const Icon(
//                   Icons.mark_email_read,
//                   size: 64.0,
//                   color: Colors.yellow, // Update to the desired color
//                 ),
//                 const SizedBox(height: 16.0),
//                 Text(
//                   widget.message,
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(height: 16.0),
//                 CustomElevatedButton(
//                   onPressed: widget.onPressed,
//                   text: widget.buttonText,
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
