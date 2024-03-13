import 'dart:io';
import 'package:path/path.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:admin_caleb_g/App/Data/Models/FoodModel.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'add_state.dart';

class AddCubit extends Cubit<AddState> {
  AddCubit() : super(AddInitial());
  
  File? file;

  Future<void> addfood(FoodModel foodModel) async {
    emit(AddLoding());
    DocumentReference food = FirebaseFirestore.instance.collection('food').doc();

    food.set({
      'name': foodModel.name,
      'category': foodModel.category,
      'price': foodModel.price,
      'image': foodModel.image,
      'id':food.id
    }).then((value) {
      emit(AddSuccess());
    })
        // ignore: invalid_return_type_for_catch_error
        .catchError((error) {
      emit(AddFailure(error: error.toString()));
    });
  }

  Future<String> uploadImage() async {
     emit(AddLoding());
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
