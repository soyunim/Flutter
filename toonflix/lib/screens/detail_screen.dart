import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_episode_model.dart';
import 'package:toonflix/models/webtoon_detail_model.dart';
import 'package:toonflix/services/api_service.dart';

class DetailScreen extends StatefulWidget {
  final String title, thumb, id;
  const DetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<WebtoonDetailModel> webtoon;
  late Future<List<WebtoonEpisodeModel>> episodes;

  @override
  void initState() {
    super.initState();
    webtoon = ApiService.getToonById(widget.id);
    episodes = ApiService.getLatestEpisodeById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xFF02C75A),
        foregroundColor: Colors.white,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: widget.id,
                  child: Container(
                    width: 200,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          offset: const Offset(2, 2),
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: Image.network(
                      widget.thumb,
                      headers: const {
                        "User-Agent":
                            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            FutureBuilder(
              future: webtoon,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Text(
                        '${snapshot.data!.genre} / ${snapshot.data!.age}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        snapshot.data!.about,
                        style: const TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ],
                  );
                }
                return const Text('...');
              },
            ),
            const SizedBox(
              height: 15,
            ),
            FutureBuilder(
                future: episodes,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        for (var episodes in snapshot.data!)
                          Container(
                            child: Row(
                              children: [
                                Text(episodes.title),
                                const Icon(Icons.chevron_right),
                              ],
                            ),
                          ),
                      ],
                    );
                  }
                  return Container();
                }),
          ],
        ),
      ),
    );
  }
}
