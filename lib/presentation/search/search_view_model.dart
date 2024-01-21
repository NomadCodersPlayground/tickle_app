import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_blog_search_app/utils/constants.dart';

@injectable
class SearchViewModel extends ChangeNotifier {
  String? searchKeyword;
  final Box<List<String>> stringListBox = Hive.box(stringListKey);

  void setSearchKeyword(String value) => searchKeyword = value;

  List<String> get storedSearchKeywordList => stringListBox.get(
        searchKeywordListKey,
        defaultValue: [],
      )!;

  Future<void> storeSearchKeyword() async {
    final contained = storedSearchKeywordList.contains(searchKeyword);
    final newList = [
      searchKeyword!,
      ...contained
          ? storedSearchKeywordList.where((e) => e != searchKeyword)
          : storedSearchKeywordList,
    ];
    await stringListBox.put(
      searchKeywordListKey,
      newList,
    );
    notifyListeners();
  }

  Future<void> deleteSearchKeyword(String keyword) async {
    await stringListBox.put(
      searchKeywordListKey,
      storedSearchKeywordList.where((e) => e != keyword).toList(),
    );
    notifyListeners();
  }

  Future<void> clearSearchKeyword() async {
    await stringListBox.delete(searchKeywordListKey);
    notifyListeners();
  }
}
