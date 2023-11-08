

import 'package:cricket_score/model/match_score_info.dart';
import 'package:cricket_score/model/team_info_model.dart';

class DataInfo {
  String? id;
  String? name;
  String? matchType;
  String? status;
  String? venue;
  String? date;
  String? dateTimeGMT;
  List<String>? teams;
  List<TeamInfo>? teamInfo;
  List<MatchScoreInfo>? score;
  String? seriesId;
  bool? fantasyEnabled;
  bool? bbbEnabled;
  bool? hasSquad;
  bool? matchStarted;
  bool? matchEnded;

  DataInfo(
      {this.id,
        this.name,
        this.matchType,
        this.status,
        this.venue,
        this.date,
        this.dateTimeGMT,
        this.teams,
        this.teamInfo,
        this.score,
        this.seriesId,
        this.fantasyEnabled,
        this.bbbEnabled,
        this.hasSquad,
        this.matchStarted,
        this.matchEnded});

  DataInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    matchType = json['matchType'];
    status = json['status'];
    venue = json['venue'];
    date = json['date'];
    dateTimeGMT = json['dateTimeGMT'];
    teams = json['teams'].cast<String>();
    if (json['teamInfo'] != null) {
      teamInfo = <TeamInfo>[];
      json['teamInfo'].forEach((v) {
        teamInfo!.add(new TeamInfo.fromJson(v));
      });
    }
    if (json['score'] != null) {
      score = <MatchScoreInfo>[];
      json['score'].forEach((v) {
        score!.add(new MatchScoreInfo.fromJson(v));
      });
    }
    seriesId = json['series_id'];
    fantasyEnabled = json['fantasyEnabled'];
    bbbEnabled = json['bbbEnabled'];
    hasSquad = json['hasSquad'];
    matchStarted = json['matchStarted'];
    matchEnded = json['matchEnded'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['matchType'] = this.matchType;
    data['status'] = this.status;
    data['venue'] = this.venue;
    data['date'] = this.date;
    data['dateTimeGMT'] = this.dateTimeGMT;
    data['teams'] = this.teams;
    if (this.teamInfo != null) {
      data['teamInfo'] = this.teamInfo!.map((v) => v.toJson()).toList();
    }
    if (this.score != null) {
      data['score'] = this.score!.map((v) => v.toJson()).toList();
    }
    data['series_id'] = this.seriesId;
    data['fantasyEnabled'] = this.fantasyEnabled;
    data['bbbEnabled'] = this.bbbEnabled;
    data['hasSquad'] = this.hasSquad;
    data['matchStarted'] = this.matchStarted;
    data['matchEnded'] = this.matchEnded;
    return data;
  }
}