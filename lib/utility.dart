import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> getChatResponse(String message) async {
  String output = "nothing";
  final url = Uri.parse('https://openai80.p.rapidapi.com/chat/completions');
  try {
    final response = await http.post(
      url,
      headers: {
        'content-type': 'application/json',
        'X-RapidAPI-Key': 'your api key here',
        'X-RapidAPI-Host': 'openai80.p.rapidapi.com'
      },
      body: json.encode({
        "model": "gpt-3.5-turbo",
        "messages": [
          {"role": "user", "content": "write love letter"}
        ]
      }),
    );
    final result = json.decode(response.body);
    output = result['choices'][0]['message']["content"].toString();
  } catch (e) {
    print("0000000000000000000000001 $e");
  }
  return output;
  // if (response.statusCode == 200) {
  // final result = json.decode(response.body);
  //   final output = result['choices'][0]['text'].toString();
  //   return output;
  // }
  // else {
  //   throw Exception('Failed to get response from ChatGPT');
  // }
}
