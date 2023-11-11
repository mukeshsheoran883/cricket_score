import 'package:cricket_score/model/data%20info.dart';
import 'package:cricket_score/model/score_info.dart';
import 'package:flutter/material.dart';

class MatchDetailScreen extends StatefulWidget {
  const MatchDetailScreen(
      {super.key, required this.information, required this.matchInfo});

  final ScoreInfo? information;
  final DataInfo matchInfo;

  @override
  State<MatchDetailScreen> createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen> {
  DataInfo? matchInfoList;
  ScoreInfo? matchInformation;

  @override
  void initState() {
    matchInfoList = widget.matchInfo;
    matchInformation = widget.information;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(widget.matchInfo.teamInfo![0].shortname.toString()),
            const SizedBox(
              width: 7,
            ),
            const Text('vs',style: TextStyle(fontSize: 16),),const SizedBox(
              width: 7,
            ),
            Text(widget.matchInfo.teamInfo![1].shortname.toString()),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Info',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const Divider(),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const Text('Match Type'),
                    const Spacer(),
                    Text(widget.matchInfo.matchType.toString()),
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const Text('Data'),
                    const Spacer(),
                    Text(widget.matchInfo.date.toString()),
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const Text('Time'),
                    const Spacer(),
                    Text(widget.matchInfo.dateTimeGMT.toString()),
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Venue'),
                    // const Spacer(),
                    Flexible(child: Text(widget.matchInfo.venue.toString())),
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Text('History'),
                        const Spacer(),
                        Text(widget.information!.hitsToday.toString()),
                      ],
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const Text('Query Time'),
                        const Spacer(),
                        Text(widget.information!.queryTime.toString()),
                      ],
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const Text('Hits Limit'),
                        const Spacer(),
                        Text(widget.information!.hitsLimit.toString()),
                      ],
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const Text('Cache'),
                        const Spacer(),
                        Text(widget.information!.cache.toString()),
                      ],
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const Text('Credits'),
                        const Spacer(),
                        Text(widget.information!.credits.toString()),
                      ],
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const Text('Hits Today'),
                        const Spacer(),
                        Text(widget.information!.hitsToday.toString()),
                      ],
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const Text('Sever'),
                        const Spacer(),
                        Text(widget.information!.server.toString()),
                      ],
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const Text('Total Rows'),
                        const Spacer(),
                        Text(widget.information!.totalRows.toString()),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
