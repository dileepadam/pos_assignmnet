import 'package:flutter/material.dart';

import '../../../core/app_theme.dart';

class LeftBottomSheet extends StatefulWidget {
  const LeftBottomSheet(
      {super.key, required this.buttonText, required this.onButtonPress});

  final String buttonText;
  final VoidCallback onButtonPress;

  @override
  State<LeftBottomSheet> createState() => _LeftBottomSheetState();
}

class _LeftBottomSheetState extends State<LeftBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
          alignment: Alignment.bottomLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                height: 2.0,
              ),
              const SizedBox(
                height: 4,
              ),
              ElevatedButton(
                onPressed: widget.onButtonPress,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      AppTheme.primaryBackgroundColor),
                ),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppTheme.primaryBackgroundColor,
                    border: Border.all(
                      color: Colors.white,
                      width: 1.5,
                    ),
                  ),
                  child: Text(widget.buttonText),
                ),
              ),
            ],
          )),
    );
  }
}

class DateRangePickerHeading extends StatefulWidget {
  const DateRangePickerHeading(
      {super.key, required this.dateRange, this.onTap});

  final String dateRange;
  final GestureTapCallback? onTap;

  @override
  State<DateRangePickerHeading> createState() => _DateRangePickerHeadingState();
}

class _DateRangePickerHeadingState extends State<DateRangePickerHeading> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: AppTheme.primaryBackgroundColor,
          border: Border.all(
            color: Colors.white,
            width: 1.5,
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            widget.dateRange,
            style:
                const TextStyle(fontSize: 20, color: AppTheme.appBarTextColor),
          ),
        ),
      ),
    );
  }
}
