import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_blog_search_app/utils/constants.dart';

@injectable
class SearchViewModel extends ChangeNotifier {
  String? _searchKeyword;
  final Box<List<String>> _stringListBox = Hive.box(stringListKey);

  String? get searchKeyword => _searchKeyword;

  void setSearchKeyword(String value) => _searchKeyword = value;

  List<String> get storedSearchKeywordList => _stringListBox.get(
        searchKeywordListKey,
        defaultValue: [],
      )!;

  Future<void> storeSearchKeyword() async {
    final contained = storedSearchKeywordList.contains(_searchKeyword);
    final newList = [
      _searchKeyword!,
      ...contained
          ? storedSearchKeywordList.where((e) => e != _searchKeyword)
          : storedSearchKeywordList,
    ];
    await _stringListBox.put(
      searchKeywordListKey,
      newList,
    );
    notifyListeners();
  }

  Future<void> deleteSearchKeyword(String keyword) async {
    await _stringListBox.put(
      searchKeywordListKey,
      storedSearchKeywordList.where((e) => e != keyword).toList(),
    );
    notifyListeners();
  }

  Future<void> clearSearchKeyword() async {
    await _stringListBox.delete(searchKeywordListKey);
    notifyListeners();
  }
}
