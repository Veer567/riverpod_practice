// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_api_service_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(newsApi)
final newsApiProvider = NewsApiProvider._();

final class NewsApiProvider
    extends $FunctionalProvider<NewsApiService, NewsApiService, NewsApiService>
    with $Provider<NewsApiService> {
  NewsApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'newsApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$newsApiHash();

  @$internal
  @override
  $ProviderElement<NewsApiService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  NewsApiService create(Ref ref) {
    return newsApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NewsApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NewsApiService>(value),
    );
  }
}

String _$newsApiHash() => r'1e34611dca0d08eb119e242defa9a7793822b165';
