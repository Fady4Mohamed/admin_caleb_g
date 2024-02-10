import 'dart:io';
import 'package:admin_caleb_g/App/Data/Models/IDmodel.dart';
import 'package:path/path.dart';
import 'package:admin_caleb_g/App/Data/Manager/Fetch%20food%20cubit/fetch_food_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'edit_state.dart';

class EditCubit extends Cubit<EditState> {
  EditCubit() : super(EditInitial());
  File? file;
editdata ({required String name,double? salary,String? image})  {
 emit(Editloding());
  String id='';
  try {
  FetchFoodCubit().getallfood();
   List<IDModel> allIDlist =FetchFoodCubit().allIDlist;
  for (int i = 0; i < allIDlist.length; i++) {
    if (name==allIDlist[i].name) {
      id=allIDlist[i].id;
    }
  }
  if (id!='') {
     FirebaseFirestore.instance.collection('food').doc(id).update({
      if(salary!=null)
      'price': salary,
      if(image!=null)
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
