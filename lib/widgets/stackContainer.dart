import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StackContainer extends StatelessWidget {
  final Widget child;
  final double height;
  const StackContainer({Key? key, required this.child, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      

      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xFF393838),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(44.w),topRight: Radius.circular(44.w)),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(21, 21, 21, 0.9),
              blurRadius: 13.w,
              offset: Offset(5, 5)),
          BoxShadow(
              color: Color.fromRGBO(62, 62, 62, 0.9),
              blurRadius: 10.w,
              offset: Offset(-5, -5)),
          BoxShadow(
              color: Color.fromRGBO(21, 21, 21, 0.2),
              blurRadius: 10.w,
              offset: Offset(5, -5)),
          BoxShadow(
              color: Color.fromRGBO(21, 21, 21, 0.2),
              blurRadius: 10.w,
              offset: Offset(-5, 5)),
          BoxShadow(
              color: Color.fromRGBO(21, 21, 21, 0.5),
              blurRadius: 2.w,
              blurStyle: BlurStyle.inner,
              offset: Offset(-1, -1)),
          BoxShadow(
              color: Color.fromRGBO(62, 62, 62, 0.3),
              blurRadius: 2.w,
              blurStyle: BlurStyle.inner,
              offset: Offset(1, 1)),



        ]
      ),

      child:  child,
    );
  }
}
