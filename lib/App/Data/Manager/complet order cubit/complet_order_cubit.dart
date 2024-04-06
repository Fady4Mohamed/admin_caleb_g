import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'complet_order_state.dart';

class CompletOrderCubit extends Cubit<CompletOrderState> {
  CompletOrderCubit() : super(CompletOrderInitial());
  
  Future<void> removeCollection({required String cartpath}) async {
  CollectionReference collectionRef = FirebaseFirestore.instance.collection(cartpath);
  QuerySnapshot querySnapshot = await collectionRef.get();
  for (DocumentSnapshot docSnapshot in querySnapshot.docs) {
    await docSnapshot.reference.delete();
  }
}

Future<void> removeorder({required String id}) async{
await  FirebaseFirestore.instance.collection('orders')
    .doc(id)
    .delete()
    .then((value){ })
    .catchError((error){emit(CompletOrderfailure(erorr: error.toString()));}  );
}

Future <void> addtouserhistory({required String cartname})async{
  
    QuerySnapshot data =
      await FirebaseFirestore.instance.collection(cartname).get();
       
          DocumentReference History = await FirebaseFirestore.instance.collection('${cartname}History').doc();
  for (int v = 0; v < data.docs.length; v++) {
    History.set({
      'foodid':data.docs[v]['foodid']
    }).then((value) {
    
    })
        // ignore: invalid_return_type_for_catch_error
        .catchError((error) {
      emit(CompletOrderfailure(erorr: error.toString()));
    });
  }
}
Future<void>completOrder({required String cartname,required String orderid})async{
 await addtouserhistory(cartname: cartname);
 await removeCollection(cartpath: cartname);
 await removeorder(id: orderid);
}

refresh(){
  emit(CompletOrdertrue());
   emit(CompletOrderfalse());
}
}
