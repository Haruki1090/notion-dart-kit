/// Custom emoji object in a Notion workspace.
class CustomEmoji {
  const CustomEmoji({
    required this.id,
    required this.name,
    required this.url,
  });

  factory CustomEmoji.fromJson(Map<String, dynamic> json) => CustomEmoji(
        id: json['id'] as String,
        name: json['name'] as String,
        url: json['url'] as String,
      );

  final String id;
  final String name;
  final String url;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'url': url,
      };
}
