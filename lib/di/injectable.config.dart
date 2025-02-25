// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i4;

import '../data/database/dao/app_configuration_dao.dart' as _i3;
import '../data/database/dao/chapter_record_dao.dart' as _i6;
import '../data/database/dao/user_dao.dart' as _i11;
import '../data/repository/app_configuration_repository.dart' as _i5;
import '../data/repository/favorites_repository.dart' as _i7;
import '../data/repository/masiro_repository.dart' as _i8;
import '../data/repository/novel_record_repository.dart' as _i9;
import '../data/repository/profile_repository.dart' as _i10;
import '../data/repository/user_repository.dart' as _i12;

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
    gh.lazySingleton<_i3.AppConfigurationDao>(
        () => _i3.AppConfigurationDao(isar: gh<_i4.Isar>()));
    gh.lazySingleton<_i5.AppConfigurationRepository>(
        () => _i5.AppConfigurationRepository());
    gh.factory<_i6.ChapterRecordDao>(
        () => _i6.ChapterRecordDao(isar: gh<_i4.Isar>()));
    gh.lazySingleton<_i7.FavoritesRepository>(() => _i7.FavoritesRepository());
    gh.lazySingleton<_i8.MasiroRepository>(() => _i8.MasiroRepository());
    gh.factory<_i9.NovelRecordRepository>(() => _i9.NovelRecordRepository());
    gh.lazySingleton<_i10.ProfileRepository>(() => _i10.ProfileRepository());
    gh.singleton<_i11.UserDao>(() => _i11.UserDao());
    gh.lazySingleton<_i12.UserRepository>(() => _i12.UserRepository());
    return this;
  }
}
