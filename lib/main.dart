import 'package:flutter/material.dart';
import 'package:hackyeah_2024_mobile/pages/home.dart';
import 'package:hackyeah_2024_mobile/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikacja',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (_) => const HomePage(),
      },
      theme: ThemeData(
        primarySwatch: AppTheme.colors.primary,
        primaryColor: AppTheme.colors.primary,
        scaffoldBackgroundColor: AppTheme.colors.appBackground,
        appBarTheme: AppBarTheme(
            backgroundColor: AppTheme.colors.primary,
            iconTheme: IconThemeData(
              color: AppTheme.colors.textPrimary,
            ),
            actionsIconTheme: IconThemeData(
              color: AppTheme.colors.textPrimary,
            ),
            titleTextStyle: AppTheme.typography.headlineMedium
                ?.copyWith(fontSize: 18, color: AppTheme.colors.primary.shade50)),
        textTheme: AppTheme.typography,
        inputDecorationTheme: InputDecorationTheme(
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(AppTheme.mainBorderRadiusValue)),
          ),
          fillColor: Colors.white,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppTheme.colors.primary,
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: ButtonStyle(
              padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(vertical: 18, horizontal: 24)),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppTheme.mainBorderRadiusValue),
              )),
            )),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(vertical: 18, horizontal: 24)),
              elevation: const WidgetStatePropertyAll(0),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppTheme.mainBorderRadiusValue),
              )),
            )),
        filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
              padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(vertical: 18, horizontal: 24)),
              elevation: const WidgetStatePropertyAll(0),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppTheme.mainBorderRadiusValue),
              )),
            )),
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(vertical: 18, horizontal: 24)),
              elevation: const WidgetStatePropertyAll(0),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppTheme.mainBorderRadiusValue),
              )),
            )),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppTheme.colors.appBackground,
          elevation: 0,
          selectedItemColor: AppTheme.colors.primary.shade500,
          unselectedItemColor: const Color(0xff4b5563),
          selectedLabelStyle:
          const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          unselectedLabelStyle:
          const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
        dialogTheme: DialogTheme(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppTheme.mainBorderRadiusValue * 2)),
          titleTextStyle: AppTheme.typography.headlineMedium,
          contentTextStyle: AppTheme.typography.bodyMedium,
        ),
      ),
    );
  }
}
