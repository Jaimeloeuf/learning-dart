import 'dart:html';

Iterable<String> thingsTodo() sync* {
  var actions = ['Walk', 'Wash', 'Feed'];
  List<String> pets = ['cats', 'dogs'];

  for (var action in actions) {
    for (var pet in pets) {
      if (pet == 'cats' && action != 'Feed') continue;
      yield '$action the $pet';
    }
  }
}

LIElement newLI(String itemText) => LIElement()..text = itemText;

void main() {
  Element output = querySelector('#output');
  output.children.addAll(thingsTodo().map(newLI));
}
