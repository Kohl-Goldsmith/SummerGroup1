import '../models/iwatch_item_model.dart';
import 'package:destressify/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IwatchItemWidget extends StatelessWidget {
  IwatchItemWidget(
    this.iwatchItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  IwatchItemModel iwatchItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 14,
        top: 20,
        right: 14,
        bottom: 20,
      ),
      decoration: AppDecoration.outline5.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ //output
          CustomImageView(
            // svgPath: ImageConstant.imgReply,
            height: getVerticalSize(
              35,
            ),
            width: getHorizontalSize(
              24,
            ),
            margin: getMargin(
              bottom: 10,
            ),
          ),
          Padding( //metrics
            padding: getPadding(
              left: 30,
              top: 8,
              bottom: 13,
              right: 30,
            ),
            child: Text(
              iwatchItemModelObj.typeTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextThemeHelper.bodyLargePoppinsBluegray9000116,
            ),
          ),
          Spacer(),
          Container(
            height: getVerticalSize(
              30,
            ),
            width: getHorizontalSize(
              59,
            ),
            margin: getMargin(
              top: 6,
              bottom: 9,

            ),
            child: Stack( //value
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: getVerticalSize(
                      22,
                    ),
                    width: getHorizontalSize(
                      59,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    iwatchItemModelObj.valueTxt,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge!.copyWith(
                      letterSpacing: getHorizontalSize(
                        1.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(  //unitxt
            padding: getPadding(
              left: 30,
              top: 11,
              right: 30,
              bottom: 13,
            ),
            child: Text(
              iwatchItemModelObj.unitTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleSmall!.copyWith(
                letterSpacing: getHorizontalSize(
                  1.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
