part of 'realty_cubit.dart';

abstract class RealtyState extends Equatable {
  const RealtyState();

  @override
  List<Object> get props => [];
}

class RealtyInitial extends RealtyState {}

class RealtyLoading extends RealtyState {}

class RealtyLoaded extends RealtyState {
  List<Realty> allRealty;
  RealtyLoaded(this.allRealty);
}

class RealtyError extends RealtyState {
  final String message;

  RealtyError({required this.message});
}
