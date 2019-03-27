import 'package:almaty_metro/info_page/info_page.dart';
import 'package:flutter/material.dart';

class MetroBar extends StatelessWidget {
  final String title;

  const MetroBar({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56.0,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontFamily: 'Futura',
                fontWeight: FontWeight.w500,
              ),
            ),
            IconButton(
              icon: Icon(Icons.info, color: Colors.white),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => InformationSheetWidget(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
