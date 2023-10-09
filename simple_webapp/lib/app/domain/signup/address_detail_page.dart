import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_webapp/app/core/constants/app_route_constants.dart';
import 'package:simple_webapp/app/core/data/models/location_model.dart';
import 'package:simple_webapp/app/core/style/decoration.dart';
import 'package:simple_webapp/app/core/style/text_style.dart';
import 'package:simple_webapp/app/core/widgets/click.dart';
import 'package:simple_webapp/app/core/widgets/contents_frame.dart';
import 'package:simple_webapp/app/core/widgets/custom_app_bar.dart';
import 'package:simple_webapp/app/core/widgets/custom_radio_button.dart';
import 'package:simple_webapp/app/core/widgets/custom_textfield.dart';
import 'package:simple_webapp/app/core/widgets/image_box.dart';
import 'package:simple_webapp/app/core/widgets/section_card.dart';
import 'package:simple_webapp/app/domain/signup/controller/signup_controller.dart';
import 'package:simple_webapp/app/routes/app_router.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

import '../../core/widgets/flex_button.dart';

class AddressDetailPage extends ConsumerWidget {
  const AddressDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signupController = ref.watch(SignupController.provider);
    // ContentsFrame 은 화면 전체를 감싸는 커스텀 레이아웃 위젯이다
    return ContentsFrame(
      backGroundColor: const Color(0xffE2E2E2),

      // CustomAppBar 는 AppBar 를 커스텀하기 위한 위젯이다
      appBar: CustomAppBar(
        titleWidget: const Text('도로명 주소 검색'),
        rightWidget: const ImageBox('assets/images/close.png'),
        rightWidgetOnTap: signupController.cancelAddress,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        // SingleChildScrollView 는 스크롤이 가능한 위젯이다
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAddressSearchInput(ref),
              ...signupController.searchedAddress
                  .map((item) => _buildAddressItem(ref, item)),
              FlexButton(
                title: '적용하기',
                textStyle: TextStyles.s17W700,
                bgColor: const Color(0xff0091F9),
                borderColor: const Color(0xff0091F9),
                onPressed: signupController.setAddress,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildAddressSearchInput(WidgetRef ref) {
  final signupController = ref.watch(SignupController.provider);
  return TextFormField(
      initialValue: signupController.addressSearchValue,
      onChanged: (value) => {signupController.addressSearchValue = value},
      decoration: InputDecoration(
          suffixIcon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => signupController
                  .getAddress(signupController.addressSearchValue))));
}

Widget _buildAddressItem(WidgetRef ref, LocationModel item) {
  final signupController = ref.watch(SignupController.provider);
  return Click(
    onTap: () => signupController.changeAddress(item),
    child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        alignment: Alignment.centerLeft,
        height: 60,
        decoration: Decorations.bottomLineDecoration(
          bgColor: (signupController.addressValue == item.road_address_name) //
              ? const Color(0xff0091F9).withOpacity(0.2)
              : Colors.white,
          borderColor: const Color(0xffD9D9D9),
        ),
        child: Row(
          children: [
            Text(
                (item.road_address_name != '')
                    ? item.road_address_name
                    : '도로명주소 없음',
                style: TextStyles.s20W400),
            const Spacer(),
            Text(item.place_name!, style: TextStyles.s20W400)
          ],
        )),
  );
}
