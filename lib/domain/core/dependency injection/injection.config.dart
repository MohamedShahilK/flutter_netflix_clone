// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i12;
import '../../../application/fastlaugh/fastlaugh_bloc.dart' as _i5;
import '../../../application/home/home_bloc.dart' as _i6;
import '../../../application/hotandnew/hotandnew_bloc.dart' as _i9;
import '../../../application/search/search_bloc.dart' as _i13;
import '../../../infrastructure/downloads/downloads_repo_impl.dart' as _i4;
import '../../../infrastructure/new_and_hot/hot_and_new_services_impl.dart'
    as _i8;
import '../../../infrastructure/search/search_services_impl.dart' as _i11;
import '../../downloads/downloads_repo.dart' as _i3;
import '../../new_and_hot/hot_and_new_services.dart' as _i7;
import '../../search/model/search_services.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DownloadsRepo>(() => _i4.DownloadsImpl());
  gh.factory<_i5.FastlaughBloc>(
      () => _i5.FastlaughBloc(get<_i3.DownloadsRepo>()));
  gh.factory<_i6.HomeBloc>(() => _i6.HomeBloc(get<_i3.DownloadsRepo>()));
  gh.lazySingleton<_i7.HotAndNewServices>(() => _i8.HotAndNewServicesImpl());
  gh.factory<_i9.HotandnewBloc>(
      () => _i9.HotandnewBloc(get<_i7.HotAndNewServices>()));
  gh.lazySingleton<_i10.SearchServices>(() => _i11.SearchImpl());
  gh.factory<_i12.DownloadsBloc>(
      () => _i12.DownloadsBloc(get<_i3.DownloadsRepo>()));
  gh.factory<_i13.SearchBloc>(
      () => _i13.SearchBloc(get<_i10.SearchServices>()));
  return get;
}
