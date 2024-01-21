// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:tech_blog_search_app/data/repository/article_repository_impl.dart'
    as _i9;
import 'package:tech_blog_search_app/data/source/article_api.dart' as _i5;
import 'package:tech_blog_search_app/di/api_module.dart' as _i13;
import 'package:tech_blog_search_app/domain/model/article_content_model.dart'
    as _i7;
import 'package:tech_blog_search_app/domain/repository/article_repository.dart'
    as _i8;
import 'package:tech_blog_search_app/presentation/article_detail/article_detail_view_model.dart'
    as _i6;
import 'package:tech_blog_search_app/presentation/article_list/article_list_view_model.dart'
    as _i11;
import 'package:tech_blog_search_app/presentation/article_list/article_list_view_params.dart'
    as _i12;
import 'package:tech_blog_search_app/presentation/main/main_view_model.dart'
    as _i10;
import 'package:tech_blog_search_app/presentation/search/search_view_model.dart'
    as _i4;

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
    gh.singleton<_i3.Dio>(
      apiModule.dio,
      instanceName: 'articleDio',
    );
    gh.singleton<_i3.Interceptor>(apiModule.articleInterceptor);
    gh.factory<_i4.SearchViewModel>(() => _i4.SearchViewModel());
    gh.factory<String>(
      () => apiModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.singleton<_i5.ArticleApi>(apiModule.articleApi(
      gh<_i3.Dio>(instanceName: 'articleDio'),
      baseUrl: gh<String>(instanceName: 'baseUrl'),
    ));
    gh.factoryParam<_i6.ArticleDetailViewModel, _i7.ArticleContentModel,
        dynamic>((
      article,
      _,
    ) =>
        _i6.ArticleDetailViewModel(
          api: gh<_i5.ArticleApi>(),
          article: article,
        ));
    gh.singleton<_i8.ArticleRepository>(
        _i9.ArticleRepositoryImpl(api: gh<_i5.ArticleApi>()));
    gh.singleton<_i10.MainViewModel>(
        _i10.MainViewModel(repository: gh<_i8.ArticleRepository>()));
    gh.factoryParam<_i11.ArticleListViewModel, _i12.ArticleListViewParams?,
        dynamic>((
      params,
      _,
    ) =>
        _i11.ArticleListViewModel(
          repository: gh<_i8.ArticleRepository>(),
          params: params,
        ));
    return this;
  }
}

class _$ApiModule extends _i13.ApiModule {}
