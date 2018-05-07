import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';

import 'dart:async';

import 'scout.dart';
import 'scout_service.dart';
import 'route_paths.dart' as paths;

@Component(
  selector: 'my-scouts',
  directives: [coreDirectives, formDirectives],
  templateUrl: 'scouts_component.html',
  styleUrls: ['scouts_component.css'],
)
class ScoutsComponent implements OnActivate {
  Scout scout;
  final ScoutService _scoutService;
  final Location _location;

  ScoutsComponent(this._scoutService, this._location);

  @override
  Future<void> onActivate(_, RouterState current) async {
    final firstName = paths.getName(current.parameters);
    if (firstName != null) scout = await (_scoutService.get(firstName));
  }

  void goBack() => _location.back();
}