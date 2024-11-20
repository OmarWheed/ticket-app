import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticket_app/base/res/style/app_style.dart';
import 'package:ticket_app/bloc/bloc_expanded_text.dart/expanded_bloc.dart';
import 'package:ticket_app/bloc/bloc_expanded_text.dart/expanded_event.dart';
import 'package:ticket_app/bloc/bloc_expanded_text.dart/expanded_state.dart';

class ExpandedTextWidget extends StatelessWidget {
  const ExpandedTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpandedBloc, ExpandedState>(
      builder: (context, state) {
        if (state is ExpandedTextState) {
          var _isExpanded = state.isExpanded;
          var textWidget = Text(
            text,
            maxLines: state.isExpanded ? null : 9,
            overflow:
                state.isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
          );
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textWidget,
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: GestureDetector(
                    onTap: () {
                      context
                          .read<ExpandedBloc>()
                          .add(ExpandedTextEvent(_isExpanded));
                    },
                    child: Text(
                      textAlign: TextAlign.start,
                      state.isExpanded ? "Less" : "More",
                      style: const TextStyle(
                        color: AppStyle.ticketBlue,
                        fontSize: 20,
                        decorationColor: AppStyle.ticketBlue,
                        decorationStyle: TextDecorationStyle.solid,
                        decoration: TextDecoration.underline,
                      ),
                    )),
              ),
            ],
          );
        } else {
          return Container();
        }
      },
    );
  }
}
