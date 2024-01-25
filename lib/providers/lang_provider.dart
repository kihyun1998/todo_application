import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_application/util/helper/intl_helper.dart';

part 'lang_provider.g.dart';

@riverpod
class LanguageProvider extends _$LanguageProvider {
  @override
  Locale build() {
    return IntlHelper.en;
  }
}
