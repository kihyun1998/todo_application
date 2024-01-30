import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_application/pages/main/widgets/navi_drawer.dart';
import 'package:todo_application/pages/main/widgets/titlebar.dart';
import 'package:todo_application/pages/todo_list/widgets/todo_list_header.dart';
import 'package:todo_application/providers/lang_provider.dart';
import 'package:todo_application/providers/theme_provider.dart';
import 'package:todo_application/style/component/custom_icon_button.dart';
import 'package:todo_application/style/resources/button_size.dart';
import 'package:todo_application/style/resources/style_constants.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // doWhenWindowReady(() {
    //   appWindow.size = const Size(800, 800);
    //   appWindow.show();
    // });

    // WidgetsBinding.instance.addPostFrameCallback(
    //   (_) {
    //     // 메인 페이지 초기 창 크기

    //     appWindow.size = const Size(800, 800);
    //   },
    // );

    final word = ref.watch(languageProvider).word;

    return Scaffold(
      body: WindowBorder(
        width: 1,
        color: Colors.white,
        child: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NaviDrawer(word: word),
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    children: [
                      const TitleBar(),
                      SafeArea(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.all(defaultPadding),
                          child: Column(
                            children: [
                              TodoListPageHeader(word: word),
                              CustomIconButton(
                                onPressed: () {
                                  ref
                                      .read(themeProvider.notifier)
                                      .toggleTheme();
                                },
                                icon: Icons.color_lens,
                                iconSize: 25,
                                height: ButtonSize.small,
                                width: ButtonSize.large,
                              ),
                            ],
                          ),
                        ),
                      ),
                      // IconButton(
                      //   onPressed: () {
                      //     ref.read(languageProvider.notifier).toggleLanguage();
                      //   },
                      //   icon: const Icon(Icons.language),
                      // ),
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
