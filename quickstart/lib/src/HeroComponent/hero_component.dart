import 'package:angular/angular.dart';
import 'package:angular_app/src/HeroComponent/hero_service.dart';
import 'package:angular_app/src/hero.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';

@Component(
    selector: 'my-hero',
    templateUrl: "hero_component.html",
    styleUrls: ['hero_component.css'],
    directives: [coreDirectives, formDirectives])
class HeroComponent implements OnActivate {
  // // Tell angular that hero is an Input property of a property binding expression
  // @Input()
  // Hero hero;

  Hero hero;
  final HeroService _heroService;
  final Location _location;

  HeroComponent(this._heroService, this._location);

  @override
  void onActivate(_, RouterState current) async {
    // onActivate hook is called, when the component is called through a route
    // The first positional arguement is not used, thus it is "thrown away" with the dash
    final id = getId(current.parameters);

    if (id != null) hero = await (_heroService.get(id));
  }

  int getId(Map<String, String> parameters) {
    final id = parameters['id'];

    // Route parameters are always strings, thus need to parse first
    return id == null ? null : int.tryParse(id);
  }

  void goBack() => _location.back();
}
