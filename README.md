# http-browser-benchmark

Code-size benchmarks for using `package:http/browser_client.dart`.

Disclaimer: This is not an official Google or Dart project.

## Results

> To reproduce:
>
> ```bash
> $ git clone https://github.com/matanlurey/http-browser-benchmark
> $ pub get
> $ pub build$ pub run jsbench
> ```

### `package:js`

Implemented only using `package:js`.

 | uses_js.dart.js                                                                  | 99.2 kB    |            |
 | -------------------------------------------------------------------------------- | ---------- | ---------- |
 | compiler overhead                                                                | 21.5 kB    | 21.6%      |
 | minified?                                                                        | Yes        |            |
 | noSuchMethod?                                                                    | No         |            |
 | -------------------------------------------------------------------------------- | ---------- | ---------- |
 | dart:_js_helper                                                                  | 23.4 kB    | 23.6%      |
 | dart:_isolate_helper                                                             | 14.1 kB    | 14.2%      |
 | dart:async                                                                       | 9.04 kB    | 09.1%      |
 | dart:collection                                                                  | 6.37 kB    | 06.4%      |
 | dart:_interceptors                                                               | 5.92 kB    | 06.0%      |
 | dart:core                                                                        | 5.47 kB    | 05.5%      |
 | dart:html                                                                        | 3.72 kB    | 03.7%      |
 | dart:svg                                                                         | 2.40 kB    | 02.4%      |
 | dart:_native_typed_data                                                          | 2.35 kB    | 02.4%      |
 | dart:_internal                                                                   | 1.60 kB    | 01.6%      |
 | dart:convert                                                                     | 1.32 kB    | 01.3%      |
 | uses_js.dart                                                                     | 1.22 kB    | 01.2%      |

### `dart:html`

Implemented using only `dart:html`.

 | uses_html.dart.js                                                                | 98.6 kB    |            |
 | -------------------------------------------------------------------------------- | ---------- | ---------- |
 | compiler overhead                                                                | 20.7 kB    | 21.0%      |
 | minified?                                                                        | Yes        |            |
 | noSuchMethod?                                                                    | No         |            |
 | -------------------------------------------------------------------------------- | ---------- | ---------- |
 | dart:_js_helper                                                                  | 21.9 kB    | 22.2%      |
 | dart:_isolate_helper                                                             | 14.0 kB    | 14.1%      |
 | dart:async                                                                       | 9.34 kB    | 09.5%      |
 | dart:collection                                                                  | 6.15 kB    | 06.2%      |
 | dart:core                                                                        | 5.87 kB    | 06.0%      |
 | dart:_interceptors                                                               | 5.45 kB    | 05.5%      |
 | dart:html                                                                        | 4.42 kB    | 04.5%      |
 | dart:_native_typed_data                                                          | 2.49 kB    | 02.5%      |
 | dart:svg                                                                         | 2.40 kB    | 02.4%      |
 | dart:convert                                                                     | 1.85 kB    | 01.9%      |
 | dart:html_common                                                                 | 1.41 kB    | 01.4%      |
 | dart:_internal                                                                   | 1.29 kB    | 01.3%      |

### `BrowserClient`

Implemented using `package:http/browser_client.dart`.

 | uses_http.dart.js                                                                | 206 kB     |            |
 | -------------------------------------------------------------------------------- | ---------- | ---------- |
 | compiler overhead                                                                | 27.8 kB    | 13.5%      |
 | minified?                                                                        | Yes        |            |
 | noSuchMethod?                                                                    | No         |            |
 | -------------------------------------------------------------------------------- | ---------- | ---------- |
 | dart:core                                                                        | 34.7 kB    | 16.8%      |
 | dart:_js_helper                                                                  | 30.1 kB    | 14.6%      |
 | dart:async                                                                       | 15.2 kB    | 07.4%      |
 | dart:_isolate_helper                                                             | 14.0 kB    | 06.8%      |
 | dart:_interceptors                                                               | 9.93 kB    | 04.8%      |
 | dart:collection                                                                  | 9.75 kB    | 04.7%      |
 | package:path                                                                     | 9.46 kB    | 04.6%      |
 | dart:convert                                                                     | 8.35 kB    | 04.1%      |
 | dart:html                                                                        | 8.31 kB    | 04.0%      |
 | package:stack_trace                                                              | 7.73 kB    | 03.8%      |
 | dart:_internal                                                                   | 5.91 kB    | 02.9%      |
 | package:source_span                                                              | 5.54 kB    | 02.7%      |
 | package:http                                                                     | 4.04 kB    | 02.0%      |
 | dart:_native_typed_data                                                          | 3.89 kB    | 01.9%      |
 | dart:svg                                                                         | 2.65 kB    | 01.3%      |
 | package:http_parser                                                              | 2.11 kB    | 01.0%      |
 | dart:html_common                                                                 | 1.41 kB    | 00.7%      |
 | package:string_scanner                                                           | 1.40 kB    | 00.7%      |
 | dart:math                                                                        | 1.35 kB    | 00.7%      |
 | uses_http.dart                                                                   | 1.00 kB    | 00.5%      |
