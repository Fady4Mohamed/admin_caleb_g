part of 'order_cubit.dart';

@immutable
sealed class OrderState {}

final class OrderInitial extends OrderState {}

final class Ordersuccess extends OrderState {}

final class Orderloding extends OrderState {}

final class OrderFailure extends OrderState {
  final String error;

  OrderFailure({required this.error});
}
