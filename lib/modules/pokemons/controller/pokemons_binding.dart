import 'package:get/get.dart';

import 'pokemons_controller.dart';

class PokemonsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PokemonsController>(
        () => PokemonsController());
  }
}
