import 'package:angular/angular.dart';
import 'dart:async';

import 'scout.dart';
import 'mock_scouts.dart';

@Injectable()
class ScoutService {

//  static final _headers = {'Content-Type': 'application/json'};
//  static const _scoutsUrl =
//      'https://scoutmanager.struzzwebsolutions.com/db_scripts/index.php'; //URL to web API

  //static const _paramUser =
      //'https://scoutmanager.struzzwebsolutions.com/db_scripts/index.php?op=getscout&user=reader&SCOUT_ID=1'
//
//  var wordList;
//
//  final _http;
//
//  ScoutService(this._http);

  Future<List<Scout>> getScouts() async => mockScouts;
//    try {

      //final scouts = processString(await HttpRequest.getString('$_scoutsUrl?op=getscouts&user=reader'));
      //final response = await _http.get('$_scoutsUrl?op=getscouts&user=reader');
//        return mockScouts;
//    } catch (e) {
//        throw _handleError(e);
//    }
//  }

  Future<Scout> get(String firstName) async =>
      (await getScouts()).firstWhere((scout) => scout.firstName == firstName);

//  Future<List<Scout>> getScouts() async {
//    try {
//      final response = await _http.get('$_scoutsUrl?op=getscouts&user=reader');
//      final scouts = _extractData(response)
//          .map((value) => new Scout.fromJson(value))
//          .toList();
//      return scouts;
//    } catch (e) {
//      throw _handleError(e);
//    }
//  }

/*  Future<Scout> getScout(int id) async {
    try {
      final response =
        await _http.get('$_scoutsUrl?op=getscout&user=reader&SCOUT_ID=$id');
      final scout = _extractData(response)
      .map((value) => new Scout.fromJson(value));
      return scout;
      //return new Scout.fromJson(_extractData(response));
    } catch (e) {
      throw _handleError(e);
    }
  }*/

//  Future<Scout> getScout(String name) async {
//    try {
//      final response =
//      await _http.get('$_scoutsUrl?op=getscout&user=reader&NAME_FIRST_CHILD=$name');
//      final scout = _extractData(response)
//          .map((value) => new Scout.fromJson(value));
//      return scout;
//      //return new Scout.fromJson(_extractData(response));
//    } catch (e) {
//      throw _handleError(e);
//    }
//  }
//
//  processString(String jsonString) {
//    List<String> listString = JSON.decode(jsonString);
//    for (int i=0; i < listString.length; i++) {
//      wordList.children.add(new LIElement()..text = listString[i]);
//    }
//  }
//
//  dynamic _extractData(Response resp) => JSON.decode(resp.body)['data'];
//  //dynamic _extractData(Response resp) => JsonDecoder(resp.body)['data'];
//
//  Exception _handleError(dynamic e) {
//    print(e); // for demo purposes only
//    return new Exception('Server error; cause $e');
//  }

}