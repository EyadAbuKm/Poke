

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:paginated_list/paginated_list.dart';

import '../../../../repositories/pokemons/pokemons.dart';
import '../../../../shared/widgets/shiming_widget.dart';
import '../../controller/pokemons_controller.dart';
import 'pokemon_card.dart';

Flexible buildThePokemonsList(BuildContext context) {
  final controller = Get.find<PokemonsController>();
  return Flexible(
    child: PaginatedList<PokemonModel>(
      loadingIndicator: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Center(
          child: ShimmerWidget(
            height: 100.w,
            width: 320.w,
            radius: 15.r,
          ),
        ),
      ),
      items: controller.pokemons,
      isRecentSearch: false,
      isLastPage: controller.isLastPage,
      onLoadMore: (index) => controller.fetchPokemons(),
      builder: (poke, index) => PokemonCard(pokemon:poke),
    ),
  );
}


