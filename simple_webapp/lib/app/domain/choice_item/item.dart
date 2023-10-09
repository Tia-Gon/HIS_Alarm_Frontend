import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_webapp/app/core/constants/app_route_constants.dart';
import 'package:simple_webapp/app/core/style/text_style.dart';
import 'package:simple_webapp/app/core/widgets/contents_frame.dart';
import 'package:simple_webapp/app/core/widgets/image_box.dart';
import 'package:simple_webapp/app/core/widgets/custom_app_bar.dart';
import 'package:simple_webapp/app/domain/choice_item/controller/choice_item_controller.dart';
import 'package:simple_webapp/app/routes/app_router.dart';

class Item extends ConsumerWidget {
  const Item({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(ChoiceItemListController.provider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Item'),
      ),
      body: ListView(
        children: [
          // 리스트 아이템들을 추가
          for (var item in controller.items)
            ListTile(
              title: Text(item),
              tileColor: controller.item == item ? Colors.blueGrey : null,
              onTap: () => controller.itemcolor(item),
              // 각 아이템을 표시하는 로직을 여기에 추가할 수 있습니다.
            ),
          SizedBox(height: 20), // 아이템들 사이에 간격 추가
          Container(
            child: ElevatedButton(
              onPressed: () {
                ref.read(AppRouter.provider).go(AppRouteConstants.choice);
              },
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(500.0, 50.0)), // 버튼의 크기를 조정합니다.
                backgroundColor:
                    MaterialStateProperty.all(Colors.black), // 버튼의 배경색을 지정합니다.
                textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 18.0)), // 버튼 텍스트의 스타일을 지정합니다.
              ),
              child: const Text('적용하기'),
            ),
          ),
        ],
      ),
    );
  }
}
