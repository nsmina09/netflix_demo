


import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/di/injectable.config.dart';

final getIt=GetIt.instance;

@InjectableInit()
Future<void> configureInjection()async{
await $initGetIt(getIt,environment:Environment.prod);
}