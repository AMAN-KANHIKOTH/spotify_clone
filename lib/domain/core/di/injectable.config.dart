// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:spotify_clone/application/home/home_bloc.dart' as _i129;
import 'package:spotify_clone/application/main/access_code_bloc.dart' as _i267;
import 'package:spotify_clone/application/search/search_bloc.dart' as _i363;
import 'package:spotify_clone/domain/access_code/access_code_services.dart'
    as _i1014;
import 'package:spotify_clone/domain/home/home_service.dart' as _i191;
import 'package:spotify_clone/domain/search/search_services.dart' as _i922;
import 'package:spotify_clone/infrastructure/access_code/get_access_code.dart'
    as _i633;
import 'package:spotify_clone/infrastructure/home/home_repo.dart' as _i312;
import 'package:spotify_clone/infrastructure/search/search_repo.dart' as _i767;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i922.SearchServices>(() => _i767.SearchRepo());
    gh.lazySingleton<_i191.HomeService>(() => _i312.HomeRepo());
    gh.lazySingleton<_i1014.AccessCodeServices>(
        () => _i633.GetAccessCodeRepo());
    gh.factory<_i267.AccessCodeBloc>(
        () => _i267.AccessCodeBloc(gh<_i1014.AccessCodeServices>()));
    gh.factory<_i363.SearchBloc>(
        () => _i363.SearchBloc(gh<_i922.SearchServices>()));
    gh.factory<_i129.HomeBloc>(() => _i129.HomeBloc(gh<_i191.HomeService>()));
    return this;
  }
}
