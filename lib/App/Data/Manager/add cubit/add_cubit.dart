
import 'dart:io';

import 'package:admin_caleb_g/App/Data/Models/FoodModel.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'add_state.dart';

class AddCubit extends Cubit<AddState> {
  AddCubit() : super(AddInitial());
   CollectionReference foods = FirebaseFirestore.instance.collection('food');
    File? file;
    
    Future<void> addfood(FoodModel foodModel) async {
      emit(AddLoding());
        foods
          .add({
            'name': foodModel.name,
            'category': foodModel.category, 
            'price': foodModel.price,
            'image': foodModel.image 
          })
          .then((value){emit(AddSuccess());} )
          // ignore: invalid_return_type_for_catch_error
          .catchError((error){emit(AddFailer(error: error.toString()));} );
    }
}
