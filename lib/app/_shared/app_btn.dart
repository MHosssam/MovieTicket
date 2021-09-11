// import 'package:flutter/material.dart';

// class AppButton extends StatelessWidget {
//   final void Function() onTap;
//   final String? title;
//   final Widget? titleWidget;
//   final Color? color, titleColor;
//   final double? width, hieght, fontSize;
//   final BorderRadius? borderRadius;
//   final BoxBorder? border;
//   final AlignmentDirectional? alignment;

//   AppButton({
//     required this.onTap,
//     this.color,
//     this.titleColor = Colors.white,
//     this.title,
//     this.hieght,
//     this.width,
//     this.fontSize,
//     this.borderRadius,
//     this.titleWidget,
//     this.alignment,
//     this.border,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         width: width ?? 230,
//         alignment: alignment,
//         height: hieght ?? 35.0,
//         decoration: BoxDecoration(
//           color: color ?? AppUi.colors.green,
//           borderRadius: borderRadius ?? BorderRadius.circular(30.0),
//           border: border,
//         ),
//         child: Center(
//           child: titleWidget ??
//               AppText(
//                 text: title,
//                 fontSize: 15,
//                 color: titleColor,
//               ),
//         ),
//       ),
//     );
//   }
// }
