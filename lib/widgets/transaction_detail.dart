import 'package:tst/models/transaction.dart';
import 'package:tst/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class DetailTransactionScreen extends StatelessWidget {
  const DetailTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Padding(padding: const EdgeInsets.only(top: 50, bottom: 10),
      child: Row(children: [
        IconButton(onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(Icons.arrow_back_ios),
        ),
        const Text(
          "Riwayat Transaksi",
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF3D538F),
            fontWeight: FontWeight.bold,
          ),
        )
      ],),
      ),
      Expanded(child: 
      ListView.builder(itemBuilder: (context, index){
        return TransactionItem(transaction: transactions [index],);
      },
      itemCount: transactions.length,
      ),
      ),
      ],
    );
  }
}