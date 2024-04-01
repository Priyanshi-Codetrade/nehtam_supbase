import 'package:flutter/material.dart';

import '../../utils/constant/color_constants.dart';

class OutlinedTextFormField extends StatelessWidget {
  final bool isRequired;
  final double verticalPadding, horizontalPadding;
  final TextEditingController controller;
  final String hintText, errorText;
  final String? labelText;
  final TextStyle hintStyle, labelStyle;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final Widget prefix, suffix;
  final int? maxLength;
  final int minLines, maxLines;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final AutovalidateMode? autoValidateMode;
  final void Function(BuildContext context)? onTap;
  final String? Function(String? val)? validator;
  final String richText;
  final bool showPass;

  const OutlinedTextFormField({
    super.key,
    required this.controller,
    this.showPass = false,
    this.isRequired = true,
    this.richText = '',
    this.onChanged,
    this.onFieldSubmitted,
    this.hintText = "",
    this.autoValidateMode = AutovalidateMode.disabled,
    this.hintStyle = const TextStyle(),
    this.errorText = "Please enter a value",
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.prefix = const SizedBox(),
    this.suffix = const SizedBox(),
    this.validator,
    this.onTap,
    this.horizontalPadding = 0,
    this.verticalPadding = 8,
    this.minLines = 1,
    this.maxLines = 1,
    this.maxLength,
    this.labelText,
    this.labelStyle = const TextStyle(color: ColorConstants.primaryColor),
  });

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(0),
      borderSide: const BorderSide(
        color: Colors.grey,
      ),
    );

    return Padding(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          richText.isEmpty
              ? const SizedBox()
              : RichText(
                  text: TextSpan(
                      text: richText,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: isRequired ? ' *' : "",
                            style: TextStyle(
                              color: ColorConstants.redColor,
                            ))
                      ]),
                ),
          if (richText.isNotEmpty)
            const SizedBox(
              height: 10,
            ),
          TextFormField(
            obscureText: showPass,
            validator: (value) {
              if (isRequired) {
                if (validator != null) return validator!(value);

                if (value == null || value.isEmpty) {
                  return 'Please enter $hintText';
                }
              }
              return null;
            },
            style: const TextStyle(height: 1),
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.start,
            readOnly: onTap != null,
            onChanged: onChanged,
            controller: controller,
            onTap: onTap != null ? () => onTap!(context) : () {},
            cursorColor: ColorConstants.primaryColor,
            cursorHeight: 15,
            maxLines: maxLines,
            minLines: minLines,
            autovalidateMode: autoValidateMode,
            maxLength: maxLength,
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
            },
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              counterText: '',
              isDense: true,
              errorStyle:
                  const TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
              border: outlineInputBorder,
              enabledBorder: outlineInputBorder,
              focusedBorder: outlineInputBorder,
              hintText: hintText,
              hintStyle: hintStyle,
              labelText: labelText,
              labelStyle: labelStyle,
              prefixIcon: prefix is SizedBox
                  ? null
                  : Padding(
                      padding:
                          const EdgeInsetsDirectional.only(start: 8, end: 5),
                      child: prefix,
                    ),
              suffixIcon: suffix is SizedBox
                  ? null
                  : Padding(
                      padding: const EdgeInsetsDirectional.only(end: 8),
                      child: suffix,
                    ),
              prefixIconConstraints: const BoxConstraints(
                maxWidth: 35,
                minHeight: 40,
              ),
              suffixIconConstraints: const BoxConstraints(
                maxWidth: 35,
                minHeight: 40,
              ),
            ),
            keyboardType: textInputType,
            onFieldSubmitted: onFieldSubmitted,
            textInputAction: textInputAction,
            onSaved: isRequired ? (val) => controller.text = val! : null,
          ),
        ],
      ),
    );
  }
}
/* 
Future<T?> showDropdownDialog<T>({
  required BuildContext context,
  required Widget child,
}) async {
  return await showAlignedDialog<T?>(
    context: context,
    avoidOverflow: true,
    followerAnchor: Alignment.topCenter,
    targetAnchor: Alignment.bottomCenter,
    barrierColor: Colors.transparent,
    builder: (context) => Container(
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom + 50,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: kElevationToShadow[16],
        borderRadius: BorderRadius.circular(5),
      ),
      clipBehavior: Clip.hardEdge,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * .8,
      ),
      child: Material(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: child,
        ),
      ),
    ),
  );
} */
