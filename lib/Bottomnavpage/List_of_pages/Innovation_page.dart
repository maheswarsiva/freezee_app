// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/app_color.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.scaffoldBG,
        body: Container(
          padding: EdgeInsets.all(6.r),
          height: size.height,
          width: size.width,
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                mainAxisExtent: 200,
                childAspectRatio: 4),
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) => Topmember(),
          ),
        ));
  }
}

class Topmember extends StatefulWidget {
  const Topmember({Key? key}) : super(key: key);

  @override
  State<Topmember> createState() => _TopmemberState();
}

class _TopmemberState extends State<Topmember> {
  String? _setTime, _setDate;

  String? _hour, _minute, _time;

  String? dateTime;

  DateTime selectedDate = DateTime.now();

  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);

  TextEditingController _dateController = TextEditingController();
  TextEditingController _timeController = TextEditingController();

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        //_dateController.text = .yMd().format(selectedDate);
      });
  }

  void initState() {
    //  _dateController.text = DateFormat.yMd().format(DateTime.now());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Color(0xff939F9A),
        border: Border.all(color: Color(0xffB78ACF), width: 2),
        gradient: LinearGradient(colors: [
          Color(0xff4A4A4A),
          Color(0xff696868),
          Color(0xff696868),
          Color(0xff4A4A4A),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 10.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Tamil',
                style: TextStyle(color: Colors.white, fontSize: 14.sp),
              ),
              InkWell(
                child: Icon(Icons.calendar_month_rounded,
                    color: Colors.white, size: 14.sp),
                onTap: () {
                  _selectDate(context);
                  // showDialog(
                  //
                  //   context: context,
                  //   builder: (BuildContext context) =>   Card(
                  //     child:_buildPopupDialog(context) ,
                  //   ),
                  // );

                  //     Navigator.push(context, MaterialPageRoute(builder: (_)=>Calender()));
                },
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w),
            child: Divider(
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Name',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Target',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 2.sp,
              ),
              CircleAvatar(
                radius: 13,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                    'https://www.bing.com/images/search?view=detailV2&ccid=zc3XRPZx&id=BF3FF1DDDA9D296DFE8840F4EDB29366115F5C90&thid=OIP.zc3XRPZxUt4Xt7zDZYLa_wHaHa&mediaurl=https%3a%2f%2fpng.pngtree.com%2fpng-vector%2f20190629%2fourlarge%2fpngtree-business-people-avatar-icon-user-profile-free-vector-png-image_1527664.jpg&exph=640&expw=640&q=image+profile&simid=608035879005520382&FORM=IRPRST&ck=99D64AEA3C9678EFF98CDFABE591D5DE&selectedIndex=21&ajaxhist=0&ajaxserp=0'),
              ),
              Text(
                'Name',
                style: TextStyle(color: Color(0xff939F9A), fontSize: 10.sp),
              ),
              SizedBox(
                width: 2.sp,
              ),
              Text(
                '320',
                style: TextStyle(color: Color(0xff939F9A), fontSize: 10.sp),
              ),
              Icon(
                Icons.star,
                color: Colors.yellowAccent,
                size: 12.sp,
              ),
              SizedBox(
                width: 2.sp,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 2.sp,
              ),
              CircleAvatar(
                radius: 13,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                    'https://www.bing.com/images/search?view=detailV2&ccid=zc3XRPZx&id=BF3FF1DDDA9D296DFE8840F4EDB29366115F5C90&thid=OIP.zc3XRPZxUt4Xt7zDZYLa_wHaHa&mediaurl=https%3a%2f%2fpng.pngtree.com%2fpng-vector%2f20190629%2fourlarge%2fpngtree-business-people-avatar-icon-user-profile-free-vector-png-image_1527664.jpg&exph=640&expw=640&q=image+profile&simid=608035879005520382&FORM=IRPRST&ck=99D64AEA3C9678EFF98CDFABE591D5DE&selectedIndex=21&ajaxhist=0&ajaxserp=0'),
              ),
              Text(
                'Name',
                style: TextStyle(color: Color(0xff939F9A), fontSize: 10.sp),
              ),
              SizedBox(
                width: 2.sp,
              ),
              Text(
                '320',
                style: TextStyle(color: Color(0xff939F9A), fontSize: 10.sp),
              ),
              Icon(
                Icons.star,
                color: Colors.white,
                size: 12.sp,
              ),
              SizedBox(
                width: 2.sp,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 2.sp,
              ),
              CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                      'https://d2zo993x2i1w0h.cloudfront.net/live/2019/01/no-profile-1.png')),
              Text(
                'Name',
                style: TextStyle(color: Color(0xff939F9A), fontSize: 10.sp),
              ),
              SizedBox(
                width: 2.sp,
              ),
              Text(
                '320',
                style: TextStyle(color: Color(0xff939F9A), fontSize: 10.sp),
              ),
              Icon(
                Icons.star,
                color: Colors.brown,
                size: 12.sp,
              ),
              SizedBox(
                width: 2.sp,
              ),
            ],
          ),
          SizedBox(
            height: 10.sp,
          ),
        ],
      ),
    );
  }
}
