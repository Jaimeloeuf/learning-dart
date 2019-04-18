import 'dart:convert';

import 'package:angular_app2/src/models/tool.dart';
import 'package:http/http.dart' as http;

class ToolService {
  var url = "https://api.github.com/users/Jaimeloeuf/repos";
  ToolHub toolHub;

  Future<ToolHub> fetchToolData() async{
    var res = await http.get(url);
    var decodedJson = jsonDecode(res.body);
    // toolHub = 
    print(decodedJson);
    return toolHub;
  }
}