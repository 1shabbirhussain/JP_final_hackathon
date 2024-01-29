class User {
  String? sId;
  String? name;
  String? email;
  String? password;
  List<Tasks>? tasks;
  int? iV;

  User({this.sId, this.name, this.email, this.password, this.tasks, this.iV});

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    if (json['tasks'] != null) {
      tasks = <Tasks>[];
      json['tasks'].forEach((v) {
        tasks!.add(new Tasks.fromJson(v));
      });
    }
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    if (this.tasks != null) {
      data['tasks'] = this.tasks!.map((v) => v.toJson()).toList();
    }
    data['__v'] = this.iV;
    return data;
  }
}

class Tasks {
  String? taskname;
  String? starttime;
  String? endtime;
  String? data;
  String? board;
  String? sId;

  Tasks(
      {this.taskname,
      this.starttime,
      this.endtime,
      this.data,
      this.board,
      this.sId});

  Tasks.fromJson(Map<String, dynamic> json) {
    taskname = json['taskname'];
    starttime = json['starttime'];
    endtime = json['endtime'];
    data = json['data'];
    board = json['board'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['taskname'] = this.taskname;
    data['starttime'] = this.starttime;
    data['endtime'] = this.endtime;
    data['data'] = this.data;
    data['board'] = this.board;
    data['_id'] = this.sId;
    return data;
  }
}