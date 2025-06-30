import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/features/chat/data/models/message_request_body.dart';
import 'package:mentorea_mobile_app/features/chat/presentation/logic/chat_cubit.dart';
import 'package:mentorea_mobile_app/features/chat/presentation/logic/chat_state.dart';
import 'package:mentorea_mobile_app/features/explore/data/models/mentor_response_model.dart';

class SendMessageWidget extends StatelessWidget {
  const SendMessageWidget({
    super.key,
    required this.mentor,
  });

  final MentorResponseModel mentor;

  @override
  Widget build(BuildContext context) {
    TextEditingController messageController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BlocListener<ChatCubit, ChatState>(
      listener: (context, state) {
        if (state is ConnectionChatSuccessState) {
          messageController.clear();
        }
      },
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
        child: Form(
          key: formKey,
          child: Row(
            children: [
              Expanded(
                child: AppTextFormField(
                  textInputType: TextInputType.text,
                  hintText: 'Message',
                  controller: messageController,
                  suffixIcon: const Icon(Icons.attach_file_outlined),
                  validator: (p0) {
                    if (p0 == null || p0.isEmpty) {
                      return null;
                    }
                    return null;
                  },
                ),
              ),
              horizontalSpace(12),
              CircleAvatar(
                radius: 26.r,
                backgroundColor: Colors.teal,
                child: GestureDetector(
                  onTap: () {
                    ChatCubit.get(context).sendMessage(
                      MessageRequestBody(
                        type: 'text',
                        receiverId: mentor.id!,
                        content: messageController.text,
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.send_rounded,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
