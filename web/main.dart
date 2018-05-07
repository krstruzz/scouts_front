import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:scouts_front/app_component.template.dart' as ng;
//import 'dart:convert' show utf8;

import 'main.template.dart' as self;
// Use in_memory for mock client...
//import 'package:angular_app/remote_data_service.dart';


@GenerateInjector(
  routerProvidersHash, // Use routeProviders in production
)
final InjectorFactory injector = self.injector$Injector;

void main() {
  runApp(ng.AppComponentNgFactory, createInjector: injector);
}
