import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ososs_test/modules/pokemons/controller/pokemons_controller.dart';
import 'package:ososs_test/modules/pokemons/view/widgets/pokemons_widgets.dart';

import '../../../core/enums/controller_status.dart';

class PokemonsScreen extends StatefulWidget {
  const PokemonsScreen({Key? key}) : super(key: key);

  @override
  State<PokemonsScreen> createState() => _PokemonsScreenState();
}

class _PokemonsScreenState extends State<PokemonsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokemons".tr),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 16.h),
            GetBuilder<PokemonsController>(builder: (controller) {
              if (controller.status == Status.loading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (controller.status == Status.error) {
                return Center(
                  child: Text("error".tr),
                );
              } else {
                return buildThePokemonsList(context);
              }
            })
          ],
        ),
      ),
    );
  }

}


