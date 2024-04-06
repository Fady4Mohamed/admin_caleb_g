part of 'complet_order_cubit.dart';

@immutable
sealed class CompletOrderState {}

final class CompletOrderInitial extends CompletOrderState {}
final class CompletOrdersuccsed extends CompletOrderState {}
final class CompletOrderfailure extends CompletOrderState {
  final String erorr;

  CompletOrderfailure({required this.erorr}); 
}
final class CompletOrderloding extends CompletOrderState {}
final class CompletOrdertrue extends CompletOrderState {}
final class CompletOrderfalse extends CompletOrderState {}