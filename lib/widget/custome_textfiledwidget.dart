// import 'package:flutter/material.dart';
//
//
// class Customtextwidget extends StatelessWidget{
//   Customtextwidget({super.key, this.controller, this.onChanged, this.validator, this.KeyboardType, this.prefixIcon, this.suffixIcon, this.keyboardType});
// final TextEditingController? controller;
// final void Function(String)? onChanged;
// final String? Function(String?)? validator;
// final TextInputType? keyboardType;
// final bool obsecureText=false;
// final Widget? prefixIcon;
// final Widget? suffixIcon;
//
//   @override
//   Widget build(BuildContext context)
//   {
//
//     return TextFormField(
//       controller:controller ,
//         onChanged: onChanged,
//         // validator: validator,
//         // keyboardType: keyboardType,
//         obscureText: obsecureText,
//
//
//
//
//       // onChanged: (value){
//       //   setState(() {
//       //     name=value;
//       //   });
//       // },
//       validator: (value){
//         if(value!.isEmpty)
//           return "Field is Empty";
//         if(value.length<8)
//           return "Less than 8";
//       },
//       decoration: InputDecoration(
//
//           prefixIcon: prefixIcon,
//           suffixIcon:suffixIcon,
//         // hintMaxLines: 3,
//           border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(20),
//               borderSide: BorderSide(
//                 color: Colors.teal,
//                 width: 7,
//               )
//           ),
//
//           fillColor: Colors.pinkAccent,
//           filled: true,
//           prefix: Icon(Icons.accessibility),
//           suffix: Icon(Icons.add_call)
//
//       ),
//       keyboardType: TextInputType.number,
//     );
//
//
//   }
// }
