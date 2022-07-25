import 'package:freeze_app/View/Bottomnavpage/List_of_pages/splashscreen.dart';
import 'package:freeze_app/View/SignIn/login_screen/login_screen.dart';
import 'package:freeze_app/View/SignIn/register_screen/register_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static List<GetPage<dynamic>>? routes = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: '/register', page: () => RegisterScreen()),
    GetPage(name: '/login', page: () => LoginScreen()),
  ];
}
