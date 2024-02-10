part of 'fetch_food_cubit.dart';

@immutable
sealed class FetchFoodState {}

final class FetchFoodInitial extends FetchFoodState {}

final class FetchFoodsuccsed extends FetchFoodState {}

final class FetchFoodfailer extends FetchFoodState {
  final String error;

  FetchFoodfailer(this.error);
}

final class FetchFoodloding extends FetchFoodState {}
