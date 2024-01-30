// import 'package:bitsdojo_window/bitsdojo_window.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:todo_application/extensions/themedata_ext.dart';
// import 'package:todo_application/pages/main/providers/sidebar_provider.dart';
// import 'package:todo_application/providers/lang_provider.dart';

// class SideBar extends ConsumerWidget {
//   const SideBar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final word = ref.watch(languageProvider).word;
//     final selectedIndex = ref.watch(sideBarProvider).index;
//     return Expanded(
//       child: NavigationDrawer(
//         onDestinationSelected: (newIndex) {
//           ref.read(sideBarProvider.notifier).onDestinationSelected(newIndex);
//         },
//         selectedIndex: selectedIndex,
//         indicatorColor: ref.theme.color.primary,
//         children: [
//           WindowTitleBarBox(
//             child: MoveWindow(),
//           ),
//           NavigationDrawerDestination(
//             icon: Icon(
//               Icons.home,
//               color: ref.theme.color.text,
//             ),
//             selectedIcon: Icon(
//               Icons.home,
//               color: ref.theme.color.onPrimary,
//             ),
//             label: Text(
//               word.home,
//               style: selectedIndex == 0
//                   ? ref.theme.font.headline6
//                       .copyWith(color: ref.theme.color.onPrimary)
//                   : ref.theme.font.headline6,
//             ),
//           ),
//           NavTile(
//             title: word.todolist,
//             selectedIndex: selectedIndex,
//             icon: Icons.check_circle,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NavTile extends ConsumerWidget {
//   const NavTile({
//     super.key,
//     required this.title,
//     required this.selectedIndex,
//     required this.icon,
//   });

//   final String title;
//   final int selectedIndex;
//   final IconData icon;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return NavigationDrawerDestination(
//       icon: Icon(
//         icon,
//         color: ref.theme.color.text,
//       ),
//       selectedIcon: Icon(
//         icon,
//         color: ref.theme.color.onPrimary,
//       ),
//       label: Text(
//         title,
//         style: selectedIndex == 1
//             ? ref.theme.font.headline6
//                 .copyWith(color: ref.theme.color.onPrimary)
//             : ref.theme.font.headline6,
//       ),
//     );
//   }
// }
