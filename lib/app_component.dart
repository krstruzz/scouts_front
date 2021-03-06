import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'src/scout_service.dart';
import 'src/routes.dart';

@Component(
  selector: 'my-app',
  template: '''
    <h1>{{title}}</h1>
    <nav>
      <a [routerLink]="routes.dashboard.toUrl()"
         routerLinkActive="active">Dashboard</a>
      <a [routerLink]="routes.scouts.toUrl()"
         routerLinkActive="active">Scouts</a>
    </nav>
    <router-outlet [routes]="routes.all"></router-outlet>
    ''',
  styleUrls: ['app_component.css'],
  directives: [routerDirectives],
  providers: [
    const ClassProvider(ScoutService),
    const ClassProvider(Routes),
  ],
)

class AppComponent {
  final title = 'Pack 22 Scouting';
  final Routes routes;

  AppComponent(this.routes);
}