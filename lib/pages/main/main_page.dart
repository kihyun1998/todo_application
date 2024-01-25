import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_application/pages/main/widgets/titlebar.dart';
import 'package:todo_application/providers/lang_provider.dart';
import 'package:todo_application/providers/theme_provider.dart';
import 'package:todo_application/style/component/custom_icon_button.dart';
import 'package:todo_application/util/lang/generated/l10n.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: WindowBorder(
        width: 1,
        color: Colors.white,
        child: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: NavigationDrawer(
                  children: [
                    WindowTitleBarBox(
                      child: MoveWindow(),
                    ),
                    NavigationDrawerDestination(
                      icon: const Icon(Icons.home),
                      label: Text(S().home),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    children: [
                      const TitleBar(),
                      IconButton(
                        onPressed: () {
                          ref.read(languageProvider.notifier).toggleLanguage();
                          print(S().home);
                        },
                        icon: const Icon(Icons.language),
                      ),
                      CustomIconButton(
                        onPressed: () {
                          ref.read(themeProvider.notifier).toggleTheme();
                        },
                        icon: Icons.color_lens,
                        iconSize: 40,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
