import 'package:flutter/material.dart';
import 'package:whatsapp/utils/coloors.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBgColor;
  final Color? langHightlightColor;
  final Color? authAppbarTextColor;
  final Color? photoIconBgColor;
  final Color? photoIconColor;
  final Color? profilePageBg;
  final Color? chatTextFieldBg;
  final Color? chatPageBgColor;
  final Color? chatPageDoodleColor;
  final Color? senderChatCardBg;
  final Color? receiverChatCardBg;
  final Color? yellowCardBgColor;
  final Color? yellowCardTextColor;
  final Color? backgroundWebColor;
  final Color? appBarWebColor;
  final Color? chatWebColor;
  final Color? iconWebColor;
  final Color? textMessageWebColor;
  final Color? topBorderWebColor;

  const CustomThemeExtension({
    this.backgroundWebColor,
    this.appBarWebColor,
    this.chatWebColor,
    this.iconWebColor,
    this.textMessageWebColor,
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langBgColor,
    this.langHightlightColor,
    this.authAppbarTextColor,
    this.photoIconBgColor,
    this.photoIconColor,
    this.profilePageBg,
    this.chatTextFieldBg,
    this.chatPageBgColor,
    this.chatPageDoodleColor,
    this.senderChatCardBg,
    this.receiverChatCardBg,
    this.yellowCardBgColor,
    this.yellowCardTextColor,
    this.topBorderWebColor,
  });

  static const lightMode = CustomThemeExtension(
    circleImageColor: Color(0xFF25D366),
    greyColor: Coloors.greyLight,
    blueColor: Coloors.blueLight,
    langBgColor: Color(0xFFF7F8FA),
    langHightlightColor: Color(0xFFE8E8ED),
    authAppbarTextColor: Coloors.greenLight,
    photoIconBgColor: Color(0xFFF1F1F1),
    photoIconColor: Color(0xFF9DAAB3),
    profilePageBg: Color(0xFFF7F8FA),
    chatTextFieldBg: Colors.white,
    chatPageBgColor: Color(0xFFEFE7DE),
    chatPageDoodleColor: Colors.white70,
    senderChatCardBg: Color(0xFFE7FFDB),
    receiverChatCardBg: Color(0xFFFFFFFF),
    yellowCardBgColor: Color(0xFFFFEECC),
    yellowCardTextColor: Color(0xFF13191C),
    backgroundWebColor: Color(0xFFe4e2dd),
    appBarWebColor: Color(0xFFf1f2f5),
    chatWebColor: Color(0xFFFFFFFF),
    iconWebColor: Color(0xFFdfe5e7),
    textMessageWebColor: Color(0xFFFFFFFF),
    topBorderWebColor: Color(0xFF04a784),
  );

  static const darkMode = CustomThemeExtension(
    circleImageColor: Coloors.greenDark,
    greyColor: Coloors.greyDark,
    blueColor: Coloors.blueDark,
    langBgColor: Color(0xFF182229),
    langHightlightColor: Color(0xFF09141A),
    authAppbarTextColor: Color(0xFFE9EDEF),
    photoIconBgColor: Color(0xFF283339),
    photoIconColor: Color(0xFF61717B),
    profilePageBg: Color(0xFF0B141A),
    chatTextFieldBg: Coloors.greyBackground,
    chatPageBgColor: Color(0xFF081419),
    chatPageDoodleColor: Color(0xFF172428),
    senderChatCardBg: Color(0xFF005C4B),
    receiverChatCardBg: Coloors.greyBackground,
    yellowCardBgColor: Color(0xFF222E35),
    yellowCardTextColor: Color(0xFFFFD279),
    backgroundWebColor: Color(0xFF0c1316),
    appBarWebColor: Color(0xFF202c33),
    chatWebColor: Color(0xFF111b21),
    iconWebColor: Color(0xFF0c1316),
    textMessageWebColor: Color(0xFF2a3942),
    topBorderWebColor: Color(0xFF0c1316),
  );

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langBgColor,
    Color? langHightlightColor,
    Color? authAppbarTextColor,
    Color? photoIconBgColor,
    Color? photoIconColor,
    Color? profilePageBg,
    Color? chatTextFieldBg,
    Color? chatPageBgColor,
    Color? chatPageDoodleColor,
    Color? senderChatCardBg,
    Color? receiverChatCardBg,
    Color? yellowCardBgColor,
    Color? yellowCardTextColor,
    Color? backgroundWebColor,
    Color? appBarWebColor,
    Color? chatWebColor,
    Color? iconWebColor,
    Color? textMessageWebColor,
    Color? topBorderWebColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBgColor: langBgColor ?? this.langBgColor,
      langHightlightColor: langHightlightColor ?? this.langHightlightColor,
      authAppbarTextColor: authAppbarTextColor ?? this.authAppbarTextColor,
      photoIconBgColor: photoIconBgColor ?? this.photoIconBgColor,
      photoIconColor: photoIconColor ?? this.photoIconColor,
      profilePageBg: profilePageBg ?? this.profilePageBg,
      chatTextFieldBg: chatTextFieldBg ?? this.chatTextFieldBg,
      chatPageBgColor: chatPageBgColor ?? this.chatPageBgColor,
      chatPageDoodleColor: chatPageDoodleColor ?? this.chatPageDoodleColor,
      senderChatCardBg: senderChatCardBg ?? this.senderChatCardBg,
      receiverChatCardBg: receiverChatCardBg ?? this.receiverChatCardBg,
      yellowCardBgColor: yellowCardBgColor ?? this.yellowCardBgColor,
      yellowCardTextColor: yellowCardTextColor ?? this.yellowCardTextColor,
      backgroundWebColor: backgroundWebColor ?? this.backgroundWebColor,
      appBarWebColor: appBarWebColor ?? this.appBarWebColor,
      chatWebColor: chatWebColor ?? this.chatWebColor,
      iconWebColor: iconWebColor ?? this.iconWebColor,
      textMessageWebColor: textMessageWebColor ?? this.textMessageWebColor,
      topBorderWebColor: topBorderWebColor ?? this.topBorderWebColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langBgColor: Color.lerp(langBgColor, other.langBgColor, t),
      langHightlightColor:
          Color.lerp(langHightlightColor, other.langHightlightColor, t),
      authAppbarTextColor:
          Color.lerp(authAppbarTextColor, other.authAppbarTextColor, t),
      photoIconBgColor: Color.lerp(photoIconBgColor, other.photoIconBgColor, t),
      photoIconColor: Color.lerp(photoIconColor, other.photoIconColor, t),
      profilePageBg: Color.lerp(profilePageBg, other.profilePageBg, t),
      chatTextFieldBg: Color.lerp(chatTextFieldBg, other.chatTextFieldBg, t),
      chatPageBgColor: Color.lerp(chatPageBgColor, other.chatPageBgColor, t),
      senderChatCardBg: Color.lerp(senderChatCardBg, other.senderChatCardBg, t),
      yellowCardBgColor:
          Color.lerp(yellowCardBgColor, other.yellowCardBgColor, t),
      yellowCardTextColor:
          Color.lerp(yellowCardTextColor, other.yellowCardTextColor, t),
      receiverChatCardBg:
          Color.lerp(receiverChatCardBg, other.receiverChatCardBg, t),
      chatPageDoodleColor:
          Color.lerp(chatPageDoodleColor, other.chatPageDoodleColor, t),
      backgroundWebColor:
          Color.lerp(backgroundWebColor, other.backgroundWebColor, t),
      appBarWebColor: Color.lerp(appBarWebColor, other.appBarWebColor, t),
      chatWebColor: Color.lerp(chatWebColor, other.chatWebColor, t),
      iconWebColor: Color.lerp(iconWebColor, other.iconWebColor, t),
      textMessageWebColor:
          Color.lerp(textMessageWebColor, other.textMessageWebColor, t),
      topBorderWebColor:
          Color.lerp(topBorderWebColor, other.topBorderWebColor, t),
    );
  }
}
