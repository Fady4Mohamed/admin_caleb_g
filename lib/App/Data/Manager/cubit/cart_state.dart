part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}
final class Cartsuccsed extends CartState {}
final class Cartloding extends CartState {}
final class Cartfailure extends CartState {
  final String error;

  Cartfailure(this.error);
}