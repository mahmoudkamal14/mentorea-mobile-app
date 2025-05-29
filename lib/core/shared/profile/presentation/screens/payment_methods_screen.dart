import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/core/shared/profile/presentation/widgets/payment%20methods/no_payment_method_widget.dart';
import 'package:mentorea_mobile_app/core/shared/profile/presentation/widgets/payment%20methods/payment_method_widget.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int paymentMethodCount = 1;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF103A69),
        elevation: 0,
        leading: const AppbarIcon(),
        centerTitle: true,
        title: Text(
          'Payment Methods',
          style: AppStyles.style24Bold.copyWith(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 16.w),
          child: paymentMethodCount == 0
              ? const NoPaymentMethodWidget()
              : const PaymentMethodWidget(),
        ),
      ),
    );
  }
}
