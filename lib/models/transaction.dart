class Transaction {
  final int id;
  final String to;
  final String amount;
  final String date;
  final String description;

  Transaction(
    this.id,
    this.to,
    this.amount,
    this.date,
    this.description,
  );
}

final List<Transaction> transactions = [
  Transaction(1, 'shopee', '350.000', '12 Desember 2012 12.12', 'SSD'),
  Transaction(2, 'Tokopedia', '200.000', '16 Desember 2022 10.02', 'adaptor laptop'),
  Transaction(3, 'Traveloka', '2.000.000', '25 Desember 2023 07.23', 'Hotel'),
  Transaction(4, 'blibli', '200.000.000', '29 februari 2024 00.00', 'mobil'),
  Transaction(5, 'traveloka', '6.800.000', '10 juli 2022 10.11', 'Pesawat'),
  Transaction(6, 'BCA', '69.000.000', '5 januari 2025 05.54', 'transfer'),
  Transaction(7, 'Pintu', '300.000.000', '31 januari 2025 10.58', 'transfer'),
  Transaction(8, 'BRI', '1', '1 januari 2011 11.11', 'transfer'),
];