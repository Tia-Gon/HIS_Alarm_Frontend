import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_webapp/app/core/constants/app_route_constants.dart';
import 'package:simple_webapp/app/core/style/text_style.dart';
import 'package:simple_webapp/app/core/widgets/contents_frame.dart';
import 'package:simple_webapp/app/core/widgets/custom_radio_button.dart';
import 'package:simple_webapp/app/core/widgets/image_box.dart';
import 'package:simple_webapp/app/core/widgets/custom_app_bar.dart';
import 'package:simple_webapp/app/domain/choice_item/controller/choice_item_controller.dart';
import 'package:simple_webapp/app/domain/pis_data/area_and_line_chart.dart';
import 'package:simple_webapp/app/domain/pis_data/controller/pis_data_controller.dart';
import 'package:simple_webapp/app/routes/app_router.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('His Data Chart'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Chart'),
                AreaAndLineChart(PisDataController.provider
                    .read(context)
                    .flSpots), // AreaAndLineChart 클래스를 컨테이너 안에 배치
              ],
            ),
          ),
        ),
      ),
    );
  }
}
