import 'package:flutter/material.dart';
import 'package:galaxy_car/test/slider_test.dart';

import '../consts/consts.dart';

class TestScreen extends StatefulWidget {
  TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final GlobalKey _menuKey = GlobalKey();

  bool isDroped = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width /* * .946*/;
    double screenHeight = MediaQuery.of(context).size.height /* * 1.15*/;

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          width: 200,
          height: 600,
          child: Column(
            children: [
              GestureDetector(
                key: _menuKey,
                onTap: () {
                  setState(() {
                    isDroped = !isDroped;
                  });

                  final RenderBox button =
                      _menuKey.currentContext!.findRenderObject() as RenderBox;
                  final RenderBox overlay = Overlay.of(context)!
                      .context
                      .findRenderObject() as RenderBox;

                  showMenu(
                    constraints: BoxConstraints(
                        maxWidth: screenWidth * .333,
                        maxHeight: screenHeight * .097),
                    color: backgroundColor00,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 2, color: bottomBarColor00),
                        borderRadius: BorderRadius.circular(20)),
                    context: context,
                    position: RelativeRect.fromRect(
                      Rect.fromPoints(
                        button.localToGlobal(Offset.zero, ancestor: overlay),
                        button.localToGlobal(
                            button.size.bottomCenter(Offset.zero),
                            ancestor: overlay),
                      ),
                      Offset.zero & overlay.size,
                    ),
                    items: [
                      PopupMenuItem<String>(
                        textStyle: TextStyle(color: Colors.white),
                        padding: EdgeInsets.only(right: 0, left: 0),
                        value: 'Edit',
                        child: Column(
                          children: [
                            Text('Edit'),
                            Container(
                              width: 270,
                              height: 2,
                              color: bottomBarColor00,
                            )
                          ],
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Delete',
                        child: Text('Delete'),
                      ),
                    ],
                  ).then<void>((String? selected) {
                    if (selected != null) {
                      // Handle the selected option here
                      print('Selected: $selected');
                      // You can perform your actions here based on the selected option.
                    }
                  });
                },
                child: Icon(
                  Icons.more_vert,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              /* if(isDroped)
                Center()*/

              SizedBox(
                height: 50,
              ),
              PopupMenuButton<String>(
                constraints: BoxConstraints(maxWidth: screenWidth*.333, maxHeight:screenHeight*.12),

                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: bottomBarColor00),
                    borderRadius: BorderRadius.circular(20)),
                position: PopupMenuPosition.under,
                onSelected: (value) {
                  // Handle the menu item selection here
                  print('Selected: $value');
                },
                itemBuilder: (BuildContext context) {
                  return <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                      padding: EdgeInsets.only(right: 0, left: 0,),

                      value: 'Option 1',
                      child: Column(
                        children: [
                          Text('Option 1'),
                          SizedBox(height: 10,),
                          Container(
                            width:double.infinity,
                            height: 2,
                            color: bottomBarColor00,
                          )
                        ],
                      ),
                    ),
                    PopupMenuItem<String>(
                      value: 'Option 3',
                      child: Column(
                        children: [
                          Text('Option 3'),
                          SizedBox(height: 10,),

                        ],
                      ),
                    ),
                  ];
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
