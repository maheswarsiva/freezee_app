import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../Theme/app_color.dart';
import '../../../../widgets/calender_custom.dart';
import '../../../../widgets/poly_card.dart';
import '../../../../widgets/home_rite.dart';






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


        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 10.h,),
                Center(
                  child: Text('GRN Innovation',style: TextStyle(fontSize: 20.sp,color: Colors.white),),
                ),
                SizedBox(height: 10.h,),
                SizedBox(
                  height: size.height,
                  width:size.width,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 10.w,right: 10.w),
                    child: Stack(

                      children:

                      [
                        SizedBox(

                          height: 100.w,
                          width: 336.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [

                              InkWell(child: poly_images(h: 104.w, w:  106.w, img: 'assets/images/1.png', title: 'Industrial', num: '0', polyColor: Colors.white,),onTap: (){
                                Navigator.push(context, PageTransition(child: HomeRite(), type: PageTransitionType.leftToRight,

                                    duration: const Duration(milliseconds: 100)
                                ));
                              },),
                              poly_images(h: 104.w, w:  106.w, img: 'assets/images/1.png', title: 'Government', num: '0', polyColor: Colors.white,),
                              poly_images(h: 104.w, w:  106.w, img: 'assets/images/1.png', title: 'Domestic', num: '0', polyColor: Colors.white,),


                            ],
                          ),
                        ),

                        Positioned(
                          top: 75.h,
                          left: 9.w,

                          child:

                          InkWell(child: poly_images(h: 122.h, w: 133.w, img: 'assets/images/2.png', title: 'Distributors', num: '0', polyColor: Colors.white),onTap: (){},),),



                        Positioned(
                          top: 75.h,
                          left:105.w,
                          child:


                          poly_images(h: 122.h, w: 133.w, img: 'assets/images/2.png', title: 'Dealers', num: '0', polyColor: Colors.white),),

                        Positioned(
                          top: 75.h,
                          left:205.w,
                          child:


                          poly_images(h: 122.h, w: 133.w, img: 'assets/images/2.png', title: 'Technician', num: '0', polyColor: Colors.white),),



                        Positioned(
                            top: 159.h,
                            left:40.w,
                            child:


                            poly_images(h: 112.h, w: 139.w, img: 'assets/images/3.png', title: 'Technician', num: '0', polyColor: Colors.white)

                        ),
                        Positioned(
                            top: 159.h,
                            left:160.w,
                            child:


                            poly_images(h: 112.h, w: 139.w, img: 'assets/images/99.png', title: 'B.Partner', num: '0', polyColor: Colors.white)

                        ),
                        Positioned(
                            top: 190.h,
                            left:88.w,
                            child:


                            poly_images(h: 140.h, w: 166.w, img: 'assets/images/4.png', title: '      GRN \n Innovation', num: '0', polyColor: Colors.black)

                        ),

                        Positioned(
                          top: 290.h,
                     // right :0.09.w,
                          child:SizedBox(
                            width: size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: [


                                Text('Product',style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.bold)),
                                SizedBox(width: 0.7.w,),
                                Container(
                                  width: 80.w,height: 60.h,
                                  decoration : BoxDecoration(
                                      image:  DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage('assets/images/background.png'),
                                      )
                                  ),
                                  child: Image.asset('assets/images/Rectangle.png'),
                                ),
                                SizedBox(width: 0.7.w,),
                                Text('Service',style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.bold)),

                                //    SvgPicture.asset('assets/images/background.png',width: 89.w,height: 80.h,),
                                SizedBox(width: 0.7.w,),

                              ],
                            ),
                          ),

                        ),
                        Positioned(
                            top: 310.h,
                            right:80  .w,
                            child: poly_images(h: 150.h, w: 180.w, img:'assets/images/5.png' , title: '       Rite \n Foundation', num: '0', polyColor: Colors.black,)


                        ),
                        Positioned(
                            top: 355.h,
                            right:120.w,
                            child: poly_images(h: 160.h, w: 230.w, img:'assets/images/8.png' , title: 'Advisor', num: '0', polyColor: Colors.white,)




                        ),
                        Positioned(
                            top: 355.h,
                            left:120.w,
                            child: poly_images(h: 160.h, w: 230.w, img:'assets/images/11.png' , title: 'Admin', num: '0', polyColor: Colors.white,)



                        ),
                        Positioned(
                            top: 420.h,
                            right:180.w,
                            child: poly_images(h: 170.h, w: 178.w, img:'assets/images/6.png' , title: 'Institution', num: '0', polyColor: Colors.white,)


                        ),
                        Positioned(
                            top: 420.h,
                            left:84.w,
                            child: poly_images(h: 170.h, w: 178.w, img:'assets/images/6.png' , title: 'Trust', num: '0', polyColor: Colors.white,)




                        ),


                        Positioned(
                            top: 420.h,
                            left:184.w,
                            child: poly_images(h:  170.h, w: 178.w, img:'assets/images/6.png' , title: 'Association', num: '0', polyColor: Colors.white,)



                        ),

                        Positioned(
                            top: 520.h,
                            left:220.w,
                            child: poly_images(h: 150.h, w: 130.w, img:'assets/images/7.png' , title: 'Job Seekers', num: '0', polyColor: Colors.white,)



                        ),

                        Positioned(
                            top: 520.h,
                            left:105.w,
                            child: poly_images(h: 150.h, w: 130.w, img:'assets/images/7.png' , title: 'Public', num: '0', polyColor: Colors.white,)



                        ),
                        Positioned(
                            top: 520.h,
                            right: 210.w,
                            child: poly_images(h:  150.h, w: 150.w, img:'assets/images/7.png' , title: 'Students', num: '0', polyColor: Colors.white,)



                        ),

                      ],
                    ),
                  ),
                ),
      Container(
      padding: EdgeInsets.all(6.r),
    height: size.height ,
    width: size.width,
    child: GridView.builder(
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 20,
    mainAxisSpacing: 20,
    mainAxisExtent: 200,
    childAspectRatio: 4
    ),
    itemCount: 6,
    itemBuilder: (BuildContext context, int index) => Topmember(),
    ),
    )
              ],
            ),
          ),
        )





    );;
  }
}

class Topmember extends StatefulWidget {
  const Topmember({Key? key}) : super(key: key);

  @override
  State<Topmember> createState() => _TopmemberState();
}

class _TopmemberState extends State<Topmember> {
  String ? _setTime, _setDate;

  String ?_hour, _minute, _time;

  String ? dateTime;

  DateTime selectedDate = DateTime.now();

  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);

  TextEditingController _dateController = TextEditingController();
  TextEditingController _timeController = TextEditingController();


  // _selectDate(BuildContext context) async {
  //   final DateTime? picked = await
  //
  //
  //   showDatePicker(
  //
  //       context: context,
  //       initialDate: selectedDate,
  //       initialDatePickerMode: DatePickerMode.day,
  //       firstDate: DateTime(2015),
  //       lastDate: DateTime(2101),
  //
  //   );
  //   if (picked != null)
  //     setState(() {
  //       selectedDate = picked;
  //       //_dateController.text = .yMd().format(selectedDate);
  //     });
  // }
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
        border: Border.all(color: Color(0xffB78ACF),width: 2),

        gradient: LinearGradient(
            colors: [
              Color(0xff4A4A4A).withOpacity(0.4),
              Color(0xff696868),

              Color(0xff4A4A4A).withOpacity(0.4),

            ],
            begin: Alignment.topLeft,end: Alignment.bottomRight

        ),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 10.sp,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Tamil',style: TextStyle(color: Colors.white, fontSize: 14.sp),),
              InkWell(child: Icon(Icons.calendar_month_rounded,color: Colors.white, size: 14.sp),
                onTap: (){
               _showMaterialDialog(context);

            //    showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1900), lastDate: DateTime(2101));
            //       Navigator.push(context, PageTransition(child: Calender_custom(), type: PageTransitionType.leftToRight,

                  //     duration: const Duration(milliseconds: 100)
                  // ));



                },)


            ],
          ),
          Container(
            padding:  EdgeInsets.only(left: 20.0.w,right: 20.0.w),
            child: Divider(  color: Colors.white,),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Text('Name',style: TextStyle(color: Colors.white),),
              Text('Target',style: TextStyle(color: Colors.white),)



            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 2.sp,),
              CircleAvatar(
                radius: 13,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage('https://www.bing.com/images/search?view=detailV2&ccid=zc3XRPZx&id=BF3FF1DDDA9D296DFE8840F4EDB29366115F5C90&thid=OIP.zc3XRPZxUt4Xt7zDZYLa_wHaHa&mediaurl=https%3a%2f%2fpng.pngtree.com%2fpng-vector%2f20190629%2fourlarge%2fpngtree-business-people-avatar-icon-user-profile-free-vector-png-image_1527664.jpg&exph=640&expw=640&q=image+profile&simid=608035879005520382&FORM=IRPRST&ck=99D64AEA3C9678EFF98CDFABE591D5DE&selectedIndex=21&ajaxhist=0&ajaxserp=0'),

              ),

              Text('Name',style: TextStyle(color: Color(0xff939F9A),fontSize: 10.sp),),
              SizedBox(width: 2.sp,),
              Text('320',style: TextStyle(color: Color(0xff939F9A),fontSize: 10.sp),),
              Icon(Icons.star,color: Colors.yellowAccent,size: 12.sp,),
              SizedBox(width: 2.sp,),





            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 2.sp,),
              CircleAvatar(
                radius: 13,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage('https://www.bing.com/images/search?view=detailV2&ccid=zc3XRPZx&id=BF3FF1DDDA9D296DFE8840F4EDB29366115F5C90&thid=OIP.zc3XRPZxUt4Xt7zDZYLa_wHaHa&mediaurl=https%3a%2f%2fpng.pngtree.com%2fpng-vector%2f20190629%2fourlarge%2fpngtree-business-people-avatar-icon-user-profile-free-vector-png-image_1527664.jpg&exph=640&expw=640&q=image+profile&simid=608035879005520382&FORM=IRPRST&ck=99D64AEA3C9678EFF98CDFABE591D5DE&selectedIndex=21&ajaxhist=0&ajaxserp=0'),

              ),

              Text('Name',style: TextStyle(color: Color(0xff939F9A),fontSize: 10.sp),),
              SizedBox(width: 2.sp,),
              Text('320',style: TextStyle(color: Color(0xff939F9A),fontSize: 10.sp),),
              Icon(Icons.star,color: Colors.white,size: 12.sp,),
              SizedBox(width: 2.sp,),





            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 2.sp,),
              CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage('https://d2zo993x2i1w0h.cloudfront.net/live/2019/01/no-profile-1.png')),

              Text('Name',style: TextStyle(color: Color(0xff939F9A),fontSize: 10.sp),),
              SizedBox(width: 2.sp,),
              Text('320',style: TextStyle(color: Color(0xff939F9A),fontSize: 10.sp),),
              Icon(Icons.star,color: Colors.brown,size: 12.sp,),
              SizedBox(width: 2.sp,),





            ],
          ),

          SizedBox(height: 10.sp,),
        ],
      ),

    );
  }
}

void _showMaterialDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return Calender_custom();
      });
}

_dismissDialog(BuildContext context) {
  Navigator.pop(context);
}

void _showCupertinoDialog(BuildContext context) {
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
            children: [

            ],
          ),
        );
      });
}
