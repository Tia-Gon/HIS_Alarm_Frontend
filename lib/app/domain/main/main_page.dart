import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_webapp/app/core/constants/app_route_constants.dart';
import 'package:simple_webapp/app/core/style/text_style.dart';
import 'package:simple_webapp/app/core/widgets/contents_frame.dart';
import 'package:simple_webapp/app/core/widgets/image_box.dart';
import 'package:simple_webapp/app/core/widgets/custom_app_bar.dart';
import 'package:simple_webapp/app/domain/list_page/controller/item_list_controller.dart';
import 'package:simple_webapp/app/domain/pis_data/controller/pis_data_controller.dart';
import 'package:simple_webapp/app/routes/app_router.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ContentsFrame(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      appBar: CustomAppBar(
        titleWidget: const ImageBox('assets/images/gs_logo.png', width: 80),
        rightWidget: Row(
          children: [],
        ),
      ),
      child: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                ref.read(PisDataController.provider).getDataList();
              },
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(500.0, 50.0)), // 버튼의 크기를 조정합니다.
                backgroundColor:
                    MaterialStateProperty.all(Colors.blue), // 버튼의 배경색을 지정합니다.
                textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 18.0)), // 버튼 텍스트의 스타일을 지정합니다.
              ),
              child: const Text('data test'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(AppRouter.provider).go(AppRouteConstants.choice);
              },
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(500.0, 50.0)), // 버튼의 크기를 조정합니다.
                backgroundColor:
                    MaterialStateProperty.all(Colors.blue), // 버튼의 배경색을 지정합니다.
                textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 18.0)), // 버튼 텍스트의 스타일을 지정합니다.
              ),
              child: const Text('Choice item'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(AppRouter.provider).go(AppRouteConstants.chart);
              },
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(500.0, 50.0)), // 버튼의 크기를 조정합니다.
                backgroundColor:
                    MaterialStateProperty.all(Colors.blue), // 버튼의 배경색을 지정합니다.
                textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 18.0)), // 버튼 텍스트의 스타일을 지정합니다.
              ),
              child: const Text('Chart'),
            ),
          ],
        ),
      ),
    );
  }
}
