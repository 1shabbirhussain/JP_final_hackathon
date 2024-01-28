// import 'package:flutter/material.dart';

// TextEditingController emailController = TextEditingController();
// Widget emailField() {
//   return StreamBuilder<String>(
//       stream: bloc.emailStream,
//       builder: (context, snapshot) {
//         String currentEmailValue = snapshot.data ??
//             ''; // Default to an empty string if snapshot.data is null
//         emailController.text = currentEmailValue;
//         return Container(
//           margin: const EdgeInsets.only(bottom: 16.0),
//           child: CustomTextField(
//             onChanged: (value) => bloc.emailSink(value),
//             controller: emailController,
//             keyboardType: TextInputType.emailAddress,
//             labelText: "Email Address",
//             prefixIcon: Icons.email,
//             hintText: "you@example.com",
//             errorText: snapshot.hasError ? snapshot.error as String? : null,
//           ),
//         );
//       });
// }
