import 'package:cricket_score/model/match_score_response.dart';
import 'package:cricket_score/service/match_api_service.dart';
import 'package:flutter/cupertino.dart';

class CricketProvider extends ChangeNotifier{
  bool isLoading = false;
  MatchResponse? matchResponse;
  MatchApiService? matchApiService;
  Future loadScore() async {
    isLoading = true;
    // notifyListeners();
    matchApiService = MatchApiService();
    matchResponse = await matchApiService?.getMatchInfo();
    isLoading = false;
    notifyListeners();
  }
}