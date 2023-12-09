import 'package:flutter/material.dart';

import '../../custom_widgets/custom_text.dart';
import 'bottom_sheet.dart';
class GridViewOfCarDetails extends StatelessWidget {
  const GridViewOfCarDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return           Expanded(
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (builder) {
                return BottomSheett();

              });
        },
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: 12,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  childAspectRatio: 3 / 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffEEEEEE),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -20,
                          left: 10,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/car-png-39071 1.png',
                                width: 100,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              CustomText(
                                fontSize: 20,
                                text: 'Ford Reckons',
                                fontWeight: FontWeight.w700,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '100 kml',
                                    style: TextStyle(),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'white',
                                    style: TextStyle(),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '58,900 \$ ',
                                    style: TextStyle(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    )
    ;
  }
}




