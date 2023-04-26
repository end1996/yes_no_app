import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    // final colors = Theme.of(context).colorScheme;
    final textController = TextEditingController();
    final FocusNode focusNode = FocusNode();

    final outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(40.0),
        borderSide: const BorderSide(color: Colors.transparent));
    final inputDecoration = InputDecoration(
      filled: true,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      hintText: 'End your message with a "?"',
      suffixIcon: IconButton(
          onPressed: () {
            final textValue = textController.value.text;
            textController.clear();
            onValue(textValue);
          },
          icon: const Icon(Icons.send_outlined)),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: TextFormField(
        onTapOutside: (event) => focusNode.unfocus(),
        focusNode: focusNode,
        controller: textController,
        decoration: inputDecoration,
        onFieldSubmitted: (value) {
          textController.clear();
          focusNode.requestFocus();
          onValue(value);
        },
        // onChanged: (value) {
        //   print('onChanged: $value');
        // },
      ),
    );
  }
}
