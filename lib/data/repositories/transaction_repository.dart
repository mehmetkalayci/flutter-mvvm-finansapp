import 'package:dio/dio.dart';

import '../models/transaction_model.dart';
import '../../core/network/dio_client.dart';

class TransactionRepository {
  final Dio _dio = DioClient.instance;

  Future<List<TransactionModel>> login() async {
    final response = await _dio.get('/transactions/last10');
    // Yanıtın örnek bir şekilde parse edilmesi (gerçek bir API'de bu kısım değişecektir)
    return (response.data as List).map((e) => TransactionModel(
      amount: e['amount'],
      isIncome: e['isIncome'],
      date: DateTime.parse(e['date']),
    )).toList();
  }

  Future<void> addTransaction(TransactionModel transaction) async {
    await _dio.post('/transactions', data: {
      'amount': transaction.amount,
      'isIncome': transaction.isIncome,
      'date': transaction.date.toIso8601String(),
    });
  }
}