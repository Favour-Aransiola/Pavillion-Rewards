class TransactionModel {
  String name;
  String date;
  String time;
  String point;
  bool isCredit;

  TransactionModel(
      {required this.name,
      required this.date,
      required this.time,
      required this.point,
      this.isCredit = false});
}
