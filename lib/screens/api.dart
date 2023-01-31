import 'dart:convert';

import 'package:http/http.dart' as http;

class CallApi {
  final String _url = "http://localhost/api";
  postData(data, apiUrl) async {
    final fullUrl = _url + apiUrl;

    return await http.post(
      Uri.parse(fullUrl),
      body: jsonEncode(data),
      headers: _setHeaders(),
    );
  }

  _setHeaders() => {
        'content-type': 'application/json',
        'Accept': 'application/json',
      };
}
