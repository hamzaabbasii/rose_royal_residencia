import 'package:flutter/material.dart';

class DetailsFileView extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {"name": "OS-NR-G07865", "reg": "BWOM867687", "booking_date": "09-06-2023", "total_installment": 48},
    {"name": "OS-NR-G07865", "reg": "BWOM867687", "booking_date": "09-06-2023", "total_installment": 48},
    {"name": "OS-NR-G07865", "reg": "BWOM867687", "booking_date": "09-06-2023", "total_installment": 48},
    {"name": "OS-NR-G07865", "reg": "BWOM867687", "booking_date": "09-06-2023", "total_installment": 48},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: data.length * 2, // *2 because each item will have a header+row and a divider
        itemBuilder: (context, index) {
          if (index.isEven) {
            final item = data[index ~/ 2]; // ~/2 because we're doubling the index count
            return Column(
              children: [
                Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.black),
                  // ),
                  child: Table(
                    columnWidths: const {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(1.5),
                      2: FlexColumnWidth(1.5),
                      3: FlexColumnWidth(2),
                    },
                    children: [
                      const TableRow(
                        decoration: BoxDecoration(color: Color(0xFFDCF4FF)),
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Form Number",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, fontFamily: 'Poppins',),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Reg#",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, fontFamily: 'Poppins',),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Booking date",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, fontFamily: 'Poppins',),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Total installment",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, fontFamily: 'Poppins',),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(item["name"], style: const TextStyle(fontSize: 12, fontFamily: 'Poppins',)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(item["reg"], style: const TextStyle(fontSize: 12, fontFamily: 'Poppins',)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(item["booking_date"], style: const TextStyle(fontSize: 12, fontFamily: 'Poppins',)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("${item["total_installment"]}", style: const TextStyle(fontSize: 12, fontFamily: 'Poppins',)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return const Divider(height: 20, color: Colors.grey);
          }
        },
      ),
    );
  }
}
