part of 'logincubit_cubit.dart';

@immutable
sealed class loginState {}

final class logincubitInitial extends loginState {}
final class logincubitsuccess extends loginState {}
final class logincubitfailure extends loginState {
  final String error;
  logincubitfailure({required this.error});
}
final class logincubitloding extends loginState {}
