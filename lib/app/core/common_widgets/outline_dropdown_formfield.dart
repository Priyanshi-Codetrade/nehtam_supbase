import 'package:flutter/material.dart';

class OutlinedDropDownFormField extends StatelessWidget {
  final String hint, errorText;
  final String? value;
  final Widget prefix, suffix;
  final TextEditingController controller;
  final int hintMaxLines;
  final double verticalPadding, horizontalPadding;
  final List<String> items;
  final String? Function(String? val)? validator;
  final void Function(String? val)? onChanged;

  const OutlinedDropDownFormField({
    super.key,
    this.hint = "",
    this.errorText = "Please select a value",
    this.prefix = const SizedBox(),
    this.suffix = const SizedBox(),
    required this.controller,
    this.onChanged,
    this.validator,
    this.horizontalPadding = 0,
    this.verticalPadding = 0,
    required this.items,
    this.value,
    this.hintMaxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(0),
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 1,
      ),
    );
    return DropdownButtonFormField<String>(
      isExpanded: true,
      hint: Text(
        hint,
        style: const TextStyle(fontSize: 12),
        maxLines: hintMaxLines,
        overflow: TextOverflow.ellipsis,
      ),
      // value: items[0],
      icon: const SizedBox.shrink(),
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 11),
        isDense: false,
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        errorStyle: const TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
        suffixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(end: 8),
          child: suffix is SizedBox
              ? const Icon(Icons.keyboard_arrow_down_rounded)
              : suffix,
        ),
      ),
      items: items
          .map((e) => DropdownMenuItem<String>(
              value: e,
              child: Text(
                e,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              )))
          .toList(),
      onSaved: (val) => controller.text = val!,
      validator: (val) {
        if (validator != null) return validator!(val);
        if (val == null || val.isEmpty) {
          if (hint.isNotEmpty) return "Select $hint";
          return errorText;
        }
        return null;
      },
      onChanged: (val) {
        controller.text = val!;
        if (onChanged != null) onChanged!(val);
      },
      borderRadius: BorderRadius.circular(5),
    );
  }
}
