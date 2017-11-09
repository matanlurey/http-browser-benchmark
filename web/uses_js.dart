// Copyright 2017, Google Inc.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@JS()
library http_browser_benchmark.web.uses_js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';

@JS('XMLHttpRequest')
abstract class XMLHttpRequest {
  external factory XMLHttpRequest();
  external void addEventListener(String name, void Function() callback);
  external void open(String method, String url);
  external void send();
  external dynamic get response;
  external set responseType(String responseType);
}

Future<dynamic> _getJson(String url) {
  final completer = new Completer();
  XMLHttpRequest xhr;
  xhr = new XMLHttpRequest()
    ..open('GET', url)
    ..responseType = 'json'
    ..addEventListener(
      'load',
      allowInterop(() => completer.complete(xhr.response)),
    );
  return completer.future;
}

main() async {
  final service = new HackerNewsService();
  await service.getFeed('news', 0);
  await service.getItem('123abc');
}

class HackerNewsService {
  static const _baseUrl = 'https://node-hnapi.herokuapp.com';

  HackerNewsService();

  Future<List<Map>> getFeed(String name, int page) async {
    final url = '$_baseUrl/$name?page=$page';
    return JSON.decode(await _getJson(url));
  }

  Future<Map> getItem(String id) async {
    final url = '$_baseUrl/item/$id';
    return JSON.decode(await _getJson(url));
  }
}
