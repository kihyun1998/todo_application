import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WindowTitleBarBox(
      child: Row(
        children: [
          Expanded(
            child: MoveWindow(),
          ),
          const TitleButtons()
        ],
      ),
    );
  }
}

class TitleButtons extends StatelessWidget {
  const TitleButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(),
        MaximizeWindowButton(),
        CloseWindowButton(),
      ],
    );
  }
}
