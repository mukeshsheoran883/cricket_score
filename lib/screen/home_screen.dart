import 'package:cricket_score/model/data%20info.dart';
import 'package:cricket_score/model/match_score_response.dart';
import 'package:cricket_score/screen/match_detail_screen.dart';
import 'package:cricket_score/service/match_api_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = false;
  MatchResponse? matchResponse;
  MatchApiService? matchApiService;

  Future loadScore() async {
    isLoading = true;
    setState(() {});
    matchApiService = MatchApiService();
    matchResponse = await matchApiService?.getMatchInfo();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    loadScore();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Cricket'),
        ),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: matchResponse?.data?.length ?? 0,
              itemBuilder: (context, index) {
                DataInfo data = matchResponse!.data![index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MatchDetailScreen(
                        information: matchResponse!.info,
                        matchInfo: data,
                      );
                    }));
                  },
                  child: Card(
                      child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(data.date.toString()),
                        Text(data.name!.toString(), maxLines: 1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(data.teamInfo![0].img.toString()),
                                Text(data.teamInfo![0].shortname.toString()),
                              ],
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                  color: Colors.red, shape: BoxShape.circle),
                              child: const Center(
                                  child: Text(
                                'VS',
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(data.teamInfo![1].img.toString()),
                                Text(data.teamInfo![1].shortname.toString()),
                              ],
                            ),
                          ],
                        ),
                        Text(data.status.toString()),
                      ],
                    ),
                  )),
                );
              },
            ),
    );
  }
}
