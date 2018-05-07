import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'dart:async';

import 'scout.dart';
import 'scout_service.dart';
import 'route_paths.dart' as paths;

@Component(
  selector: 'my-dashboard',
  templateUrl: 'dashboard_component.html',
  styleUrls: ['dashboard_component.css'],
  directives: [coreDirectives, routerDirectives],
)
class DashboardComponent implements OnInit {
  List<Scout> scouts;

  final ScoutService _scoutService;

  DashboardComponent(this._scoutService);

  String scoutUrl(String name) =>
      paths.scout.toUrl(parameters: {paths.firstNameParam: name});

  Future<void> ngOnInit() async {
    scouts = (await _scoutService.getScouts()).take(4).toList();
  }
}