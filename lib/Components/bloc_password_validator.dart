// import 'package:flutter/material.dart';


// TextEditingController passwordController = TextEditingController();
// Widget passwordField() {
//   return StreamBuilder<String>(
//     stream: bloc.passwordStream,
//     builder: (context, snapshot) {
//       String currentPasswordValue = snapshot.data ??
//           ''; // Default to an empty string if snapshot.data is null
//       passwordController.text = currentPasswordValue;
//       return Container(
//         margin: const EdgeInsets.only(bottom: 16.0),
//         child: CustomTextField(
//           onChanged: (value) => bloc.passwordSink(value),
//           controller: passwordController,
//           obscureText: true,
//           prefixIcon: Icons.lock,
//           hintText: "Enter your Password",
//           labelText: "Password",
//           errorText: snapshot.hasError ? snapshot.error as String? : null,
//         ),
//       );
//     },
//   );
// }
