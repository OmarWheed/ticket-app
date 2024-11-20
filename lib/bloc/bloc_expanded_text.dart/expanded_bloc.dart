import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticket_app/bloc/bloc_expanded_text.dart/expanded_event.dart';
import 'package:ticket_app/bloc/bloc_expanded_text.dart/expanded_state.dart';

class ExpandedBloc extends Bloc<ExpandedEvent, ExpandedState> {
  ExpandedBloc() : super(ExpandedTextState(isExpanded: false)) {
    on<ExpandedTextEvent>((event, emit) {
      emit(ExpandedTextState(isExpanded: !event.isExpanded));
    });
  }
}
