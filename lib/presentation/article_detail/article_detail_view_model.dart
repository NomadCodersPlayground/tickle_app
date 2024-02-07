import 'package:injectable/injectable.dart';
import 'package:tech_blog_search_app/data/source/article_api.dart';
import 'package:tech_blog_search_app/domain/model/article_content_model.dart';

@injectable
class ArticleDetailViewModel {
  final ArticleContentModel _article;
  final ArticleApi _api;

  ArticleDetailViewModel({
    required ArticleApi api,
    @factoryParam required ArticleContentModel article,
  })  : _api = api,
        _article = article {
    _increaseViewCount();
  }

  ArticleContentModel get article => _article;

  Future<void> _increaseViewCount() async {
    await _api.increaseViewCount(articleId: _article.id);
  }
}
