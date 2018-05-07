import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'route_paths.dart' as paths;
import 'scout_list_component.template.dart' as slct;
import 'dashboard_component.template.dart' as dct;
import 'scouts_component.template.dart' as hct;


@Injectable()
class Routes {
  static final _scouts = new RouteDefinition(
    routePath: paths.scouts,
    component: slct.ScoutListComponentNgFactory,
  );

  RouteDefinition get scouts => _scouts;

  static final _scout = new RouteDefinition(
    routePath: paths.scout,
    component: hct.ScoutsComponentNgFactory,
  );

  RouteDefinition get scout => _scout;


  static final _dashboard = new RouteDefinition(
    routePath: paths.dashboard,
    component: dct.DashboardComponentNgFactory,
    useAsDefault: true,
  );

  RouteDefinition get dashboard => _dashboard;

  final List<RouteDefinition> all = [
    _dashboard,
    _scout,
    _scouts,
    //new RouteDefinition.redirect(path: '', redirectTo: paths.dashboard.toUrl()),
  ];

}