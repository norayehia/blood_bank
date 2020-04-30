import 'dart:convert';

import 'package:http/http.dart' as http;

import 'Model.dart';

Future<List<Donor>> getItem() async {
  final response = await http.get('http://192.168.1.8/bloodbank/get.php');
  if (response.statusCode == 200) {
    final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
    return parsed.map<Donor>((i) => Donor.fromJson(i)).toList();
  } else {
    throw Exception('asd');
  }
}
