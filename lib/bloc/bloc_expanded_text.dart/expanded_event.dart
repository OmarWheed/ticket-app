abstract class ExpandedEvent {}

class ExpandedTextEvent extends ExpandedEvent {
  final bool isExpanded;
  ExpandedTextEvent(this.isExpanded);
}
