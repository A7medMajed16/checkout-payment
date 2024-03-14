import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/colors.data.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/receipt_section/checked_circle.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/receipt_section/dashed_line.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/receipt_section/receipt_ticket_body.dart';

class ReceiptTicket extends StatelessWidget {
  const ReceiptTicket({
    super.key,
    required this.hight,
  });

  final double hight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ReceiptTicketBody(
          hight: hight,
        ),
        Positioned(
            left: 20 + 10,
            right: 20 + 10,
            bottom: hight * 0.2 + 20,
            child: const DashedLine()),
        Positioned(
          left: -20,
          bottom: hight * 0.2,
          child: CircleAvatar(
            backgroundColor: ColorsData.backgroundColor,
          ),
        ),
        Positioned(
          right: -20,
          bottom: hight * 0.2,
          child: CircleAvatar(
            backgroundColor: ColorsData.backgroundColor,
          ),
        ),
        const Positioned(
          left: 0,
          right: 0,
          top: -50,
          child: CheckedCircle(),
        ),
      ],
    );
  }
}
