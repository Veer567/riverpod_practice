
class Categories {
  static final Categories _categories = Categories._i();

  factory Categories() {
    return _categories;
  }

  Categories._i();

  static const List<String> category = [
    'general', 'technology', 'science', 'health', 'sports', 'business',
  ];
}