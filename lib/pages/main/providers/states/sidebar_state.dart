class SideBarState {
  final int index;
  final bool isExtended;
  SideBarState({
    required this.index,
    required this.isExtended,
  });

  factory SideBarState.init() => SideBarState(
        index: 0,
        isExtended: false,
      );

  SideBarState copyWith({
    int? index,
    bool? isExtended,
  }) {
    return SideBarState(
      index: index ?? this.index,
      isExtended: isExtended ?? this.isExtended,
    );
  }
}
