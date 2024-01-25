// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lang_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$languageHash() => r'6a76d51fb6471684cc866446c58f1913cbbe178b';

/// 다국어 설정 변경 시 재기동 로직 실행되어야 한다.
///
/// Copied from [Language].
@ProviderFor(Language)
final languageProvider = AutoDisposeNotifierProvider<Language, Locale>.internal(
  Language.new,
  name: r'languageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$languageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Language = AutoDisposeNotifier<Locale>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
