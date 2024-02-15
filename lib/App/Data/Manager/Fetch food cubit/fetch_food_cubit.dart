import 'package:admin_caleb_g/App/Data/Models/FoodModel.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'fetch_food_state.dart';

class FetchFoodCubit extends Cubit<FetchFoodState> {
  FetchFoodCubit() : super(FetchFoodInitial());
  List<FoodModel> allfoodlist = [];
  getallfood() async {
    emit(FetchFoodloding());
    print('loding');
    try {
  QuerySnapshot data =
      await FirebaseFirestore.instance.collection('food').get();
  for (int v = 0; v < data.docs.length; v++) {
    allfoodlist.add(FoodModel.fromjason(data.docs[v]));
  }
  emit(FetchFoodsuccsed());
} on Exception catch (e) {
  emit(FetchFoodfailure(e.toString()));
  print(e.toString());
}
    
  }
}
