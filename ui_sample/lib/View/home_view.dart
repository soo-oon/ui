import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_sample/View/components/body.dart';
import 'package:ui_sample/size_config.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/Settings.svg",
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () {},
        ),
        actions: [buildAddButton(context)],
      ),
      body: Body(),
    );
  }

  Padding buildAddButton(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: getProportionateScreenWidth(32),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
