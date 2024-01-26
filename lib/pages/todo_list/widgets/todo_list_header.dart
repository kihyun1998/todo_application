import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_application/extensions/themedata_ext.dart';
import 'package:todo_application/style/component/custom_icon_button.dart';
import 'package:todo_application/style/resources/style_constants.dart';
import 'package:todo_application/util/lang/generated/l10n.dart';

class TodoListPageHeader extends ConsumerWidget {
  const TodoListPageHeader({
    super.key,
    required this.word,
  });

  final S word;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          word.todolist,
          style: ref.theme.font.headline1,
        ),
        const Spacer(flex: 2),
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
                  Radius.circular(defaultPadding),
                ),
              ),
              suffixIcon: CustomIconButton(
                onPressed: () {},
                icon: Icons.search,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
