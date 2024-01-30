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

    // selectedIndex 바뀌면 화면 리랜더링을 위해서
    final selectedIndex = ref.watch(sideBarProvider);

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

    List<Widget> preItems = [
      Column(
        children: [
          WindowTitleBarBox(
            child: MoveWindow(),
          ),
          const Icon(
            Icons.info,
            size: 50,
          ),
        ],
      ),
      Divider(
        color: ref.theme.color.background,
        height: 5,
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
          itemCount: preItems.length + itemList.length,
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
              case 1:
                return preItems[index];
            }
            return ListTile(
              // subtitle: ListView.builder(
              //   shrinkWrap: true,
              //   itemCount: 3,
              //   itemBuilder: (context, index) {
              //     return const ListTile(
              //       title: Text("test"),
              //     );
              //   },
              // ),
              leading: Icon(
                itemList[index - preItems.length].icon,
                color: ref
                        .read(sideBarProvider.notifier)
                        .isSelected(index - preItems.length)
                    ? ref.theme.color.text
                    : ref.theme.color.onPrimary,
              ),
              tileColor: ref
                      .read(sideBarProvider.notifier)
                      .isSelected(index - preItems.length)
                  ? ref.theme.color.background
                  : ref.theme.color.primary,
              title: Text(
                itemList[index - preItems.length].title,
                style: ref.theme.font.headline6.copyWith(
                  color: ref
                          .read(sideBarProvider.notifier)
                          .isSelected(index - preItems.length)
                      ? ref.theme.color.text
                      : ref.theme.color.onPrimary,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: ref
                        .read(sideBarProvider.notifier)
                        .isSelected(index - preItems.length)
                    ? selectedborderRadius
                    : borderRadius,
              ),
              onTap: () {
                ref
                    .read(sideBarProvider.notifier)
                    .onDestinationSelected(index - preItems.length);
              },
            );
          },
        ),
      ),
    );
  }
}
