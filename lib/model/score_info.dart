class ScoreInfo {
  int? hitsToday;
  int? hitsUsed;
  int? hitsLimit;
  int? credits;
  int? server;
  int? offsetRows;
  int? totalRows;
  double? queryTime;
  int? s;
  int? cache;

  ScoreInfo(
      {this.hitsToday,
        this.hitsUsed,
        this.hitsLimit,
        this.credits,
        this.server,
        this.offsetRows,
        this.totalRows,
        this.queryTime,
        this.s,
        this.cache});

  ScoreInfo.fromJson(Map<String, dynamic> json) {
    hitsToday = json['hitsToday'];
    hitsUsed = json['hitsUsed'];
    hitsLimit = json['hitsLimit'];
    credits = json['credits'];
    server = json['server'];
    offsetRows = json['offsetRows'];
    totalRows = json['totalRows'];
    queryTime = json['queryTime'];
    s = json['s'];
    cache = json['cache'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hitsToday'] = this.hitsToday;
    data['hitsUsed'] = this.hitsUsed;
    data['hitsLimit'] = this.hitsLimit;
    data['credits'] = this.credits;
    data['server'] = this.server;
    data['offsetRows'] = this.offsetRows;
    data['totalRows'] = this.totalRows;
    data['queryTime'] = this.queryTime;
    data['s'] = this.s;
    data['cache'] = this.cache;
    return data;
  }
}