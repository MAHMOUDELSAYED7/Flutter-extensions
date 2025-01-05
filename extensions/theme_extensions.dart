//! THEME EXTENSION
import 'package:flutter/material.dart';

extension ThemeExtensions on BuildContext {
//! Recommended to use: ThemeData get theme => Theme.of(this);
  ThemeData get theme => Theme.of(this);

  // Existing extensions
  IconThemeData get iconTheme => Theme.of(this).iconTheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
  AppBarTheme get appBarTheme => Theme.of(this).appBarTheme;
  InputDecorationTheme get inputDecorationTheme =>
      Theme.of(this).inputDecorationTheme;
  CheckboxThemeData get checkboxTheme => Theme.of(this).checkboxTheme;
  ElevatedButtonThemeData get elevatedButtonTheme =>
      Theme.of(this).elevatedButtonTheme;
  OutlinedButtonThemeData get outlinedButtonTheme =>
      Theme.of(this).outlinedButtonTheme;
  TextButtonThemeData get textButtonTheme => Theme.of(this).textButtonTheme;
  CardThemeData get cardTheme => Theme.of(this).cardTheme;
  DialogThemeData get dialogTheme => Theme.of(this).dialogTheme;
  FloatingActionButtonThemeData get floatingActionButtonTheme =>
      Theme.of(this).floatingActionButtonTheme;
  BottomNavigationBarThemeData get bottomNavigationBarTheme =>
      Theme.of(this).bottomNavigationBarTheme;
  NavigationRailThemeData get navigationRailTheme =>
      Theme.of(this).navigationRailTheme;
  SliderThemeData get sliderTheme => Theme.of(this).sliderTheme;
  TabBarThemeData get tabBarTheme => Theme.of(this).tabBarTheme;
  TooltipThemeData get tooltipTheme => Theme.of(this).tooltipTheme;
  PopupMenuThemeData get popupMenuTheme => Theme.of(this).popupMenuTheme;
  MaterialBannerThemeData get bannerTheme => Theme.of(this).bannerTheme;
  DividerThemeData get dividerTheme => Theme.of(this).dividerTheme;
  BottomSheetThemeData get bottomSheetTheme => Theme.of(this).bottomSheetTheme;
  TimePickerThemeData get timePickerTheme => Theme.of(this).timePickerTheme;
  ThemeData get darkTheme => ThemeData.dark();
  ThemeData get lightTheme => ThemeData.light();

  // Additional extensions
  ButtonThemeData get buttonTheme => Theme.of(this).buttonTheme;
  ChipThemeData get chipTheme => Theme.of(this).chipTheme;
  DataTableThemeData get dataTableTheme => Theme.of(this).dataTableTheme;
  DrawerThemeData get drawerTheme => Theme.of(this).drawerTheme;
  ExpansionTileThemeData get expansionTileTheme =>
      Theme.of(this).expansionTileTheme;
  ListTileThemeData get listTileTheme => Theme.of(this).listTileTheme;
  MenuThemeData get menuTheme => Theme.of(this).menuTheme;
  NavigationBarThemeData get navigationBarTheme =>
      Theme.of(this).navigationBarTheme;
  PageTransitionsTheme get pageTransitionsTheme =>
      Theme.of(this).pageTransitionsTheme;
  ProgressIndicatorThemeData get progressIndicatorTheme =>
      Theme.of(this).progressIndicatorTheme;
  RadioThemeData get radioTheme => Theme.of(this).radioTheme;
  ScrollbarThemeData get scrollbarTheme => Theme.of(this).scrollbarTheme;
  SwitchThemeData get switchTheme => Theme.of(this).switchTheme;
  TextSelectionThemeData get textSelectionTheme =>
      Theme.of(this).textSelectionTheme;
  BottomAppBarTheme get bottomAppBarTheme => Theme.of(this).bottomAppBarTheme;
  MaterialTapTargetSize get materialTapTargetSize =>
      Theme.of(this).materialTapTargetSize;
  Typography get typography => Theme.of(this).typography;
  VisualDensity get visualDensity => Theme.of(this).visualDensity;
  IconButtonThemeData get iconButtonTheme => Theme.of(this).iconButtonTheme;
}
