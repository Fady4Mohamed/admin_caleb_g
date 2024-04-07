import 'package:admin_caleb_g/App/Data/Models/order_model.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit() : super(OrderInitial());
  // under editing
  List<OrderModel> allorderlist = [];
  Stream<QuerySnapshot> data =
      FirebaseFirestore.instance.collection('orders').snapshots();
  getallorders() async {
    print('1');
    emit(Orderloding());
    try {
      data.listen((QuerySnapshot snapshot) {
        print('2');
        allorderlist.clear();
        for (var document in snapshot.docs) {
          allorderlist.add(OrderModel.fromjson(document.data()));
        }
        print('3');
        emit(Ordersuccess());
      }, onError: (e) {
        emit(OrderFailure(error: e.toString()));
        print(e.toString());
         print('4');
      });
      print('5');
    } catch (e) {
      emit(OrderFailure(error: e.toString()));
      print(e.toString());
    }
  }
}
