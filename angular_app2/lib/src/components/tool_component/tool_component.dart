import 'package:angular/angular.dart';
import 'package:angular_app2/src/models/tool.dart';
import 'package:angular_app2/src/services/tool_service.dart';

@Component(
    selector: "my-tools",
    templateUrl: "tool_component.html",
    styleUrls: ['tool_component.css'],
    providers: [ClassProvider(ToolService)],
    directives: [coreDirectives])

// OnInit class is known as life cycle hooks in angular dart
class ToolComponent implements OnInit {
  ToolHub toolHub;
  ToolService _toolService;
  // Below dependency injection allows contructor to change without code change
  ToolComponent(this._toolService);

  @override
  void ngOnInit() {
    fetchData();
  }

  fetchData() async {
    toolHub = await _toolService.fetchToolData();
  }
}
