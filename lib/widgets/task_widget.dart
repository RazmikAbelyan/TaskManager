import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {

  final String taskName;

  TaskWidget(this.taskName);



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            color: Colors.greenAccent,
            padding: EdgeInsets.all(5),
            child: Text(
             taskName,
              maxLines: 1,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'gnal xanut gnel hac karag panir smetangnal xanut gnel hac karag panir smetangnal xanut gnel hac karag panir smetangnal xanut gnel hac karag panir smetangnal xanut gnel hac karag panir smetan',
                style: TextStyle(),
                maxLines: 6,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: Colors.lightGreen,
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(Icons.date_range_outlined),
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2222),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
