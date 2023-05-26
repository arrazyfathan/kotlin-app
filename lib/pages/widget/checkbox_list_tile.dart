import 'package:flutter/material.dart';


class CheckBoxListTileWidget extends StatefulWidget {
  const CheckBoxListTileWidget({Key? key}) : super(key: key);

  @override
  State<CheckBoxListTileWidget> createState() => _CheckBoxListTileWidgetState();
}

class _CheckBoxListTileWidgetState extends State<CheckBoxListTileWidget> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CheckboxListTile(
        title: Text('Checkbox List Tile', style: TextStyle(color: Colors.white),),
        value: isChecked,
        activeColor: Colors.orangeAccent,
        onChanged: (newBool) {
          setState(() {
            isChecked = newBool;
          });
        },
        checkColor: Colors.white,
        side: BorderSide(color: Colors.white),
        tileColor: Colors.black,
        subtitle: Text('This is check box tile', style: TextStyle(color: Colors.white),),
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }
}
