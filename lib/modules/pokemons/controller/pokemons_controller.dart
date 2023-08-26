import 'package:get/get.dart';
import 'package:ososs_test/core/enums/controller_status.dart';
import 'package:ososs_test/repositories/pokemons/pokemons.dart';

class PokemonsController extends GetxController {
  /// A Repository to provide the connection with the Back-end
  late PokemonRepository _pokemonRepository;

  /// Fields needed for the pagination
  int pageSize = 10;
  int page = 0;
  bool isLastPage = false;

  /// the current status that needed for the rendering
  Status status = Status.initial;

  List<PokemonModel> pokemons = [];

  @override
  void onInit() {
    _pokemonRepository = PokemonRepository();
    fetchPokemons(isFirst: true);
    super.onInit();
  }

  /// isFirst is for the first time of loading, that's mean it is not load more
  void fetchPokemons({isFirst = false}) async {
    status = isFirst ? Status.loading : Status.loadingMore;
    update();
    var result =
        await _pokemonRepository.getPokemons(page: page, pageSize: pageSize);

    pokemons.addAll(result);

    if (result.isEmpty) {
      isLastPage = true;
    } else {
      page++;
    }
    status = Status.loaded;
    update();
  }
}
