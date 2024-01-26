import 'package:flutter/material.dart';
import 'package:todo_application/util/helper/intl_helper.dart';
import 'package:todo_application/util/lang/generated/l10n.dart';

class LanguageState {
  final Locale local;
  final S word;
  LanguageState({
    required this.local,
    required this.word,
  });

  factory LanguageState.init() => LanguageState(
        local: IntlHelper.en,
        word: S(),
      );

  LanguageState copyWith({
    Locale? local,
    S? word,
  }) {
    return LanguageState(
      local: local ?? this.local,
      word: word ?? S.current,
    );
  }
}
