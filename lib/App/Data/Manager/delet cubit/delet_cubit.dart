import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'delet_state.dart';

class DeletCubit extends Cubit<DeletState> {
  DeletCubit() : super(DeletInitial());


deletFood ({required String name}) async {
 emit(Deletloding());
  String id='';
  try {
  QuerySnapshot food= await FirebaseFirestore.instance
  .collection('food')
  .where('name', isEqualTo: name)
  .get();
 id= food.docs[0]['id'];
  if (id!='') {
    FirebaseFirestore.instance.collection('food')
    .doc(id)
    .delete()
    .then((value) => emit(Deletsuccess()))
    .catchError((error) =>  emit(Deletfailure(error: error.toString())));
  }
   
   
} on Exception catch (e) {
   emit(Deletfailure(error: e.toString()));
}
 
  
  }


}
