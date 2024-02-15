part of 'fetch_food_cubit.dart';

@immutable
sealed class FetchFoodState {}

final class FetchFoodInitial extends FetchFoodState {}

final class FetchFoodsuccsed extends FetchFoodState {}

final class FetchFoodfailure extends FetchFoodState {
  final String error;

  FetchFoodfailure(this.error);
}

final class FetchFoodloding extends FetchFoodState {}
