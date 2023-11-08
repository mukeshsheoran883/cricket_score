import 'package:cricket_score/model/score_info.dart';
import 'package:cricket_score/model/data%20info.dart';

class MatchResponse {
  String? apikey;
  List<DataInfo>? data;
  String? status;
  ScoreInfo? info;

  MatchResponse({this.apikey, this.data, this.status, this.info});

  MatchResponse.fromJson(Map<String, dynamic> json) {
    apikey = json['apikey'];
    if (json['data'] != null) {
      data = <DataInfo>[];
      json['data'].forEach((v) {
        data!.add(DataInfo.fromJson(v));
      });
    }
    status = json['status'];
    info = json['info'] != null ? ScoreInfo.fromJson(json['info']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['apikey'] = apikey;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['status'] = status;
    if (info != null) {
      data['info'] = info!.toJson();
    }
    return data;
  }
}







