import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_webapp/app/core/constants/app_route_constants.dart';
import 'package:simple_webapp/app/core/style/text_style.dart';
import 'package:simple_webapp/app/core/widgets/contents_frame.dart';
import 'package:simple_webapp/app/core/widgets/custom_radio_button.dart';
import 'package:simple_webapp/app/core/widgets/image_box.dart';
import 'package:simple_webapp/app/core/widgets/custom_app_bar.dart';
import 'package:simple_webapp/app/domain/choice_item/controller/choice_item_controller.dart';
import 'package:simple_webapp/app/routes/app_router.dart';

class ChoiceItem extends ConsumerWidget {
  const ChoiceItem({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(ChoiceItemListController.provider);

    return ContentsFrame(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        appBar: CustomAppBar(
          titleWidget: const Text(
            'Choice Item',
            style: TextStyle(
              fontSize: 20.0, // Text의 크기를 조정하세요
              fontWeight: FontWeight.bold, // Text의 굵기를 조정하세요
              color: Colors.black, // Text의 색상을 지정하세요
            ),
          ),
          rightWidget: Row(
            children: [],
          ),
        ),
        child: Column(
          children: <Widget>[
            Text(
              'Select From Page',
              style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            InkWell(
                onTap: () => ref
                    .read(AppRouter.provider)
                    .go(AppRouteConstants.item), // Container를 클릭할 때 실행될 함수 지정
                child: Container(
                  width: 700, // 박스의 너비
                  height: 80, // 박스의 높이
                  decoration: BoxDecoration(
                    color: Colors.white, // 박스의 배경색
                    borderRadius: BorderRadius.circular(10.0), // 둥근 테두리 설정
                    border: Border.all(
                      color: Colors.black, // 테두리의 색상
                      width: 2.0, // 테두리의 두께
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          controller.item.isEmpty
                              ? '선택하세요'
                              : controller.item, // 텍스트 내용
                          style: TextStyle(
                            fontSize: 18.0, // 텍스트 크기
                            fontWeight: FontWeight.bold, // 텍스트 굵기
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.arrow_downward, // 화살표 아이콘
                          size: 30.0, // 아이콘 크기
                          color: Colors.black, // 아이콘 색상
                        ),
                      ),
                    ],
                  ),
                )),
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0),
            ),
            Text(
              'Dropdown Button',
              style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            Container(
              width: 700, // DropdownButton의 너비를 조절합니다
              child: DropdownButton<String>(
                isExpanded: true,
                value: controller.dropdownValue,
                items: controller.dropdownMenuItems
                    .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(item, style: TextStyles.s15W400)))
                    .toList(),
                onChanged: controller.setDropdownValue,
              ),
            ),
            Text(
              'Radio Button',
              style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            Container(
                width: 700, // DropdownButton의 너비를 조절합니다
                child: Wrap(
                  spacing: 8,
                  children: controller.radioMenuItems
                      .map((item) => Wrap(spacing: 4, children: [
                            CustomRadioButton(
                                value: item,
                                groupValue: controller.radioValue,
                                onTap: controller.setRadioValue),
                            Text(item)
                          ]))
                      .toList(),
                )),
            Text(
              'Badge Multi Select',
              style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            Container(
                width: 700, // DropdownButton의 너비를 조절합니다
                child: Wrap(
                    spacing: 8,
                    children: controller.multiSelectMenuItems
                        .map((item) => ChoiceChip(
                            labelStyle: TextStyles.s15W400,
                            selectedColor: const Color(0xff0091F9),
                            label: Text(item),
                            selected:
                                controller.multiSelectValues.contains(item),
                            onSelected: (selected) => {
                                  controller.setMultiSelectValue(item),
                                }))
                        .toList())),
          ],
        ));
  }
}
