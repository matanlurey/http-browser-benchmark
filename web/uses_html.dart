// Copyright 2017, Google Inc.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:html';

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
    final xhr = await HttpRequest.request(url);
    return JSON.decode(xhr.responseText);
  }

  Future<Map> getItem(String id) async {
    final url = '$_baseUrl/item/$id';
    final xhr = await HttpRequest.request(url);
    return JSON.decode(xhr.response);
  }
}
