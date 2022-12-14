import 'package:auto_spare_part/utils/app_colors.dart';
import 'package:auto_spare_part/widgets/font_style_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

InputDecoration getInputDecoration({required String label}) {
  return InputDecoration(
    labelText: label,
    labelStyle: fontPoppinsW400(
      appcolor: AppColors.white.withOpacity(0.5),
    ).copyWith(fontSize: 16.sp),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1.w, color: Colors.white),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1.w, color: Colors.white),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1.w, color: Colors.white),
    ),
  );
}

InputDecoration getInputDecorationByPassword(
    {required String label, required VoidCallback onTap, required bool isPas}) {
  return InputDecoration(
    suffixIcon: InkWell(
      onTap: onTap,
      child: Icon(isPas ? Icons.visibility_off : Icons.visibility,
          color: AppColors.white),
    ),
    labelText: label,
    labelStyle:
        fontPoppinsW400(appcolor: AppColors.white.withOpacity(0.5),).copyWith(fontSize: 16.sp),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4.r)),
      borderSide: BorderSide(
        width: 1.w,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1.w, color: Colors.white),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1.w, color: Colors.white),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1.w, color: Colors.white),
    ),
  );
}
