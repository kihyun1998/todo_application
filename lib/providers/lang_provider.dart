import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_application/util/helper/intl_helper.dart';

part 'lang_provider.g.dart';

/// 다국어 설정 변경 시 재기동 로직 실행되어야 한다.
@riverpod
class Language extends _$Language {
  @override
  Locale build() {
    return IntlHelper.en;
  }
}
