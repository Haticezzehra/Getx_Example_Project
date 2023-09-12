class Record {
  Record({required this.dateTime, required this.weight, this.photo, this.note});
  final int weight;
  final DateTime dateTime;
  final String? note;
  final String? photo;
}
