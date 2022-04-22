import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(generateForDir: ['lib', 'test'])
void configureDependencies() => $initGetIt(getIt);
