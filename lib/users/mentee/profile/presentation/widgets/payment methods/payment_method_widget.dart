import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/widgets/payment%20methods/payment_method_item_widget.dart';

class PaymentMethodWidget extends StatelessWidget {
  const PaymentMethodWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaymentMethodItemWidget(
          title: 'Visa',
          image: 'assets/icons/icons8-visa.svg',
          onTap: () {},
        ),
        PaymentMethodItemWidget(
          title: 'Master Card',
          image: 'assets/icons/master_card.svg',
          onTap: () {},
        ),
        PaymentMethodItemWidget(
          title: 'American Express',
          image: 'assets/icons/am_ex.svg',
          onTap: () {},
        ),
        PaymentMethodItemWidget(
          title: 'PayPal',
          image: 'assets/icons/paypal.svg',
          onTap: () {},
        ),
      ],
    );
  }
}
