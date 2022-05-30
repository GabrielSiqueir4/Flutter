import 'package:gabriel_s_application1/presentation/intro_1_screen/intro_1_screen.dart';
import 'package:gabriel_s_application1/presentation/intro_1_screen/binding/intro_1_binding.dart';
import 'package:gabriel_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:gabriel_s_application1/presentation/splash_screen/binding/splash_binding.dart';
import 'package:gabriel_s_application1/presentation/intro_2_screen/intro_2_screen.dart';
import 'package:gabriel_s_application1/presentation/intro_2_screen/binding/intro_2_binding.dart';
import 'package:gabriel_s_application1/presentation/intro_3_screen/intro_3_screen.dart';
import 'package:gabriel_s_application1/presentation/intro_3_screen/binding/intro_3_binding.dart';
import 'package:gabriel_s_application1/presentation/text_styles_screen/text_styles_screen.dart';
import 'package:gabriel_s_application1/presentation/text_styles_screen/binding/text_styles_binding.dart';
import 'package:gabriel_s_application1/presentation/fields_screen/fields_screen.dart';
import 'package:gabriel_s_application1/presentation/fields_screen/binding/fields_binding.dart';
import 'package:gabriel_s_application1/presentation/buttons_screen/buttons_screen.dart';
import 'package:gabriel_s_application1/presentation/buttons_screen/binding/buttons_binding.dart';
import 'package:gabriel_s_application1/presentation/cards_screen/cards_screen.dart';
import 'package:gabriel_s_application1/presentation/cards_screen/binding/cards_binding.dart';
import 'package:gabriel_s_application1/presentation/tab_bars_screen/tab_bars_screen.dart';
import 'package:gabriel_s_application1/presentation/tab_bars_screen/binding/tab_bars_binding.dart';
import 'package:gabriel_s_application1/presentation/colors_screen/colors_screen.dart';
import 'package:gabriel_s_application1/presentation/colors_screen/binding/colors_binding.dart';
import 'package:gabriel_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:gabriel_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String intro1Screen = '/intro_1_screen';

  static String splashScreen = '/splash_screen';

  static String intro2Screen = '/intro_2_screen';

  static String intro3Screen = '/intro_3_screen';

  static String textStylesScreen = '/text_styles_screen';

  static String fieldsScreen = '/fields_screen';

  static String buttonsScreen = '/buttons_screen';

  static String cardsScreen = '/cards_screen';

  static String tabBarsScreen = '/tab_bars_screen';

  static String colorsScreen = '/colors_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: intro1Screen,
      page: () => Intro1Screen(),
      bindings: [
        Intro1Binding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: intro2Screen,
      page: () => Intro2Screen(),
      bindings: [
        Intro2Binding(),
      ],
    ),
    GetPage(
      name: intro3Screen,
      page: () => Intro3Screen(),
      bindings: [
        Intro3Binding(),
      ],
    ),
    GetPage(
      name: textStylesScreen,
      page: () => TextStylesScreen(),
      bindings: [
        TextStylesBinding(),
      ],
    ),
    GetPage(
      name: fieldsScreen,
      page: () => FieldsScreen(),
      bindings: [
        FieldsBinding(),
      ],
    ),
    GetPage(
      name: buttonsScreen,
      page: () => ButtonsScreen(),
      bindings: [
        ButtonsBinding(),
      ],
    ),
    GetPage(
      name: cardsScreen,
      page: () => CardsScreen(),
      bindings: [
        CardsBinding(),
      ],
    ),
    GetPage(
      name: tabBarsScreen,
      page: () => TabBarsScreen(),
      bindings: [
        TabBarsBinding(),
      ],
    ),
    GetPage(
      name: colorsScreen,
      page: () => ColorsScreen(),
      bindings: [
        ColorsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => Intro1Screen(),
      bindings: [
        Intro1Binding(),
      ],
    )
  ];
}
