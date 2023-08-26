
import 'package:ososs_test/core/api/api.dart';
import 'package:ososs_test/core/enums/request_type_enum.dart';
import 'package:ososs_test/repositories/pokemons/models/pokemon_model.dart';

class PokemonRepository{
  
  
  
  Future<List<PokemonModel>> getPokemons({required int page, required int pageSize})async{
    
    
    var data = await ApiManager.instance.execute(type: RequestType.GET, endPoint: "pokemon?limit=$pageSize&offset=${pageSize*page}");

    return (data["results"] as List).map((e) => PokemonModel.fromJson(e)).toList();
  }
}