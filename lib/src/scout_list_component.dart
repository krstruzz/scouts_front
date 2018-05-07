import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'dart:async';

import 'package:scouts_front/src/scout_service.dart';
import 'scout.dart';
import 'route_paths.dart' as paths;

@Component(
  selector: 'my-scouts',
  templateUrl: 'scout_list_component.html',
  directives: [coreDirectives],
//  providers: [
//    const ClassProvider(ScoutService),
//  ],
  styleUrls: ['scout_list_component.css'],
  pipes: [commonPipes],
)

class ScoutListComponent implements OnInit{
  final ScoutService _scoutService;
  final Router _router;
  List<Scout> scouts;
  Scout selected;

  ScoutListComponent(this._scoutService, this._router);

  Future<void> _getScouts() async {
    scouts = await _scoutService.getScouts();
  }

  void ngOnInit() => _getScouts();

  void onSelect(Scout scout) => selected = scout;

  String _scoutUrl(String name) =>
      paths.scout.toUrl(parameters: {paths.firstNameParam: name});

  Future<NavigationResult> gotoDetail() =>
      _router.navigate(_scoutUrl(selected.firstName));

}