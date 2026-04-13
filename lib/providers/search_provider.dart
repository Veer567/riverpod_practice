import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_provider.g.dart';

/*
 Notifier<T> is the modern replacement for StateNotifier<T>.
 No need to pass Ref into the constructor — you use this.ref inside the class*/
/*class SearchProvider extends Notifier<String> {
  @override
  String build() {
    return '';
  }

  void setQuery(String query) => state = query;

  void clear() => state = '';
}

final searchQueryProvider = NotifierProvider<SearchProvider, String>(
  SearchProvider
      .new, //It tells Riverpod how to CREATE an instance of your class
);*/

@riverpod
class Search extends _$Search {       // class: Search
  @override
  String build() => '';
  void setQuery(String query) => state = query;
  void clear() => state = '';
}

/*
 .autoDispose means: when no widget is watching this provider,
 destroy it and discard the cached result.
*/
