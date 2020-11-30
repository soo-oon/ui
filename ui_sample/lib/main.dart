import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_sample/View/home_view.dart';
import 'package:ui_sample/models/my_theme_provider.dart';
import 'package:ui_sample/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyThemeModel(),
      child: Consumer<MyThemeModel>(builder: (context, theme, child) {
        return MaterialApp(
          title: 'ClockUI',
          debugShowCheckedModeBanner: false,
          theme: themeData(context),
          darkTheme: darkThemeData(context),
          themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
          home: HomeView(),
        );
      }),
    );
  }
}
