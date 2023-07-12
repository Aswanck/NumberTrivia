import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:apicall/models/posts.dart';

Future<Post>fetchData({required String number})async{
  final url="http://numbersapi.com/$number?json";
  final response=await http.get(Uri.parse(url));
  final bodyAsJson=jsonDecode(response.body)as Map<String,dynamic>;
  final data=Post.fromJson(bodyAsJson);
  return data;
}