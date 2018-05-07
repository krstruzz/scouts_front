@Tags(const ['aot'])
@TestOn('browser')

import 'package:angular/angular.dart';
import 'package:angular_test/angular_test.dart';
import 'package:test/test.dart';

import 'package:scouts_front/src/scouts_component.dart';

void main() {
  final testBed = new NgTestBed<ScoutsComponent>();
  NgTestFixture<ScoutsComponent> fixture;

  setUp(() async {
    fixture = await testBed.create();
  });

  tearDown(disposeAnyRunningTest);

  test('Default greeting', () {
    expect(fixture.text, 'Hello Angular');
  });


  test('Greet world HTML', () {
    final html = fixture.rootElement.innerHtml;
    expect(html, '<h1>Hello Angular</h1>');
  });
}
