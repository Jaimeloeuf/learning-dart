/*  @Doc
    This module contains all the paths to the different views all in the
    RoutePaths class, which will then be used in the "routes.dart" module
*/

import 'package:angular_router/angular_router.dart';

class RoutePaths {
  static final heroes = RoutePath(path: 'heroes');
  static final dashboard = RoutePath(path: 'dashboard');

  static final id = 'id';
  // The path is made up using an extension to the heroes path with a hero id
  static final hero = RoutePath(path: '${heroes.path}/:$id');
}
