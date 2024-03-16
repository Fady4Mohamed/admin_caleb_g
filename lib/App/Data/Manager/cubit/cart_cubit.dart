import 'package:admin_caleb_g/App/Data/Models/CartModel.dart';
import 'package:admin_caleb_g/App/Data/Models/FoodModel.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
     List<FoodModel> foodlist = [];
     List<cartmodel> cartlist=[];
   getallfood({required String cartname}) async {
    emit(Cartloding());
    try {
  QuerySnapshot data =
      await FirebaseFirestore.instance.collection(cartname).get();
  for (int v = 0; v < data.docs.length; v++) {
    cartlist.add(cartmodel.fromjason(data.docs[v]));
    foodlist.add(FoodModel.fromjason( await FirebaseFirestore.instance.collection('food').doc(cartlist[v].foodid).get() ));
   
  }
  emit(Cartsuccsed());
} on Exception catch (e) {
  emit(Cartfailure( e.toString()));
  print(e.toString());
}
    
  }
}
