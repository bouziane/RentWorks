import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rentworks/features/realty/domain/entities/realty.dart';
import 'package:rentworks/features/realty/domain/usecases/params/realty_param.dart';

import '../../../domain/usecases/realty_usescase.dart';

part 'realty_state.dart';

class RealtyCubit extends Cubit<RealtyState> {
  RealtyUseCases realtyUseCases;
  RealtyCubit(this.realtyUseCases) : super(RealtyInitial());

  createRealty(RealtyParam realtyParam) async {
    bool isCreated = await realtyUseCases.createRealty(realtyParam);
    if (!isCreated) {
      emit(RealtyError(message: "Error during the creation of the realty"));
    } else {
      getAllRealties();
    }
  }

  getAllRealties() async {
    realtyUseCases.retrieveAllRealty().listen((event) {
      if (event.isNotEmpty) {
        emit(RealtyLoaded(event));
      } else {
        emit(RealtyError(message: "No elements found."));
      }
    });
  }
}
