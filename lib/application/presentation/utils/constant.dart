import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

const errorMessage = 'something went wrong, please try again';

const gilroyBold = 'Gilroy-Bold';
const gilroyMedium = 'Gilroy-Medium';
const gilroyRegular = 'Gilroy-Regular';
const gilroySemiBold = 'Gilroy-SemiBold';

const loginPageImage = 'assets/images/login_page.png';
const imageDiffectedPhone = 'assets/images/diffectImage.png';
const iconHome = 'assets/images/carbon_home.png';
const iconSettings = 'assets/images/solar_settings-linear.png';
const iconPeople = 'assets/images/octicon_people-16.png';
const iconMoney = 'assets/images/ph_money-fill.png';
const iconPickHand = 'assets/images/pick2 2.png';
const iconNottoCoin = 'assets/images/noto_coin.png';
const iconCancel = 'assets/images/cancel.png';
const iconShedule = 'assets/images/calender_shedule.png';
const iconRedo = 'assets/images/redo.png';
const iconCompleteCheck = 'assets/images/check_completed.png';
const phoneImage = 'assets/images/Rectangle 1785.png';
const phoneImageNetwork =
    'https://rukminim2.flixcart.com/image/416/416/kg8avm80/mobile/y/7/n/apple-iphone-12-dummyapplefsn-original-imafwg8dpyjvgg3j.jpeg?q=70&crop=false';
const urlMapTest =
    'https://www.google.com/maps/place/J.+P.+Nagar,+Bengaluru,+Karnataka+560078/@12.8897786,77.5368745,13z/data=!3m1!4b1!4m6!3m5!1s0x3bae150d7349a72b:0xf3d03ea1e1dd3d46!8m2!3d12.9063433!4d77.5856825!16zL20vMGg1bjJ4?entry=ttu';

double sHeight = 900;
double sWidth = 400;

const kEmpty = SizedBox();

const kHeight5 = SizedBox(height: 5);
const kHeight10 = SizedBox(height: 10);
const kHeight20 = SizedBox(height: 20);
const kHeight30 = SizedBox(height: 30);
const kHeight40 = SizedBox(height: 40);
const kHeight50 = SizedBox(height: 50);

const kWidth5 = SizedBox(width: 5);
const kWidth10 = SizedBox(width: 10);
const kWidth20 = SizedBox(width: 20);
const kWidth30 = SizedBox(width: 30);
const kWidth50 = SizedBox(width: 50);

final kRadius5 = BorderRadius.circular(5);
final kRadius10 = BorderRadius.circular(10);
final kRadius15 = BorderRadius.circular(15);
final kRadius50 = BorderRadius.circular(50);

final textHeadBold1 = TextStyle(
  color: kBlack,
  fontFamily: gilroyBold,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.040 : sWidth * 0.035,
);

final textHeadBoldBig = TextStyle(
  color: kBlack,
  fontFamily: gilroyBold,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.056 : sWidth * 0.045,
);

final textHeadBoldBig2 = TextStyle(
  color: kBlack,
  fontFamily: gilroyBold,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.07 : sWidth * 0.055,
);

final textHeadMedium1 = TextStyle(
  color: kBlack,
  fontFamily: gilroyMedium,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.040 : sWidth * 0.035,
);

final textHeadMediumBig = TextStyle(
  color: kBlack,
  fontFamily: gilroyMedium,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.056 : sWidth * 0.045,
);

final textHeadRegular1 = TextStyle(
  color: kBlack,
  fontFamily: gilroyRegular,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.040 : sWidth * 0.035,
);

final textHeadRegularBig = TextStyle(
  color: kBlack,
  fontFamily: gilroyRegular,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.056 : sWidth * 0.045,
);

final textHeadSemiBold1 = TextStyle(
  color: kBlack,
  fontFamily: gilroySemiBold,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.040 : sWidth * 0.035,
);

void sizeFinder(BuildContext context) {
  final size = MediaQuery.of(context).size;
  print(size.height);
  print(size.width);
  sHeight = size.height > 900 ? 900 : size.height;
  sWidth = size.width > 450 ? 450 : size.width;
}

var testQuestionMap = [
  {
    "sectionType": "yes/no",
    "sectionCriteria": "all",
    "sectionHeading": "Device",
    "data": [
      {
        "description": "Are you able to make and receive calls?",
      },
      {
        "description": "Is your device's touch screen working properly?",
      },
      {
        "description": "Is your phone's screen original?",
      },
      {
        "description": "Is your device under manufacturer warranty?",
      },
      {
        "description": "Do you have GST val id bill with the same IMEI?",
      },
    ],
  },
  {
    "sectionType": "image",
    "sectionCriteria": "none",
    "sectionHeading": "Display",
    "data": [
      {
        "description": "Broken/Scratch on device screen",
        "img": "imageDiffectedPhone",
      },
      {
        "description": "Dead Spot/Visible lines on screen",
        "img": "imageDiffectedPhone",
      },
      {
        "description": "Scratch/Dent on device body",
        "img": "imageDiffectedPhone",
      },
      {
        "description": "Device panel missing/broken",
        "img": "imageDiffectedPhone",
      },
    ],
  },
  {
    "sectionType": "image",
    "sectionCriteria": "some",
    "sectionHeading": "Functionality",
    "data": [
      {
        "description": "Front Camera not working",
        "img": "imageDiffectedPhone",
      },
      {
        "description": "Back Camera not working",
        "img": "imageDiffectedPhone",
      },
      {
        "description": "Volume Button not working",
        "img": "imageDiffectedPhone",
      },
      {
        "description": "Finger Touch not working",
        "img": "imageDiffectedPhone",
      },
    ],
  },
  {
    "sectionType": "image",
    "sectionCriteria": "none",
    "sectionHeading": "Accessories",
    "data": [
      {
        "description": "Box",
        "img": "imageDiffectedPhone",
      },
      {
        "description": "Bill",
        "img": "imageDiffectedPhone",
      },
      {
        "description": "Charger",
        "img": "imageDiffectedPhone",
      },
      {
        "description": "Headset",
        "img": "imageDiffectedPhone",
      },
    ],
  },
  {
    "sectionType": "grid",
    "sectionCriteria": "one",
    "sectionHeading": "Device Age",
    "data": [
      {
        "description": "0-3 Months",
      },
      {
        "description": "3-6 Months",
      },
      {
        "description": "6-11 Months",
      },
      {
        "description": "Above 11 Months",
      },
    ],
  },
];
