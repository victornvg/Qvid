import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:qvid/BottomNavigation/MyProfile/language_page.dart';
import 'package:qvid/BottomNavigation/bottom_navigation.dart';
import 'package:qvid/Locale/locale.dart';
import 'package:qvid/Routes/routes.dart';
import 'package:qvid/Theme/style.dart';

import 'Locale/language_cubit.dart';

void main() async {
  runApp(Phoenix(
      child: BlocProvider(
    create: (context) => LanguageCubit(),
    child: Qvid(),
  )));
  MobileAds.instance.initialize();
}

class Qvid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, Locale>(
      builder: (context, locale) => MaterialApp(
        localizationsDelegates: [
          AppLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en'),
          const Locale('de'),
        ],
        theme: appTheme,
        locale: locale,
        home: ChangeLanguagePage(),
        routes: PageRoutes().routes(),
      ),
    );
  }
}
