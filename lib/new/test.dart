


////////////////////////////////////////// 1. List of Objects //////////////////////////////////////////
class TaskModel {
  String title;
  String subtitle;
  bool isDone;

  TaskModel(
      {required this.title,
      required this.subtitle,
      this.isDone = false,
      required String subTitle});
}
