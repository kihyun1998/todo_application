import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_application/extensions/themedata_ext.dart';
import 'package:todo_application/pages/main/providers/sidebar_provider.dart';
import 'package:todo_application/pages/main/widgets/model/nav_item_model.dart';
import 'package:todo_application/util/lang/generated/l10n.dart';

class NaviDrawer extends ConsumerWidget {
  const NaviDrawer({
    super.key,
    required this.word,
  });

  final S word;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const borderRadius = BorderRadius.only(
      topRight: Radius.circular(0),
      bottomRight: Radius.circular(0),
    );

    const selectedborderRadius = BorderRadius.only(
      topLeft: Radius.circular(32),
      bottomLeft: Radius.circular(32),
    );

    final selectedIndex = ref.watch(sideBarProvider);

    List<IconData> itemIconList = [];

    List<NaviItem> itemList = [
      NaviItem(
        title: word.home,
        icon: Icons.home,
      ),
      NaviItem(
        title: word.todolist,
        icon: Icons.check_circle,
      ),
    ];

    return Expanded(
      child: Drawer(
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 5,
            );
          },
          itemCount: itemList.length + 2,
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return Column(
                  children: [
                    WindowTitleBarBox(
                      child: MoveWindow(),
                    ),
                    const Icon(
                      Icons.info,
                      size: 50,
                    ),
                  ],
                );
              case 1:
                return Divider(
                  color: ref.theme.color.background,
                  height: 5,
                );
            }
            return ListTile(
              leading: Icon(
                itemList[index - 2].icon,
                color: ref.read(sideBarProvider.notifier).isSelected(index)
                    ? ref.theme.color.text
                    : ref.theme.color.onPrimary,
              ),
              tileColor: ref.read(sideBarProvider.notifier).isSelected(index)
                  ? ref.theme.color.background
                  : ref.theme.color.primary,
              title: Text(
                itemList[index - 2].title,
                style: ref.theme.font.headline6.copyWith(
                  color: ref.read(sideBarProvider.notifier).isSelected(index)
                      ? ref.theme.color.text
                      : ref.theme.color.onPrimary,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius:
                    ref.read(sideBarProvider.notifier).isSelected(index)
                        ? selectedborderRadius
                        : borderRadius,
              ),
              onTap: () {
                ref.read(sideBarProvider.notifier).onDestinationSelected(index);
              },
            );
          },
        ),
      ),
    );
  }
}
