import 'dart:io';
import 'package:path/path.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'edit_state.dart';

class EditCubit extends Cubit<EditState> {
  EditCubit() : super(EditInitial());
  File? file;
editdata ({required String name,double? salary,String? image}) async {
 emit(Editloding());
  String id='';
  try {
  QuerySnapshot food= await FirebaseFirestore.instance
  .collection('food')
  .where('name', isEqualTo: name)
  .get();
 id= food.docs[0]['id'];
  if (id!='') {
     FirebaseFirestore.instance.collection('food').doc(id).update({
      'price':salary,
      'image': image,
     });
  }
   emit(Editsuccess());
   
} on Exception catch (e) {
   emit(Editfailuer(Error: e.toString()));
}
 
  
  }
  
  Future<String> uploadImage() async {
    if (file != null) {
      String Imagepath =basename(file!.path);
      final storageRef = FirebaseStorage.instance.ref(Imagepath);
      await storageRef.putFile(file!);
      String url;
      url = await storageRef.getDownloadURL();
      return url;
    }
    throw Exception(['image is equal null']);
  }
}
