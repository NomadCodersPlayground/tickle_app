import 'package:injectable/injectable.dart';
import 'package:tech_blog_search_app/data/source/article_api.dart';
import 'package:tech_blog_search_app/domain/model/article_content_model.dart';

@injectable
class ArticleDetailViewModel {
  final ArticleContentModel article;
  final ArticleApi api;

  ArticleDetailViewModel({
    required this.api,
    @factoryParam required this.article,
  }) {
    _increaseViewCount();
  }

  Future<void> _increaseViewCount() async {
    await api.increaseViewCount(articleId: article.id);
  }
}
