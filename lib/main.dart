import 'package:flutter/material.dart';
import 'package:flutter_github/l10n/localization_intl.dart';
import 'package:flutter_github/routes/HomeRoute.dart';
import 'package:flutter_github/routes/LanguageRoute.dart';
import 'package:flutter_github/routes/LoginRoute.dart';
import 'package:flutter_github/states/LocaleModel.dart';
import 'package:flutter_github/states/ThemeModel.dart';
import 'package:flutter_github/states/UserModel.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'common/global.dart';


void main() => Global.init().then((value) => runApp(const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeModel()),
        ChangeNotifierProvider(create: (_) => UserModel()),
        ChangeNotifierProvider(create: (_) => LocaleModel()),
      ],
      child: Consumer2<ThemeModel, LocaleModel>(
          builder: (BuildContext context, themeModel, localeModel, child) {
            return MaterialApp(
              theme: ThemeData(primarySwatch: themeModel.theme),
              onGenerateTitle: (context) => GmLocalizations.of(context).title,//等待多语言
              home: const HomeRoute(),
              locale: localeModel.getLocale(),

              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GmLocalizationsDelegate()
              ],
              //我们只支持美国英语和中文简体
              supportedLocales: const [
                Locale('en', 'US'), // 美国英语
                Locale('zh', 'CN'), // 中文简体
                //其他Locales
              ],

              localeResolutionCallback: (_locale, supportedLocales){
                if (localeModel.getLocale() != null) {
                  //如果已经选定语言，则不跟随系统
                  return localeModel.getLocale();
                }else {
                  //跟随系统
                  Locale locale;
                  if (supportedLocales.contains(_locale)) {
                    locale= _locale!;
                  }else {
                    //如果系统语言不是中文简体或美国英语，则默认使用美国英语
                    locale= const Locale('en', 'US');
                  }
                  return locale;
                }
              },
              routes: <String, WidgetBuilder> {
                "login": (context) => const LoginRoute(),
                "themes": (context) => const HomeRoute(),
                "language": (context) => const LanguageRoute(),
              },
            );
          }
      ),
    );
  }
}


class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const LanguageRoute(),
    );
  }
}
