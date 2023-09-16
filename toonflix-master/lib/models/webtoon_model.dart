class WebtoonModel {
  final String original_title, thumb, id;

  WebtoonModel.fromJson(Map<String, dynamic> json)
      : original_title = json['original_title'],
        thumb = json['thumb'],
        id = json['id'];
}
