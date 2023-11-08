import 'dart:convert';
import 'package:cricket_score/model/match_score_response.dart';
import 'package:cricket_score/util/api_end_point.dart';
import 'package:http/http.dart' as http;

class MatchApiService{
    Future<MatchResponse> getMatchInfo() async {
    String url = ApiEndPoint.baseUrl;
    http.Response response = await http.get(
      Uri.parse(url),

    );
    if (response.statusCode == 200) {
      String body = response.body;
      final data = jsonDecode(body);
      MatchResponse matchResponse = MatchResponse.fromJson(data);
      return matchResponse;
    } else {
      throw 'Something went wrong';
    }
  }
}
