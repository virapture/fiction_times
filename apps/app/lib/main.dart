import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';

import 'routing/app_router.dart';
import 'utils/overlay_loading.dart';
import 'utils/theme_data.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      GoRouter.optionURLReflectsImperativeAPIs = true;
      setPathUrlStrategy();
      await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCb3PWh7KYBrsH2reipxx90rUWopWh3CmQ",
            authDomain: "fiction-times-prod.firebaseapp.com",
            projectId: "fiction-times-prod",
            storageBucket: "fiction-times-prod.appspot.com",
            messagingSenderId: "228149622742",
            appId: "1:228149622742:web:ca35cee0d9c12723b41677",
            measurementId: "G-S39VPQYBMC"),
      );
      FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
      runApp(const ProviderScope(child: App()));
    },
    (error, stack) => FirebaseCrashlytics.instance.recordError(error, stack),
  );
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ja'), //日本語
        Locale('en'), //英語
      ],
      title: 'Fiction Times',
      theme: OriginalTheme.themeData,
      routerConfig: goRouter,
      restorationScopeId: 'app',
      onGenerateTitle: (context) => 'FictionTimes',
      builder: (context, child) {
        return Stack(
          children: [
            child!,
            if (ref.watch(overlayLoadingProvider)) const OverlayLoading()
          ],
        );
      },
    );
  }
}
