import 'package:flutter/material.dart';

import '../consts/consts.dart';
import 'custom_container.dart';
import 'custom_text.dart';

class CustomDropDownList extends StatefulWidget {
  final String selectedValue;
  final List<String> options;

  CustomDropDownList({
    required this.selectedValue,
    required this.options,
  });

  @override
  State<CustomDropDownList> createState() => _CustomDropDownListState();
}

class _CustomDropDownListState extends State<CustomDropDownList> {
  String selectedValue = '   select an option';
  bool isDropdownOpen = false;

  @override
  void initState() {
    super.initState();
    // Use the selectedValue provided through the constructor.
    selectedValue = widget.selectedValue;
  }

  void toggleDropdown() {
    setState(() {
      isDropdownOpen = !isDropdownOpen;
    });
  }

  void selectOption(String option) {
    setState(() {
      selectedValue = option;
      isDropdownOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Your build method remains the same.
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        GestureDetector(
          onTap: toggleDropdown,
          child: Container (
            height: screenHeight * .059,
            width: screenWidth * .847,
            decoration: ShapeDecoration(
              color:blackColor00,
              shape: RoundedRectangleBorder(
                side:const BorderSide(width: 3, color: Color(0xFFBF00C2)),
                borderRadius: BorderRadius.circular(15),
              ),
            )
            ,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * .051),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    selectedValue,
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(
                    isDropdownOpen
                        ? Icons.arrow_drop_up : Icons.arrow_drop_down,size: 30,
                    color: Colors.grey,
                  ),
/*
                  PopupMenuButton<String>(
                    icon:                   Icon(
                      isDropdownOpen
                          ? Icons.arrow_drop_up : Icons.arrow_drop_down,size: 30,
                      color: Colors.grey,
                    ),

                    constraints: BoxConstraints(
                        maxWidth: screenWidth * .833,
                        maxHeight: screenHeight * .12,
                        minWidth: screenWidth * .533,
                        minHeight: screenHeight*.03
                    ),
                    color: backGrounColor00,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: bottomBarColor00),
                        borderRadius: BorderRadius.circular(20)),
                    position: PopupMenuPosition.under,
                    onSelected: (value) {
                      // Handle the menu item selection here
                      print('Selected: $value');
                    },
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuEntry<String>>[
                        PopupMenuItem<String>(
                          padding: const EdgeInsets.only(
                            left: 0,
                          ),
                          value: 'Option 1',
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: CustomText(
                                    maxLines: 1,
                                    fontSize: 12,
                                    textColor: Colors.white,
                                    text: 'Edit',
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: double.infinity,
                                height: 1,
                                color: bottomBarColor00,
                              )
                            ],
                          ),
                        ),
                        PopupMenuItem<String>(
                          value: 'Option 3',
                          child: Column(
                            children: [
                              CustomText(
                                  maxLines: 1,
                                  fontSize: 12,
                                  textColor: Colors.white,
                                  text: 'Unpublish',
                                  fontWeight: FontWeight.w400),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ];
                    },
                  ),
*/

                ],
              ),
            ),
          ),
        ),
        if (isDropdownOpen)


          Column(
            children: widget.options.map((option) {
              return GestureDetector(
                onTap: () => selectOption(option),
                child: Container(
                  width: screenWidth * .8,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: backgroundColor00,
                    border: Border.all(
                      // style: BorderStyle.solid,
                      color: bottomBarColor00,
                      width: 1,
                    ),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    option,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            }).toList(),
          ),
      ],
    );
  }
}
