

import 'package:flutter/material.dart';
import 'package:role_maister/presentation/pages/mobile/single_chat_page_mobile.dart';
import 'package:role_maister/presentation/pages/tablet/single_chat_page_tablet.dart';
import 'package:role_maister/presentation/pages/web/single_chat_page_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SingleChatScreen extends StatelessWidget {
  final String username;
  final String uid;

  const SingleChatScreen({Key key, this.username, this.uid}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context,sizingInformation){
        if (sizingInformation.isDesktop){
          return SingleChatPageWeb(uid: uid,userName: username,);
        }
        if (sizingInformation.isTablet){
          return SingleChatPageTablet(uid: uid,userName: username,);
        }
        return SingleChatPageMobile(userName: username,uid: uid,);
      },
    );
  }
}
