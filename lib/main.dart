import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff100b20),
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
