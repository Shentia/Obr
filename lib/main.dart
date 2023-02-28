import 'package:blog/router/go_router_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = ref.watch(goRouterProvider);

    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      title: 'CIBC OBR',
      theme: ThemeData(
        fontFamily: GoogleFonts.roboto().fontFamily,
        useMaterial3: true,
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 72.0,
          ),
          titleLarge: TextStyle(
            fontSize: 36.0,
          ),
          titleSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w100),
          bodyMedium: TextStyle(
            fontSize: 14.0,
          ),
          displayMedium: TextStyle(
            fontSize: 24.0,
          ),
          displaySmall: TextStyle(
            fontSize: 18.0,
          ),
          headlineMedium: TextStyle(
            fontSize: 16.0,
          ),
          headlineSmall: TextStyle(fontSize: 14.0),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
