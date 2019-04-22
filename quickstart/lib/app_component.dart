import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_app/src/HeroComponent/hero_service.dart';
import 'src/routes.dart';

@Component(
    selector: "my-app",
    templateUrl: "app_component.html",
    styleUrls: ['app_component.css'],
    directives: [routerDirectives],
    providers: [ClassProvider(HeroService)],
    exports: [RoutePaths, Routes])
class AppComponent {
  String app_name = 'Angular';
}

/*  The AppComponent has a router and displays routed views.
    For this reason, and to distinguish it from other kinds of components,
    this component type is called a router component.
 */