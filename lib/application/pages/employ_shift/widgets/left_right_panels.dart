import 'package:flutter/material.dart';

import '../../../core/app_theme.dart';

class LeftRightCommonView extends StatefulWidget {
 const LeftRightCommonView(
      this.child, {super.key}
      );

  final Widget child;

  @override
  State<LeftRightCommonView> createState() => _LeftRightCommonViewState();
}

class _LeftRightCommonViewState extends State<LeftRightCommonView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: AppTheme.primaryBackgroundColor,
          border: Border.all(
            color: AppTheme.primaryBackgroundColor,
            width: 3.0,
          ),
        ),
        width: MediaQuery.of(context).size.width * 0.47,
        height: MediaQuery.of(context).size.height,
        child:widget.child,
      ),
    );
  }
}
