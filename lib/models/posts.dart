
import 'dart:convert';

Post postFromJson(String str) => Post.fromJson(json.decode(str));

String postToJson(Post data) => json.encode(data.toJson());

class Post {
  String triviaText;
  int number;
  bool found;
  String type;

  Post({
    required this.triviaText,
    required this.number,
    required this.found,
    required this.type,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    triviaText: json["text"],
    number: json["number"],
    found: json["found"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "text": triviaText,
    "number": number,
    "found": found,
    "type": type,
  };
}
