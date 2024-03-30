import 'package:lost_found_app/constants/app_imports.dart';

class AuthInputField extends StatelessWidget {
  final Color? color;
  final bool? obscure;
  final int? maxLines;
  final bool? readOnly;
  final bool? autofocus;
  final String? initVal;
  final String? labelName;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onClick;
  final TextInputType? keyboardType;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final TextEditingController? textController;
  final void Function(String)? onFieldSubmitted;

  const AuthInputField({
    this.onFieldSubmitted,
    this.textInputAction,
    this.textController,
    this.keyboardType,
    this.suffixIcon,
    this.prefixIcon,
    this.onChanged,
    this.validator,
    this.labelName,
    this.autofocus,
    this.readOnly,
    this.maxLines,
    this.obscure,
    this.initVal,
    this.onClick,
    this.onSaved,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onFieldSubmitted,
      textInputAction: textInputAction ?? TextInputAction.next,
      textAlignVertical: TextAlignVertical.center,
      minLines: 1,
      maxLines: maxLines ?? 1,
      controller: textController,
      autofocus: autofocus ?? false,
      onTap: onClick,
      readOnly: readOnly ?? false,
      validator: validator,
      onSaved: onSaved,
      onChanged: onChanged,
      initialValue: initVal,
      keyboardType: keyboardType,
      obscureText: obscure ?? false,
      cursorColor: color ?? Colors.black,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        labelText: labelName,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: color ?? Colors.black,
            width: 3,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: color ?? Colors.black,
            width: 3,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: color ?? Colors.black,
            width: 3,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: color ?? Colors.black,
            width: 3,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: color ?? Colors.black,
            width: 3,
          ),
        ),
      ),
    );
  }
}
