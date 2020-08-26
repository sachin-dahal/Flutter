import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function checkBoxCallBack;
  final Function removeItem;

  TaskTile({this.title, this.isChecked, this.checkBoxCallBack, this.removeItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: isChecked ? removeItem : null,
      child: ListTile(
        leading: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
      onChanged: checkBoxCallBack,
        ),
      ),
    );
  }
}

//(bool checkedBoxState) {
//setState(() {
//isChecked = checkedBoxState;
//});
//}
