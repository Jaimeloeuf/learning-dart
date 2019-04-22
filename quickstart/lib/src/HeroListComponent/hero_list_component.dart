import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_app/src/hero.dart';
import 'package:angular_app/src/HeroComponent/hero_service.dart';
import 'package:angular_app/src/route_paths.dart';

@Component(
    selector: 'hero-list',
    templateUrl: "hero_list_component.html",
    styleUrls: ['hero_list_component.css'],
    directives: [coreDirectives],
    pipes: [UpperCasePipe])
class HeroListComponent implements OnInit {
  Hero selected_hero;
  List<Hero> heroes;

  // Define hero service property for this component
  final HeroService _heroService;
  final Router _router;

  // AppComponent Contructor that takes in a HeroService instance, by dependency injection.
  // Inject the router too
  HeroListComponent(this._heroService, this._router);

  // On click handler, that takes in the selected hero
  void onSelect(Hero hero) => selected_hero = hero;

  // Set the list of heroes from the Hero services
  Future<void> _getHeroes() async => heroes = await _heroService.getAll();

  // Implementation of the Component Init lifecycle hook
  @override
  void ngOnInit() => _getHeroes();

  String heroUrl(int id) =>
      RoutePaths.hero.toUrl(parameters: {RoutePaths.id: '$id'});

  Future<NavigationResult> gotoDetail() =>
      _router.navigate(heroUrl(selected_hero.id));
}
