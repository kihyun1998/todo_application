import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_application/extensions/themedata_ext.dart';
import 'package:todo_application/pages/main/widgets/sidebar.dart';
import 'package:todo_application/pages/main/widgets/titlebar.dart';
import 'package:todo_application/providers/lang_provider.dart';
import 'package:todo_application/providers/theme_provider.dart';
import 'package:todo_application/style/component/custom_icon_button.dart';
import 'package:todo_application/style/resources/button_size.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final word = ref.watch(languageProvider).word;
    return Scaffold(
      body: WindowBorder(
        width: 1,
        color: Colors.white,
        child: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SideBar(),
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    children: [
                      const TitleBar(),
                      SafeArea(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    word.todolist,
                                    style: ref.theme.font.headline1,
                                  ),
                                  const Spacer(),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: word.search,
                                        hintStyle: ref.theme.font.hintBody1,
                                        fillColor: ref.theme.color.surface,
                                        filled: true,
                                        border: const OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        suffixIcon: CustomIconButton(
                                          onPressed: () {},
                                          icon: Icons.search,
                                          iconSize: 20,
                                          width: ButtonSize.small,
                                          height: ButtonSize.small,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
