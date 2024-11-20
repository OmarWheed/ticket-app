abstract class BottomState {}

class BottomStateInitial extends BottomState {}

class BottomSelectedState extends BottomState {
  final int itemSelected;
  BottomSelectedState({required this.itemSelected});
}
