import 'package:flutter/material.dart';
import 'package:gtpl_operator/const/const.dart';

class OperatorTicketView extends StatefulWidget {
  const OperatorTicketView(
      {Key? key, required this.issueTitle, required this.status})
      : super(key: key);
  final String issueTitle;
  final String status;

  @override
  State<OperatorTicketView> createState() => _OperatorTicketViewState();
}

class _OperatorTicketViewState extends State<OperatorTicketView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(
        horizontal: 23,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: greyColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.issueTitle,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  Text(
                    'Subscriber Name - Priya Sarker',
                    style: TextStyle(
                      fontSize: 14,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              Container(
                height: 30,
                padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                decoration: BoxDecoration(
                  color: widget.status == 'active' ? greenColor : redColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  widget.status,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: whiteColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: greyColor),
              ),
            ),
            child: Text(
              'View all',
              style: TextStyle(
                color: greyColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
