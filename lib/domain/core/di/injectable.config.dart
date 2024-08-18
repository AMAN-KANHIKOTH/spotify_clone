// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:spotify_clone/application/access_code/bloc/access_code_bloc.dart'
    as _i720;
import 'package:spotify_clone/application/home/bloc/home_bloc.dart' as _i767;
import 'package:spotify_clone/domain/access_code/access_code_services.dart'
    as _i1014;
import 'package:spotify_clone/domain/home/home_service.dart' as _i191;
import 'package:spotify_clone/infrastructure/access_code/get_access_code.dart'
    as _i633;
import 'package:spotify_clone/infrastructure/home/home_repo.dart' as _i312;

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
    gh.lazySingleton<_i191.HomeService>(() => _i312.HomeRepo());
    gh.lazySingleton<_i1014.AccessCodeServices>(
        () => _i633.GetAccessCodeRepo());
    gh.factory<_i720.AccessCodeBloc>(
        () => _i720.AccessCodeBloc(gh<_i1014.AccessCodeServices>()));
    gh.factory<_i767.HomeBloc>(() => _i767.HomeBloc(gh<_i191.HomeService>()));
    return this;
  }
}
