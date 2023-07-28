import 'package:get/get.dart';
import '../color_change.dart';
import '../intro.dart';
import '../login_mobile.dart';

appRoutes() => [
  GetPage(
    name: '/home',
    page: () => const MobileLogin(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/second',
    page: () => const ColorChane(),
    middlewares: [MyMiddelware()],
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/third',
    page: () => MyHomePage(),
    middlewares: [MyMiddelware()],
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}

/// main.dart page used this ///

// return GetMaterialApp(
// debugShowCheckedModeBanner: false,
// title: 'Get Route Management',
// initialRoute: '/home',
// getPages: appRoutes(),
// );