import '../models/self_report_item_model.dart';
import 'package:destressify/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelfReportItemWidget extends StatelessWidget {
  SelfReportItemWidget(this.selfReportItemModelObj, {
    Key? key,
  }) : super(
    key: key,
  );

  final SelfReportItemModel selfReportItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 5,
        top: 10,
        right: 5,
        bottom: 10,
      ),
      decoration: AppDecoration.outline3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              left: 7,
            ),
            child: Text(
              selfReportItemModelObj.question,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.bodySmall,
            ),
          ),

          Padding(
            padding: getPadding(
              top: 9,
              right: 9,
            ),
            child: Row(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgEye,
                  height: getSize(
                    7,
                  ),
                  width: getSize(
                    7,
                  ),
                  margin: getMargin(
                    top: 5,
                    bottom: 5,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 5,
                    top: 4,
                    bottom: 4,
                  ),
                  child: Text(
                    "lbl_never".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgEye,
                  height: getSize(
                    7,
                  ),
                  width: getSize(
                    7,
                  ),
                  margin: getMargin(
                    left: 11,
                    top: 5,
                    bottom: 5,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 5,
                    bottom: 3,
                  ),
                  child: Text(
                    "lbl_rarely".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgEye,
                  height: getSize(
                    7,
                  ),
                  width: getSize(
                    7,
                  ),
                  margin: getMargin(
                    left: 9,
                    top: 5,
                    bottom: 5,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 9,
                    top: 5,
                    bottom: 3,
                  ),
                  child: Text(
                    "lbl_occasionally".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgEye,
                  height: getSize(
                    7,
                  ),
                  width: getSize(
                    7,
                  ),
                  margin: getMargin(
                    left: 11,
                    top: 4,
                    bottom: 6,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    40,
                  ),
                  margin: getMargin(
                    left: 7,
                  ),
                  child: Text(
                    "msg_a_lot_of_the_time".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgEye,
                  height: getSize(
                    7,
                  ),
                  width: getSize(
                    7,
                  ),
                  margin: getMargin(
                    left: 8,
                    top: 7,
                    bottom: 4,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    35,
                  ),
                  margin: getMargin(
                    left: 7,
                  ),
                  child: Text(
                    "msg_nearly_all_the_time".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}