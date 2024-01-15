import 'package:injectable/injectable.dart';
import 'package:tech_blog_search_app/domain/model/article_content_model.dart';

@injectable
class ArticleDetailViewModel {
  final ArticleContentModel article;

  ArticleDetailViewModel({@factoryParam required this.article});
}