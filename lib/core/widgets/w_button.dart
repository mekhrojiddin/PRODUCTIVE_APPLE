import 'package:flutter/cupertino.dart';

import '../../assets/constants/colors.dart';

class WButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final bool isDisabled;
  final bool isLoading;
  final TextStyle? style;
  final Color? buttonColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? width;
  final double? height;
  final Widget? child;
  const WButton({
    required this.onTap,
    this.isDisabled = false,
    this.isLoading = false,
    this.text = '',
    this.style,
    this.buttonColor,
    this.margin,
    this.padding,
    this.height,
    this.width,
    this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isDisabled && !isLoading) {
          onTap()
          ;
        }
      },
      child: Container(
        height: height,
        width: width ?? double.maxFinite,
        alignment: Alignment.center,
        margin: margin ?? EdgeInsets.zero,
        padding: padding ?? const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isDisabled ? disabledButtonColor : buttonColor ?? wButtonColor,
        ),
        child: Builder(
          builder: (_) {
            if (isLoading) {
              return const CupertinoActivityIndicator();
            }
            if (child == null) {
              return Text(
                text,
                style: style ??
                    TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: isDisabled ? white.withOpacity(.3) : white,
                    ),
              );
            } else {
              return child!;
            }
          },
        ),
      ),
    );
  }
}
