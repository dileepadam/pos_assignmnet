import 'package:flutter/material.dart';
import 'package:pos_assigmnet/application/core/app_theme.dart';
import 'package:pos_assigmnet/application/pages/employ_shift/widgets/left_panel_widgtes.dart';
import 'package:pos_assigmnet/application/pages/employ_shift/widgets/left_right_panels.dart';

class EmployeeShiftWrapper extends StatefulWidget {
  const EmployeeShiftWrapper({super.key});

  @override
  State<EmployeeShiftWrapper> createState() => _EmployeeShiftWrapperState();
}

class _EmployeeShiftWrapperState extends State<EmployeeShiftWrapper> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.appbarColor,
        iconTheme: const IconThemeData(color: AppTheme.appBarIconColor),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(2.0),
            child: Container(
              color: Colors.white,
              height: 2.0,
            )),
        title: const Text(
          "Time Card Review",
          style: TextStyle(
              color: AppTheme.appBarTextColor,
              fontSize: AppTheme.appBarFontSize),
        ),
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: AppTheme.primaryBackGroundColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LeftRightCommonView(Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    DateRangePickerHeading(
                      dateRange: 'Date Range',
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: AppTheme.primaryBackgroundColor,
                            border: Border.all(
                              color: Colors.white,
                              width: 1.5,
                            ),
                          ),
                          child: Column(
                            children: [Text("shjsjahd"), Text('jandsd')],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: AppTheme.primaryBackgroundColor,
                            border: Border.all(
                              color: Colors.white,
                              width: 1.5,
                            ),
                          ),
                          child: Column(
                            children: [Text("shjsjahd"), Text('jandsd')],
                          ),
                        ),
                      ],
                    ),
                    LeftBottomSheet(
                      buttonText: 'Add Shift',
                      onButtonPress: () {},
                    )
                  ],
                ),
              )),
              LeftRightCommonView(Column()),
            ],
          ),
        ),
      ),
    ));
  }
}
