import 'package:angular_router/angular_router.dart';

final scouts = new RoutePath(path: 'scouts');

final dashboard = new RoutePath(path: 'dashboard');

const firstNameParam = 'firstName';
final scout = new RoutePath(path: '${scouts.path}/:$firstNameParam');

String getName(Map<String, String> parameters) {
  final name = parameters[firstNameParam];
  return name == null ? null : name.toLowerCase();
}
