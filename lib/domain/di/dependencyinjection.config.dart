// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/bloc/home_bloc.dart' as _i5;
import '../../infastructure/home/home_services.dart' as _i4;
import '../home/homeservices.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.HomeServices>(() => _i4.HomeServiceImpl());
  gh.factory<_i5.HomeBloc>(() => _i5.HomeBloc(get<_i3.HomeServices>()));
  return get;
}
