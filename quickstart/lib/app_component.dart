import 'package:angular/angular.dart';
import 'package:angular_app/src/HeroComponent/hero.dart';
import 'package:angular_app/src/HeroComponent/hero_service.dart';
import 'src/HeroComponent/hero_component.dart';

@Component(
    selector: 'my-app',
    templateUrl: "app_component.html",
    styleUrls: ['app_component.css'],
    directives: [coreDirectives, HeroComponent],
    providers: [ClassProvider(HeroService)])
class AppComponent implements OnInit {
  String name = 'Angular';
  Hero selected_hero;
  List<Hero> heroes;

  // Define hero service property for this component
  final HeroService _heroService;

  // AppComponent Contructor that takes in a HeroService instance, by dependency injection.
  AppComponent(this._heroService);

  // On click handler, that takes in the selected hero
  void onSelect(Hero hero) => selected_hero = hero;

  // Set the list of heroes from the Hero services
  void _getHeroes() => heroes = _heroService.getAll();

  // Implementation of the Component Init lifecycle hook
  void ngOnInit() => _getHeroes();
}
