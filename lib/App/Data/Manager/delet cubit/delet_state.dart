part of 'delet_cubit.dart';

@immutable
sealed class DeletState {}

final class DeletInitial extends DeletState {}
final class Deletfailure extends DeletState {
  final String error;

  Deletfailure({required this.error});
}
final class Deletsuccess extends DeletState {}
final class Deletloding extends DeletState {}