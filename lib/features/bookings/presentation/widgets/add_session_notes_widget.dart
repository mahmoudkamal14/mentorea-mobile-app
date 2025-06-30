import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/features/bookings/presentation/logic/booking_session_cubit.dart';

class AddSessionNotesWidget extends StatelessWidget {
  const AddSessionNotesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cubit = BookingSessionCubit.get(context);
    return Form(
      key: cubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Content Notes', style: Theme.of(context).textTheme.bodyMedium),
          verticalSpace(10),
          AppTextFormField(
            maxLines: 7,
            controller: cubit.notesController,
            textInputType: TextInputType.text,
            hintText: 'Add Your Notes for content',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Notes for content is required';
              }
            },
          ),
        ],
      ),
    );
  }
}
