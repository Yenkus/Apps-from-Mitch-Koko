import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  TodoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged,
      required this.deleteFunction});
  final String taskName;
  final bool? taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double marginSize = size.width * 0.065;

    return Padding(
      padding: EdgeInsets.only(
        top: marginSize,
        left: marginSize,
        right: marginSize,
      ),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
                backgroundColor: Colors.red,
                icon: Icons.delete,
                borderRadius: BorderRadius.circular(12),
                onPressed: deleteFunction),
          ],
        ),
        child: Container(
          // margin: const EdgeInsets.only(
          //     // left: marginSize,
          //     // right: marginSize,
          //     //top: marginSize,
          //     ),
          padding: EdgeInsets.all(marginSize),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.black,
              ),
              Text(
                taskName,
                style: TextStyle(
                    decoration: taskCompleted!
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
