import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_application/pages/main/providers/states/sidebar_state.dart';

part 'sidebar_provider.g.dart';

@riverpod
class SideBar extends _$SideBar {
  @override
  SideBarState build() {
    return SideBarState.init();
  }

  void onDestinationSelected(int newIndex) {
    state = state.copyWith(index: newIndex);
    print(state.index);
  }

  void toggleExtended() {
    state = state.copyWith(isExtended: !state.isExtended);
  }
}
