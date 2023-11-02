import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_webapp/app/core/constants/app_route_constants.dart';
import 'package:simple_webapp/app/core/style/decoration.dart';
import 'package:simple_webapp/app/core/style/text_style.dart';
import 'package:simple_webapp/app/core/widgets/click.dart';
import 'package:simple_webapp/app/core/widgets/custom_textfield.dart';
import 'package:simple_webapp/app/domain/signup/controller/signup_controller.dart';
import 'package:simple_webapp/app/routes/app_router.dart';

class SignupAddressInput extends ConsumerWidget {
  SignupAddressInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signupController = ref.watch(SignupController.provider);
    return Click(
        onTap: () =>
            ref.read(AppRouter.provider).push(AppRouteConstants.addressDetail),
        child: Container(
          height: 52,
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(14, 17, 14, 17),
          decoration: Decorations.boxDecoration(
              bgColor: Colors.white,
              borderColor: const Color(0xffDADADA),
              radius: 8),
          child: Row(children: [
            Text(signupController.newUser.address,
                style: TextStyles.s16W400.copyWith(height: 1)),
            const Spacer(),
            const Icon(Icons.arrow_drop_down)
          ]),
        ));
  }
}
