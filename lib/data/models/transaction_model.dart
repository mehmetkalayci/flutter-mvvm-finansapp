class TransactionModel {
  final double amount;
  final bool isIncome;
  final DateTime date;

  TransactionModel({
    required this.amount,
    required this.isIncome,
    required this.date,
  });
}