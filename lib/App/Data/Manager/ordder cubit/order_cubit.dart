import 'package:admin_caleb_g/App/Data/Models/order_model.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit() : super(OrderInitial());
  List<OrderModel> allorderlist = [];
  getallorders() async {
    emit(Orderloding());
    try {
      QuerySnapshot data =
          await FirebaseFirestore.instance.collection('orders').get();
      for (int v = 0; v < data.docs.length; v++) {
        allorderlist.add(OrderModel.fromjason(data.docs[v]));
      }
      emit(Ordersuccess());
    } on Exception catch (e) {
      emit(OrderFailure(error: e.toString()));
      print(e.toString());
    }
  }
  

}
