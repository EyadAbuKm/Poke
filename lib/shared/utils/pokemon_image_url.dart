import 'package:flutter/material.dart';



/// The url that returned with the Pokemon model does not has the image url,
/// so we need to make this workaround to get the image url

String getImageUrlFromPokemonUrl(String url) {


  /// The real url is like ****/4/ the 4 here is the Id so this regex is for it
  RegExp regex = RegExp(r'/(\d+)/$');

  Match? match = regex.firstMatch(url);

  if (match != null) {
    String number = match.group(1)!;
    var pokemonIndex = int.parse(number);
    return "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$pokemonIndex.png";
  } else {
    debugPrint("No number found in the URL.");
    return "";
  }
}