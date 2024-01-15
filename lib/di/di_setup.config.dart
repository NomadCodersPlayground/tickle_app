// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:tech_blog_search_app/data/repository/article_repository_impl.dart'
    as _i9;
import 'package:tech_blog_search_app/data/source/article_api.dart' as _i3;
import 'package:tech_blog_search_app/di/api_module.dart' as _i13;
import 'package:tech_blog_search_app/domain/model/article_content_model.dart'
    as _i5;
import 'package:tech_blog_search_app/domain/repository/article_repository.dart'
    as _i8;
import 'package:tech_blog_search_app/presentation/article_detail/article_detail_view_model.dart'
    as _i4;
import 'package:tech_blog_search_app/presentation/article_list/article_list_view_model.dart'
    as _i6;
import 'package:tech_blog_search_app/presentation/article_list/article_list_view_params.dart'
    as _i7;
import 'package:tech_blog_search_app/presentation/main/main_view_model.dart'
    as _i11;
import 'package:tech_blog_search_app/presentation/search/search_view_model.dart'
    as _i12;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final apiModule = _$ApiModule();
    gh.singleton<_i3.ArticleApi>(apiModule.articleApi);
    gh.factoryParam<_i4.ArticleDetailViewModel, _i5.ArticleContentModel,
        dynamic>((
      article,
      _,
    ) =>
        _i4.ArticleDetailViewModel(article: article));
    gh.factoryParam<_i6.ArticleListViewModel, _i7.ArticleListViewParams?,
        dynamic>((
      params,
      _,
    ) =>
        _i6.ArticleListViewModel(params: params));
    gh.singleton<_i8.ArticleRepository>(
        _i9.ArticleRepositoryImpl(api: gh<_i3.ArticleApi>()));
    gh.singleton<_i10.Dio>(apiModule.dio);
    gh.singleton<_i11.MainViewModel>(
        _i11.MainViewModel(repository: gh<_i8.ArticleRepository>()));
    gh.factory<_i12.SearchViewModel>(
        () => _i12.SearchViewModel(repository: gh<_i8.ArticleRepository>()));
    gh.singleton<String>(apiModule.baseUrl);
    return this;
  }
}

class _$ApiModule extends _i13.ApiModule {}
