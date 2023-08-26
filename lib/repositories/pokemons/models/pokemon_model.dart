class PokemonModel {
  final String name;
  final String url;

  const PokemonModel({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': this.name,
      'url': this.url,
    };
  }

  factory PokemonModel.fromJson(Map<String, dynamic> map) {
    return PokemonModel(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }
}
