import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentworks/di.dart';
import 'package:rentworks/features/realty/domain/usecases/params/realty_param.dart';
import 'package:rentworks/features/realty/presentation/realty/cubit/realty_cubit.dart';

class RealtyScreen extends StatefulWidget {
  const RealtyScreen({super.key});

  @override
  State<RealtyScreen> createState() => _RealtyScreenState();
}

class _RealtyScreenState extends State<RealtyScreen> {
  var realtyCubit = getIt<RealtyCubit>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RealtyCubit, RealtyState>(
        bloc: getIt<RealtyCubit>(),
        builder: (context, state) {
          return Container();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          RealtyParam testRealtyParam = RealtyParam(
            name: " name",
            description: "description test micro",
            location: "location",
            price: 1,
            available: true,
            amenities: ["amenities"],
            owner: "owner",
            photos: ["photos"],
          );

          realtyCubit.createRealty(testRealtyParam);
        },
        child: const Icon(Icons.add),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.,
    );
  }
}
