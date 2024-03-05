library appsizeconstants;

import 'package:demo_app/core/enums/deviceScreenType.dart';
import 'package:flutter/material.dart';

double mediaWidth = 0;
double mediaHeight = 0;
double mediaFontsize = 0;
double multiplicationFactor = 0;
double multiplicationHeightFactor = 0;
double multiplicationWidthFactor = 0;
double multiplicationFontFactor = 0;
EdgeInsets iconPadding = const EdgeInsets.all(0);
DeviceScreenType deviceScreenType = DeviceScreenType.Mobile;
double blockSizeHeight = 0;
double blockSizeWidth = 0;
double screenWidth = 0;
double screenHeight = 0;
double fontSize = 0;

/// Set Device variables as per device type
setDeviceConfiguration(BuildContext context) {
  mediaWidth = (MediaQuery.of(context).size).width;
  mediaHeight = (MediaQuery.of(context).size).height;
  mediaFontsize = (MediaQuery.of(context).textScaleFactor); //1,1.15,1.3
  blockSizeHeight = mediaHeight / 100;
  blockSizeWidth = mediaWidth / 100;

  double deviceWidth = MediaQuery.of(context).size.width;
  iconPadding = const EdgeInsets.all(0);
  if (deviceWidth > 950) // Desktop
  {
    deviceScreenType = DeviceScreenType.Desktop;
    multiplicationFontFactor = 0.069;
    multiplicationWidthFactor = 0.12;
    multiplicationHeightFactor = 0.12;
  } else if (deviceWidth > 600) // Tablet
  {
    deviceScreenType = DeviceScreenType.Tablet;
    multiplicationFontFactor = 0.13;
    multiplicationWidthFactor = 0.2;
    multiplicationHeightFactor = 0.110;
  } else // Mobile
  {
    deviceScreenType = DeviceScreenType.Mobile;
    multiplicationFontFactor = 0.13;
    multiplicationWidthFactor = 0.24;
    multiplicationHeightFactor = 0.13;
    //setMobileSizeConstants(deviceScreenType);
  }

  screenWidth = blockSizeWidth * multiplicationWidthFactor;
  screenHeight = blockSizeHeight * multiplicationHeightFactor;
  fontSize = blockSizeHeight * (multiplicationFontFactor / mediaFontsize);
}
