import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_application/pages/main/widgets/sidebar.dart';
import 'package:todo_application/pages/main/widgets/titlebar.dart';

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
              const Expanded(
                child: SideBar(),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  child: const Column(
                    children: [
                      TitleBar(),
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