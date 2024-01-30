import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sidebar_provider.g.dart';

@riverpod
class SideBar extends _$SideBar {
  @override
  int build() {
    return 0;
  }

  void onDestinationSelected(int newIndex) {
    state = newIndex - 2;
    print(state);
  }

  bool isSelected(int newIndex) {
    return state == newIndex - 2 ? true : false;
  }
}
