// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';

class BookingListViewItem extends StatelessWidget {
  final String menteeName;
  final String menteeImage;
  final String sessionDate;
  final String sessionTime;
  final String sessionType;
  final String status;
  final VoidCallback onStartSession;
  final VoidCallback onMessage;
  final VoidCallback onCancel;

  const BookingListViewItem({
    super.key,
    required this.menteeName,
    required this.menteeImage,
    required this.sessionDate,
    required this.sessionTime,
    required this.sessionType,
    required this.status,
    required this.onStartSession,
    required this.onMessage,
    required this.onCancel,
  });

  Color _getStatusColor() {
    switch (status) {
      case 'Confirmed':
        return Colors.green;
      case 'Pending':
        return Colors.orange;
      case 'Cancelled':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ContainerCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10.h,
        children: [
          Image.asset(
            menteeImage,
            fit: BoxFit.fill,
            height: 200.h,
            width: double.infinity,
          ),
          Text(menteeName, style: Theme.of(context).textTheme.bodyLarge),
          Text(
            "📅  $sessionDate    |   ⏰  $sessionTime",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            "🎥 Type:  $sessionType",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
              color: _getStatusColor(),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              status,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Row(
            spacing: 20.w,
            children: [
              Expanded(
                child: AppTextButton(
                  buttonHeight: 48,
                  textButton: status == '' ? 'Pay Now' : 'Start',
                  onPressed: onStartSession,
                ),
              ),
              Expanded(
                child: AppTextButton(
                  buttonHeight: 48,
                  textButton: 'Message',
                  backgroundColor: Colors.green,
                  onPressed: onStartSession,
                ),
              ),
              Expanded(
                child: AppTextButton(
                  buttonHeight: 48,
                  textButton: 'Cancel',
                  backgroundColor: Colors.red,
                  onPressed: onStartSession,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CountdownTimerScreen extends StatefulWidget {
  const CountdownTimerScreen({super.key});

  @override
  _CountdownTimerScreenState createState() => _CountdownTimerScreenState();
}

class _CountdownTimerScreenState extends State<CountdownTimerScreen> {
  late Timer _timer;
  Duration _remainingTime = Duration.zero;

  final DateTime targetDateTime =
      DateTime(2025, 2, 10, 3, 45, 0); // ضع التاريخ المطلوب هنا

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final now = DateTime.now();
      final difference = targetDateTime.difference(now);

      if (difference.isNegative) {
        _timer.cancel();
      }

      setState(() {
        _remainingTime = difference;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'الوقت المتبقي',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            const SizedBox(height: 10),
            Text(
              '${_remainingTime.inHours.remainder(24)} ساعة, '
              '${_remainingTime.inMinutes.remainder(60)} دقيقة, ${_remainingTime.inSeconds.remainder(60)} ثانية',
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
