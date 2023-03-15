import 'package:flutter/material.dart';
import 'package:ui_flutter_whatsapp/constants.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    this.leading,
    required this.title,
    this.trailingWidget,
    required this.subTitle,
  });

  final Widget? leading;
  final String title;
  final Widget? trailingWidget;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          leading != null
              ? Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: leading,
                )
              : const SizedBox.shrink(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: kTitleTextStyle.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    trailingWidget != null
                        ? Container(
                            constraints: const BoxConstraints(maxHeight: 0.0),
                            child: trailingWidget,
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
                const SizedBox(height: 5.0),
                SizedBox(
                  width:
                      leading == null ? screenWidth - 120 : screenWidth - 120,
                  child: Text(
                    subTitle,
                    style: kSubTitleTextStyle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
