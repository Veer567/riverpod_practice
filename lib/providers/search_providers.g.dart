// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Search)
final searchProvider = SearchProvider._();

final class SearchProvider extends $NotifierProvider<Search, String> {
  SearchProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchHash();

  @$internal
  @override
  Search create() => Search();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$searchHash() => r'92f5b636343cb78758bbfe836e5bfd064c41d6e6';

abstract class _$Search extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(searchResult)
final searchResultProvider = SearchResultFamily._();

final class SearchResultProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Article>>,
          List<Article>,
          FutureOr<List<Article>>
        >
    with $FutureModifier<List<Article>>, $FutureProvider<List<Article>> {
  SearchResultProvider._({
    required SearchResultFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'searchResultProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchResultHash();

  @override
  String toString() {
    return r'searchResultProvider'
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
    return searchResult(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchResultProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchResultHash() => r'06edffbd9db8eb934e477b6bea8de1605c813baa';

final class SearchResultFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Article>>, String> {
  SearchResultFamily._()
    : super(
        retry: null,
        name: r'searchResultProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchResultProvider call(String query) =>
      SearchResultProvider._(argument: query, from: this);

  @override
  String toString() => r'searchResultProvider';
}
