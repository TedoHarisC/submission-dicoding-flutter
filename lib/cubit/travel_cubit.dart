import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'travel_state.dart';

class TravelCubit extends Cubit<int> {
  TravelCubit() : super(0);

  void setMenuTravel(int newMenu) {
    emit(newMenu);
  }
}
