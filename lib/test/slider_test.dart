import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:galaxy_car/consts/consts.dart';

class CustomPopupMenu extends StatelessWidget {
  final GlobalKey _menuKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      key: _menuKey,
      onTap: () {
        final RenderBox button =
            _menuKey.currentContext!.findRenderObject() as RenderBox;
        final RenderBox overlay =
            Overlay.of(context)!.context.findRenderObject() as RenderBox;

        showMenu(
          constraints: BoxConstraints(
              maxWidth: screenWidth * .333, maxHeight: screenHeight * .097),
          color: backgroundColor00,
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 2, color: bottomBarColor00),
              borderRadius: BorderRadius.circular(20)),
          context: context,
          position: RelativeRect.fromDirectional(
              textDirection: TextDirection.rtl,
              start: 10,
              top: 20,
              end: 150,
              bottom: 20),
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
    );
  }
}
