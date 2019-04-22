import 'package:angular/angular.dart';
import 'package:angular_app/src/HeroComponent/hero_service.dart';
import 'package:angular_app/src/hero.dart';
import 'package:angular_app/src/route_paths.dart';
import 'package:angular_router/angular_router.dart';

@Component(
    selector: 'my-dashboard',
    templateUrl: "dashboard_component.html",
    styleUrls: ["dashboard_component.css"],
    directives: [coreDirectives, routerDirectives])
class DashboardComponent implements OnInit {
  List<Hero> heroes;

  final HeroService _heroService;

  // The heroservice instance created in the AppComponent provider will be injected in by angular
  DashboardComponent(this._heroService);

  @override
  void ngOnInit() async {
    // Get the top4 heroes after the component is created
    heroes = (await _heroService.getAll()).skip(1).take(4).toList();
  }

  String heroUrl(int id) =>
      RoutePaths.hero.toUrl(parameters: {RoutePaths.id: '$id'});
}
