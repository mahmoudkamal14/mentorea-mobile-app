import 'package:flutter/material.dart';
import '../models/onboard_model.dart';
import 'onboard_item_widget.dart';

class PageViewBuilder extends StatefulWidget {
  PageViewBuilder({super.key});

  @override
  State<PageViewBuilder> createState() => _PageViewBuilderState();
}

class _PageViewBuilderState extends State<PageViewBuilder> {

  PageController nextPage = PageController();

  int index =0 ;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        onPageChanged: (v){
          setState(() {
            index= v;
          });
        },
        controller: nextPage,
        itemCount:onboardItemsData.length,
        itemBuilder:(context,i)=> OnboardItemWidget(index: index, nextPage: nextPage,onboardItemModel:onboardItemsData[i]));
  }
}
