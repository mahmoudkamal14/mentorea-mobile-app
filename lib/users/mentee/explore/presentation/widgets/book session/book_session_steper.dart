import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/book%20session/book_session_review_step.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/book%20session/book_session_schedule_step.dart';

import 'book_session_payment_step.dart';

class BookSessionSteper extends StatefulWidget {
  const BookSessionSteper({super.key});

  @override
  State<BookSessionSteper> createState() => _BookSessionSteperState();
}

class _BookSessionSteperState extends State<BookSessionSteper> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Stepper(
        type: StepperType.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        elevation: 0,
        connectorColor: const WidgetStatePropertyAll(Color(0xFF103A69)),
        currentStep: currentStep,
        controlsBuilder: (context, details) {
          return Padding(
            padding: EdgeInsets.only(top: 48.h),
            child: AppTextButton(
              textButton: textButtonSteper(currentStep: currentStep),
              buttonHeight: 50.h,
              buttonWidth: 120.w,
              borderRadius: 10.r,
              onPressed: () {
                if (currentStep < 2) {
                  setState(() {
                    currentStep++;
                  });
                } else {}
              },
            ),
          );
        },
        onStepTapped: (value) {
          setState(() {
            currentStep = value;
          });
        },
        steps: [
          Step(
            title: const SizedBox.shrink(),
            content: const BookSessionScheduleStep(),
            label: Text(
              'Schedule',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Step(
            title: const SizedBox.shrink(),
            content: const BookSessionReviewStep(),
            label: Text(
              'Review',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Step(
            title: const SizedBox.shrink(),
            content: const BookSessionPaymentStep(),
            label: Text(
              'Payment',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

  String textButtonSteper({required int currentStep}) {
    if (currentStep == 0) {
      return 'Book a session';
    } else if (currentStep == 1) {
      return 'Confirm booking';
    } else {
      return 'Pay now';
    }
  }
}
