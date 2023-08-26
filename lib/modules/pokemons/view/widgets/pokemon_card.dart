

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../repositories/pokemons/pokemons.dart';
import '../../../../shared/utils/pokemon_image_url.dart';
import '../../../../shared/widgets/image_widget.dart';

class PokemonCard extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonCard({
    super.key,required this.pokemon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      child: Card(
        elevation: 6,
        child: Container(
            height: 110.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageWidget(
                    url: getImageUrlFromPokemonUrl(pokemon.url),
                    width: 100.w,
                    height: 110.h,
                    radius: 15.r),
                SizedBox(
                  width: 8.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    pokemon.name,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 17.sp),
                  ),
                )
              ],
            )),
      ),
    );
  }
}