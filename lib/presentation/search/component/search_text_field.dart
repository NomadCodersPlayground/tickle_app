import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextField extends StatefulWidget {
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
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    _controller.addListener(_callback);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_callback);
    _controller.dispose();
    super.dispose();
  }

  void _callback() {
    if (widget.onChanged != null) {
      widget.onChanged!(_controller.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: "키워드 입력...",
            hintStyle: TextStyle(fontSize: 14.sp),
            border: InputBorder.none,
            isDense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 4.w),
            suffix: GestureDetector(
              onTap: _controller.clear,
              child: Icon(
                Icons.clear,
                size: 14.w,
              ),
            ),
          ),
          onSubmitted: widget.onSubmitted,
          autofocus: true,
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
