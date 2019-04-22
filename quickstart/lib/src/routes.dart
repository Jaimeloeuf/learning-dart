/*  @Doc
    This module contains all the route definitions for the different route
    paths defined in the "route_paths.dart" module.
*/

import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
// By naming the below import, we can avoid analyzer error
// import 'hero_list_component.template.dart' as hero_list_template;
import './HeroListComponent/hero_list_component.template.dart' as hero_list_template;

export 'route_paths.dart';

class Routes {
  // The heroes RouteDefinition has a few named arguments, like routePath..
  static final heroes = RouteDefinition(
    // The router matches this path against the URL
    routePath: RoutePaths.heroes,
    // The (factory of the) component that activates when this route is entered
    component: hero_list_template.HeroListComponentNgFactory,
  );

  // The Routes.all field is a list of route definitions.
  static final all = <RouteDefinition>[
    heroes,
  ];
}
