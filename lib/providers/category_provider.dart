import 'package:flutter_riverpod/legacy.dart';

/*
* StateProvider — for simple, primitive state the UI can change
 This holds the currently selected news category tab (a String).
 It's "simple" because there's no logic — just read and write.
 */
final categoryProvider = StateProvider<String>((ref) => 'general'); // default selected tab
