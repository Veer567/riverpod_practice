// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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

String _$searchResultHash() => r'a7a014705e6a19ecfbedf05340d7bfb5354e91f7';

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
