import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'chrom_ui_state.dart';

class ChromUiCubit extends Cubit<ChromUiState> {
  ChromUiCubit() : super((ChromUiOrderview()));

homeUi(int n){
if (n==1) {
  emit(ChromUiAdd());
}else if(n==2){
emit(ChromUiEdit());
}else if(n==3){
emit(ChromUiDelet());
}else{
emit(ChromUiOrderview());
}
}




}
