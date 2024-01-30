import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_application/extensions/themedata_ext.dart';
import 'package:todo_application/providers/lang_provider.dart';
import 'package:todo_application/util/lang/generated/l10n.dart';
import 'package:todo_application/util/route/route_path.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
  doWhenWindowReady(() {
    final win = appWindow;
    win.minSize = const Size(400, 400);
    win.size = const Size(400, 400);
    win.alignment = Alignment.center;
    win.title = "TodoApp";
    win.show();
  });
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      title: 'TodoApp',
      locale: ref.watch(languageProvider).local,
      theme: ref.themeData,

      // 초기 페이지 설정
      initialRoute: RoutePath.login,
      // onGenerateRoute 설정
      onGenerateRoute: RoutePath.onGenerateRoute,
    );
  }
}
