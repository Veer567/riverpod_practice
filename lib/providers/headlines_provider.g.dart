// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'headlines_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(headlines)
final headlinesProvider = HeadlinesFamily._();

final class HeadlinesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Article>>,
          List<Article>,
          FutureOr<List<Article>>
        >
    with $FutureModifier<List<Article>>, $FutureProvider<List<Article>> {
  HeadlinesProvider._({
    required HeadlinesFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'headlinesProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$headlinesHash();

  @override
  String toString() {
    return r'headlinesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Article>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Article>> create(Ref ref) {
    final argument = this.argument as String;
    return headlines(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is HeadlinesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$headlinesHash() => r'fc404dac5365eae312b6edb26b3cae12661e11e5';

final class HeadlinesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Article>>, String> {
  HeadlinesFamily._()
    : super(
        retry: null,
        name: r'headlinesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  HeadlinesProvider call(String category) =>
      HeadlinesProvider._(argument: category, from: this);

  @override
  String toString() => r'headlinesProvider';
}
