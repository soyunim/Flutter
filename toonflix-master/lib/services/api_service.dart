import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_detail_model.dart';
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {
  static const String baseUrl = "https://movies-api.nomadcoders.workers.dev";
  static const String popular = "popular";

  // {"adult":false,
  // "backdrop_path":"/8pjWz2lt29KyVGoq1mXYu6Br7dE.jpg",
  // "genre_ids":[28,878,27],
  // "id":615656,
  // "original_language":"en",
  // "original_title":"Meg 2: The Trench",
  // "overview":"An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.",
  // "popularity":7689.373,
  // "poster_path":"/4m1Au3YkjqsxF8iwQy0fPYSxE0h.jpg",
  // "release_date":"2023-08-02",
  // "title":"Meg 2: The Trench",
  // "video":false,
  // "vote_average":7.1,
  // "vote_count":1232}

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$popular');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        final instance = WebtoonModel.fromJson(webtoon);
        webtoonInstances.add(instance);
      }
      return webtoonInstances;
    }
    throw Error();
  }

  static Future<WebtoonDetailModel> getToonById(String id) async {
    final url = Uri.parse("$baseUrl/$id");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final webtoon = jsonDecode(response.body);
      return WebtoonDetailModel.fromJson(webtoon);
    }
    throw Error();
  }

  // static Future<List<WebtoonEpisodeModel>> getLatestEpisodesById(
  //     String id) async {
  //   List<WebtoonEpisodeModel> episodesInstances = [];
  //   final url = Uri.parse("$baseUrl/$id/episodes");
  //   final response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     final episodes = jsonDecode(response.body);
  //     for (var episode in episodes) {
  //       episodesInstances.add(WebtoonEpisodeModel.fromJson(episode));
  //     }
  //     return episodesInstances;
  //   }
  //   throw Error();
  // }
}
