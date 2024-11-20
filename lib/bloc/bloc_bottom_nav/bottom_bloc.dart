import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticket_app/bloc/bloc_bottom_nav/bottom_event.dart';
import 'package:ticket_app/bloc/bloc_bottom_nav/bottom_state.dart';

class BottomNavBloc extends Bloc<BottomBlocEvent, BottomState> {
  BottomNavBloc() : super(BottomSelectedState(itemSelected: 0)) {
    on<OnTappedItem>((event, emit) {
      emit(BottomSelectedState(itemSelected: event.index));
    });
  }
}
