import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(String value)? onChanged;
  final void Function(String value)? onSubmitted;

  const SearchTextField({
    this.controller,
    this.onChanged,
    this.onSubmitted,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: "키워드 입력...",
            hintStyle: TextStyle(fontSize: 16.sp),
            border: InputBorder.none,
            isDense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 4.w)
          ),
          onChanged: onChanged,
          onSubmitted: onSubmitted,
        ),
        Container(
          height: 5,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.tertiary,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
