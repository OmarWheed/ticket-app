abstract class BottomBlocEvent {}

class OnTappedItem extends BottomBlocEvent {
  final int index;

  OnTappedItem(this.index);
}
