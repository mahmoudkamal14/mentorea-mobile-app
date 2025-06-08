import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/shared/authentication/presentation/logic/register/register_cubit.dart';

class PriceSessionWidget extends StatefulWidget {
  const PriceSessionWidget({super.key});

  @override
  State<PriceSessionWidget> createState() => _PriceSessionWidgetState();
}

class _PriceSessionWidgetState extends State<PriceSessionWidget> {
  int? selectedSessionPrice;

  @override
  Widget build(BuildContext context) {
    var cubit = RegisterCubit.get(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Session Price',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Slider(
          value: (selectedSessionPrice ?? 100).toDouble(),
          min: 50,
          max: 500,
          divisions: 15,
          label: '$selectedSessionPrice EGP',
          onChanged: (value) {
            setState(() {
              selectedSessionPrice = value.toInt();
              cubit.priceOfSession = selectedSessionPrice;
            });
          },
        ),
        Text(
          '${selectedSessionPrice ?? 100} EGP',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
