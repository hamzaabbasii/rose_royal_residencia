import 'package:flutter/material.dart';

class PaymentFileView extends StatelessWidget {
  PaymentFileView({super.key});
  final List<Map<String, dynamic>> data = [
    {
      "recovery_date": "05-12-2024",
      "transaction_id": "07546",
      "amount": "28000 /Rs",
    },
    {
      "recovery_date": "05-12-2024",
      "transaction_id": "07546",
      "amount": "28000 /Rs",
    },
    {
      "recovery_date": "05-12-2024",
      "transaction_id": "07546",
      "amount": "28000 /Rs",
    },
    {
      "recovery_date": "05-12-2024",
      "transaction_id": "07546",
      "amount": "28000 /Rs",
    },
    {
      "recovery_date": "05-12-2024",
      "transaction_id": "07546",
      "amount": "28000 /Rs",
    },
    {
      "recovery_date": "05-12-2024",
      "transaction_id": "07546",
      "amount": "28000 /Rs",
    },
    {
      "recovery_date": "05-12-2024",
      "transaction_id": "07546",
      "amount": "28000 /Rs",
    },
    {
      "recovery_date": "05-12-2024",
      "transaction_id": "07546",
      "amount": "28000 /Rs",
    },
    {
      "recovery_date": "05-12-2024",
      "transaction_id": "07546",
      "amount": "28000 /Rs",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            'Down Payment',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 20),
              itemCount: data.length + 1, // +1 for the header row
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Table(
                    columnWidths: const {
                      0: FlexColumnWidth(1.5),
                      1: FlexColumnWidth(1.5),
                      2: FlexColumnWidth(1.5),
                      3: FlexColumnWidth(2),
                    },
                    border: const TableBorder.symmetric(
                        inside: BorderSide(color: Colors.black)),
                    children: const [
                      TableRow(
                        decoration: BoxDecoration(color: Color(0xFFDCF4FF)),
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Recovery Date",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Transaction ID",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Amount",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else {
                  // Create the data rows
                  final item =
                      data[index - 1]; // -1 because the first row is the header
                  return Table(
                    columnWidths: const {
                      0: FlexColumnWidth(1.5),
                      1: FlexColumnWidth(1.5),
                      2: FlexColumnWidth(1.5),
                      3: FlexColumnWidth(2),
                    },
                    border: const TableBorder.symmetric(
                        inside: BorderSide(color: Colors.black)),
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(item["recovery_date"],
                                style: TextStyle( fontSize: 12,
                                  fontFamily: 'Poppins',)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("${item["transaction_id"]}",
                                style: TextStyle( fontSize: 12,
                                  fontFamily: 'Poppins',)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("${item["amount"]}",
                                style: TextStyle( fontSize: 12,
                                  fontFamily: 'Poppins',)),
                          ),
                        ],
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
