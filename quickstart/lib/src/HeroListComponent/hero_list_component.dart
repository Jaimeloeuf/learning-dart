import 'package:angular/angular.dart';
import 'package:angular_app/src/hero.dart';
import 'package:angular_app/src/HeroComponent/hero_component.dart';
import 'package:angular_app/src/HeroComponent/hero_service.dart';

@Component(
  selector: 'hero-list',
  templateUrl: "hero_list_component.html",
  styleUrls: ['hero_list_component.css'],
  directives: [coreDirectives, HeroComponent]
)
class HeroListComponent implements OnInit {
  Hero selected_hero;
  List<Hero> heroes;

  // Define hero service property for this component
  final HeroService _heroService;

  // AppComponent Contructor that takes in a HeroService instance, by dependency injection.
  HeroListComponent(this._heroService);

  // On click handler, that takes in the selected hero
  void onSelect(Hero hero) => selected_hero = hero;

  // Set the list of heroes from the Hero services
  // void _getHeroes() => heroes = _heroService.getAll();
  // void _getHeroes() {
  //   _heroService.getAll().then((heroes) => this.heroes = heroes);
  // }
  Future<void> _getHeroes() async {
    heroes = await _heroService.getAll();
  }

  // Implementation of the Component Init lifecycle hook
  void ngOnInit() => _getHeroes();
}
