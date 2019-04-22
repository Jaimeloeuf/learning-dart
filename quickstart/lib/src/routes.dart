/*  @Doc
    This module contains all the route definitions for the different route
    paths defined in the "route_paths.dart" module.
*/

import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';

/* Below imports are all for the component factories */
// By naming the below import, we can avoid analyzer error
// import 'hero_list_component.template.dart' as hero_list_template;
import './HeroListComponent/hero_list_component.template.dart'
    as hero_list_template;
import './DashboardComponent/dashboard_component.template.dart'
    as dashboard_template;
import './HeroComponent/hero_component.template.dart' as hero_template;

export 'route_paths.dart';

class Routes {
  // The heroes RouteDefinition has a few named arguments, like routePath..
  static final heroes = RouteDefinition(
      // The router matches this path against the URL
      routePath: RoutePaths.heroes,
      // The (factory of the) component that activates when this route is entered
      component: hero_list_template.HeroListComponentNgFactory);

  // These RouteDefinitions are static, as we are not using this class to make objects
  static final dashboard = RouteDefinition(
      routePath: RoutePaths.dashboard,
      component: dashboard_template.DashboardComponentNgFactory);

  static final hero = RouteDefinition(
      routePath: RoutePaths.hero,
      component: hero_template.HeroComponentNgFactory);

  // The Routes.all field is a list of route definitions.
  static final all = <RouteDefinition>[
    hero,
    heroes,
    dashboard,

    // Below redirect, is so that when the app launches into the "/" path, it will
    // redirect to show the dashboard on startup.
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.dashboard.toUrl(),
    )
  ];
}
