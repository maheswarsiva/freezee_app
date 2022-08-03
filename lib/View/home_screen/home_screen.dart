import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Model/userRank.dart';
import 'package:freeze_app/http/httpurls.dart';
//http
import 'package:http/http.dart' as http;
//route
import 'package:page_transition/page_transition.dart';

//Theme
import '../../../../Model/Theme/app_color.dart';
//widgets

import '../../../../Model/rolesModel.dart';
import '../../../../widgets/calender_custom.dart';
import '../../../../widgets/home_rite.dart';
import '../../../../widgets/poly_card.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<GetRoles>? rolesData = [];

  bool isloading = false;

  List<UserRankList?> userRank = [];
  String? setTime, setDate;

  String? hour, minute, time;

  String? dateTime;

  DateTime selectedDate = DateTime.now();

  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);

  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  Future<List<UserRankList?>> fetchUserData() async {
    var client = http.Client();

    Map<String, String> headers = {};
    headers['Accept'] = "application/json";
    headers["Content-Type"] = "application/json";
    headers["Content-Type"] = "application/x-www-fprm-urlencpder";

    final res = await client.get(
      Uri.parse(HttpUrls.getDataList),
      headers: headers,
    );

    if (res.statusCode == 200) {
      final jsonString = jsonDecode(res.body) as List;
      print(jsonString);

      for (var value in jsonString) {
        userRank.add(UserRankList.fromJson(value));
      }

      isloading = true;

      return userRank;
    } else {
      throw Exception('invalid data');
    }
  }

  @override
  void initState() {
    super.initState();

    fetchUserData();
  }

  @override
  void dispose() {
    fetchUserData();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // var listDATA = rolesData![0][1];
    // var listData = rolesData![0][2];

    return Scaffold(
        backgroundColor: AppColors.scaffoldBG,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Text(
                  'GRN Innovation',
                  style: TextStyle(fontSize: 20.sp, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: size.height,
                width: size.width,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 100.w,
                        width: 336.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              child: PolyData(
                                h: 104.w,
                                w: 106.w,
                                img: 'assets/images/1.png',
                                title: 'Industrial',
                                num: 1.toString(),
                                // listDATA["industrial"].toString(),
                                polyColor: Colors.white,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: HomeRite(),
                                        type: PageTransitionType.leftToRight,
                                        duration:
                                            const Duration(milliseconds: 100)));
                              },
                            ),
                            PolyData(
                              h: 104.w,
                              w: 106.w,
                              img: 'assets/images/1.png',
                              title: 'Government',
                              num: 1.toString(),
                              // listDATA["government"].toString(),
                              polyColor: Colors.white,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: HomeRite(),
                                        type: PageTransitionType.leftToRight,
                                        duration:
                                            const Duration(milliseconds: 100)));
                              },
                            ),
                            PolyData(
                              h: 104.w,
                              w: 106.w,
                              img: 'assets/images/1.png',
                              title: 'Domestic',
                              num: 1.toString(),
                              // listDATA["domestic"].toString(),
                              polyColor: Colors.white,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: HomeRite(),
                                        type: PageTransitionType.leftToRight,
                                        duration:
                                            const Duration(milliseconds: 100)));
                              },
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 75.h,
                        left: 9.w,
                        child: PolyData(
                          h: 122.h,
                          w: 133.w,
                          img: 'assets/images/2.png',
                          title: 'Distributors',
                          num: 1.toString(),
                          //listDATA["domestic"].toString(),
                          polyColor: Colors.white,
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: HomeRite(),
                                    type: PageTransitionType.leftToRight,
                                    duration:
                                        const Duration(milliseconds: 100)));
                          },
                        ),
                      ),
                      Positioned(
                        top: 75.h,
                        left: 105.w,
                        child: PolyData(
                          h: 122.h,
                          w: 133.w,
                          img: 'assets/images/2.png',
                          title: 'Dealers',
                          num: 1.toString(),
                          // listDATA["dealers"].toString(),
                          polyColor: Colors.white,
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: HomeRite(),
                                    type: PageTransitionType.leftToRight,
                                    duration:
                                        const Duration(milliseconds: 100)));
                          },
                        ),
                      ),
                      Positioned(
                        top: 75.h,
                        left: 205.w,
                        child: PolyData(
                          h: 122.h,
                          w: 133.w,
                          img: 'assets/images/2.png',
                          title: 'Technician',
                          num: 1.toString(),
                          // listDATA["Technician"].toString(),
                          polyColor: Colors.white,
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: HomeRite(),
                                    type: PageTransitionType.leftToRight,
                                    duration:
                                        const Duration(milliseconds: 100)));
                          },
                        ),
                      ),
                      Positioned(
                          top: 159.h,
                          left: 40.w,
                          child: PolyData(
                            h: 112.h,
                            w: 139.w,
                            img: 'assets/images/3.png',
                            title: 'Investers',
                            num: 1.toString(),
                            //listDATA["Investor"].toString(),
                            polyColor: Colors.white,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: HomeRite(),
                                      type: PageTransitionType.leftToRight,
                                      duration:
                                          const Duration(milliseconds: 100)));
                            },
                          )),
                      Positioned(
                          top: 159.h,
                          left: 160.w,
                          child: PolyData(
                            h: 112.h,
                            w: 139.w,
                            img: 'assets/images/99.png',
                            title: 'B.Partner',
                            num: 1.toString(),
                            //listDATA["B.partner"].toString(),
                            polyColor: Colors.white,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: HomeRite(),
                                      type: PageTransitionType.leftToRight,
                                      duration:
                                          const Duration(milliseconds: 100)));
                            },
                          )),
                      Positioned(
                          top: 190.h,
                          left: 88.w,
                          child: PolyData(
                            h: 140.h,
                            w: 166.w,
                            img: 'assets/images/4.png',
                            title: '      GRN \n Innovation',
                            num: 1.toString(),

                            // rolesData![0][0]["GRN Innovation"]
                            //     .toString(),
                            polyColor: Colors.black,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: HomeRite(),
                                      type: PageTransitionType.leftToRight,
                                      duration:
                                          const Duration(milliseconds: 100)));
                            },
                          )),
                      Positioned(
                        top: 290.h,
                        // right :0.09.w,
                        child: SizedBox(
                          width: size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Product',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 0.7.w,
                              ),
                              Container(
                                width: 80.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'assets/images/background.png'),
                                )),
                                child:
                                    Image.asset('assets/images/Rectangle.png'),
                              ),
                              SizedBox(
                                width: 0.7.w,
                              ),
                              Text('Service',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold)),

                              //    SvgPicture.asset('assets/images/background.png',width: 89.w,height: 80.h,),
                              SizedBox(
                                width: 0.7.w,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          top: 310.h,
                          right: 80.w,
                          child: PolyData(
                            h: 150.h,
                            w: 180.w,
                            img: 'assets/images/5.png',
                            title: '       Rite \n Foundation',
                            num: 1.toString(),
                            //  rolesData![0][0]["Rite Foundation"]
                            //     .toString(),
                            polyColor: Colors.black,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: HomeRite(),
                                      type: PageTransitionType.leftToRight,
                                      duration:
                                          const Duration(milliseconds: 100)));
                            },
                          )),
                      Positioned(
                          top: 355.h,
                          right: 120.w,
                          child: PolyData(
                            h: 160.h,
                            w: 230.w,
                            img: 'assets/images/8.png',
                            title: 'Advisor',
                            num: 1.toString(),
                            //listData["advisor"].toString(),
                            polyColor: Colors.white,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: HomeRite(),
                                      type: PageTransitionType.leftToRight,
                                      duration:
                                          const Duration(milliseconds: 100)));
                            },
                          )),
                      Positioned(
                          top: 355.h,
                          left: 120.w,
                          child: PolyData(
                            h: 160.h,
                            w: 230.w,
                            img: 'assets/images/11.png',
                            title: 'Admin',
                            num: 1.toString(),
                            // listData["admin"].toString(),
                            polyColor: Colors.white,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: HomeRite(),
                                      type: PageTransitionType.leftToRight,
                                      duration:
                                          const Duration(milliseconds: 100)));
                            },
                          )),
                      Positioned(
                          top: 420.h,
                          right: 180.w,
                          child: PolyData(
                            h: 170.h,
                            w: 178.w,
                            img: 'assets/images/6.png',
                            title: 'Institution',
                            num: 1.toString(),
                            //listData["institution"].toString(),
                            polyColor: Colors.white,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: HomeRite(),
                                      type: PageTransitionType.leftToRight,
                                      duration:
                                          const Duration(milliseconds: 100)));
                            },
                          )),
                      Positioned(
                          top: 420.h,
                          left: 84.w,
                          child: PolyData(
                            h: 170.h,
                            w: 178.w,
                            img: 'assets/images/6.png',
                            title: 'Trust',
                            num: 1.toString(),
                            // listData["trust"].toString(),
                            polyColor: Colors.white,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: HomeRite(),
                                      type: PageTransitionType.leftToRight,
                                      duration:
                                          const Duration(milliseconds: 100)));
                            },
                          )),
                      Positioned(
                          top: 420.h,
                          left: 184.w,
                          child: PolyData(
                            h: 170.h,
                            w: 178.w,
                            img: 'assets/images/6.png',
                            title: 'Association',
                            num: 1.toString(),
                            // listData["association"].toString(),
                            polyColor: Colors.white,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: HomeRite(),
                                      type: PageTransitionType.leftToRight,
                                      duration:
                                          const Duration(milliseconds: 100)));
                            },
                          )),
                      Positioned(
                          top: 520.h,
                          left: 220.w,
                          child: PolyData(
                            h: 150.h,
                            w: 130.w,
                            img: 'assets/images/7.png',
                            title: 'Job Seekers',
                            num: 1.toString(),
                            //listData["students"].toString(),
                            polyColor: Colors.white,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: HomeRite(),
                                      type: PageTransitionType.leftToRight,
                                      duration:
                                          const Duration(milliseconds: 100)));
                            },
                          )),
                      Positioned(
                          top: 520.h,
                          left: 105.w,
                          child: PolyData(
                            h: 150.h,
                            w: 130.w,
                            img: 'assets/images/7.png',
                            title: 'Public',
                            num: 1.toString(),
                            //listData["public"].toString(),
                            polyColor: Colors.white,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: HomeRite(),
                                      type: PageTransitionType.leftToRight,
                                      duration:
                                          const Duration(milliseconds: 100)));
                            },
                          )),
                      Positioned(
                          top: 520.h,
                          right: 210.w,
                          child: PolyData(
                            h: 150.h,
                            w: 150.w,
                            img: 'assets/images/7.png',
                            title: 'Students',
                            num: 1.toString(),
                            // listData["job seakers"].toString(),
                            polyColor: Colors.white,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: HomeRite(),
                                      type: PageTransitionType.leftToRight,
                                      duration:
                                          const Duration(milliseconds: 100)));
                            },
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(6.r),
                //height: size.height,
                width: size.width,
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        mainAxisExtent: 200,
                        childAspectRatio: 4),
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Color(0xff939F9A),
                            border:
                                Border.all(color: Color(0xffB78ACF), width: 2),
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xff4A4A4A).withOpacity(0.4),
                                  Color(0xff696868),
                                  Color(0xff4A4A4A).withOpacity(0.4),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 10.sp,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    userRank[0]!
                                        .dealers![index]
                                        .name
                                        .toString(),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14.sp),
                                  ),
                                  InkWell(
                                    child: Icon(Icons.calendar_month_rounded,
                                        color: Colors.white, size: 14.sp),
                                    onTap: () {
                                      _showMaterialDialog(context);
                                    },
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 20.0.w, right: 20.0.w),
                                child: Divider(
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 2.sp,
                                  ),
                                  CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.grey,
                                    backgroundImage: NetworkImage(''),
                                  ),
                                  Text(
                                    'Name',
                                    style: TextStyle(
                                        color: Color(0xff939F9A),
                                        fontSize: 10.sp),
                                  ),
                                  SizedBox(
                                    width: 2.sp,
                                  ),
                                  Text(
                                    '320',
                                    style: TextStyle(
                                        color: Color(0xff939F9A),
                                        fontSize: 10.sp),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                    style: TextStyle(
                                        color: Color(0xff939F9A),
                                        fontSize: 10.sp),
                                  ),
                                  SizedBox(
                                    width: 2.sp,
                                  ),
                                  Text(
                                    '320',
                                    style: TextStyle(
                                        color: Color(0xff939F9A),
                                        fontSize: 10.sp),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                    style: TextStyle(
                                        color: Color(0xff939F9A),
                                        fontSize: 10.sp),
                                  ),
                                  SizedBox(
                                    width: 2.sp,
                                  ),
                                  Text(
                                    '320',
                                    style: TextStyle(
                                        color: Color(0xff939F9A),
                                        fontSize: 10.sp),
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
                        )),
              ),
              Container(
                padding: EdgeInsets.all(6.r),
                //  height: size.height * 0.6,
                width: size.width,
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        mainAxisExtent: 200,
                        childAspectRatio: 4),
                    itemCount: userRank[0]!.government!.length,
                    itemBuilder: (BuildContext context, int index) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Color(0xff939F9A),
                            border:
                                Border.all(color: Color(0xffB78ACF), width: 2),
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xff4A4A4A).withOpacity(0.4),
                                  Color(0xff696868),
                                  Color(0xff4A4A4A).withOpacity(0.4),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 10.sp,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    userRank[0]!
                                        .government![index]
                                        .name
                                        .toString(),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14.sp),
                                  ),
                                  InkWell(
                                    child: Icon(Icons.calendar_month_rounded,
                                        color: Colors.white, size: 14.sp),
                                    onTap: () {
                                      _showMaterialDialog(context);
                                    },
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 20.0.w, right: 20.0.w),
                                child: Divider(
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 2.sp,
                                  ),
                                  CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.grey,
                                    backgroundImage: NetworkImage(''),
                                  ),
                                  Text(
                                    'Name',
                                    style: TextStyle(
                                        color: Color(0xff939F9A),
                                        fontSize: 10.sp),
                                  ),
                                  SizedBox(
                                    width: 2.sp,
                                  ),
                                  Text(
                                    '320',
                                    style: TextStyle(
                                        color: Color(0xff939F9A),
                                        fontSize: 10.sp),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                    style: TextStyle(
                                        color: Color(0xff939F9A),
                                        fontSize: 10.sp),
                                  ),
                                  SizedBox(
                                    width: 2.sp,
                                  ),
                                  Text(
                                    '320',
                                    style: TextStyle(
                                        color: Color(0xff939F9A),
                                        fontSize: 10.sp),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                    style: TextStyle(
                                        color: Color(0xff939F9A),
                                        fontSize: 10.sp),
                                  ),
                                  SizedBox(
                                    width: 2.sp,
                                  ),
                                  Text(
                                    '320',
                                    style: TextStyle(
                                        color: Color(0xff939F9A),
                                        fontSize: 10.sp),
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
                        )),
              )
            ],
          )),
        ));
  }
}

void _showMaterialDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return Calender_custom();
      });
}

dismissDialog(BuildContext context) {
  Navigator.pop(context);
}

void showCupertinoDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: AppColors.scaffoldBG,
          ),
          child: Column(
            children: [],
          ),
        );
      });
}
