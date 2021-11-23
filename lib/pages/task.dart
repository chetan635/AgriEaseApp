class Task {
  final double taskVal;
  final String taskDetails;

//  final String colorVal;
  Task(this.taskDetails,this.taskVal);

  Task.fromMap(Map<String, dynamic> map)
      : assert(map['Spend_type'] != null),
        assert(map['Spend'] != null),
//        assert(map['colorVal'] != null),
        taskDetails = map['Spend_type'],
        taskVal = map['Spend'];


  @override
  String toString() => "Record<$taskVal:$taskDetails>";
}