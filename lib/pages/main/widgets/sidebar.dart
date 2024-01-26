import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_application/pages/main/providers/sidebar_provider.dart';
import 'package:todo_application/providers/lang_provider.dart';

class SideBar extends ConsumerWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final word = ref.watch(languageProvider).word;
    return Expanded(
      child: NavigationDrawer(
        onDestinationSelected: (newIndex) {
          ref.read(sideBarProvider.notifier).onDestinationSelected(newIndex);
        },
        selectedIndex: ref.watch(sideBarProvider).index,
        children: [
          WindowTitleBarBox(
            child: MoveWindow(),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.home),
            label: Text(word.home),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.check_circle),
            label: Text(word.todolist),
          ),
        ],
      ),
    );
  }
}
