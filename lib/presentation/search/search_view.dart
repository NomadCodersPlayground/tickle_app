import 'package:flutter/material.dart';
import 'package:tech_blog_search_app/presentation/search/component/search_text_field.dart';

class SearchView extends StatelessWidget {
  SearchView({Key? key}) : super(key: key);

  static const path = "/search";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchTextField(),
      ),
      body: Container(),
    );
  }
}
