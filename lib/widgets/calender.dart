import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/app_color.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';

class Calender extends StatelessWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Card(


      child: Container(
        height: 200.h,
        width: 200.h,
        color: AppColors.scaffoldBG,
        child: TableCalendar(
          formatAnimationDuration: Duration(milliseconds: 2000),
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: DateTime.now(),
        ),
      ),
    );
  }
}
