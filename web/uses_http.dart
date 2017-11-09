// Copyright 2017, Google Inc.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import 'package:http/browser_client.dart';

main() async {
  final service = new HackerNewsService();
  await service.getFeed('news', 0);
  await service.getItem('123abc');
}

class HackerNewsService {
  static const _baseUrl = 'https://node-hnapi.herokuapp.com';

  final BrowserClient _client;

  HackerNewsService() : _client = new BrowserClient();

  Future<List<Map>> getFeed(String name, int page) async {
    final url = '$_baseUrl/$name?page=$page';
    final response = await _client.get(url);
    return JSON.decode(response.body);
  }

  Future<Map> getItem(String id) async {
    final url = '$_baseUrl/item/$id';
    final response = await _client.get(url);
    return JSON.decode(response.body);
  }
}
