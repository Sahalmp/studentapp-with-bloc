import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'dependencyinjection.config.dart';
final getIt = GetIt.instance;

@InjectableInit()
Future configureInjection() async {
  $initGetIt(getIt, environment: Environment.prod);
}