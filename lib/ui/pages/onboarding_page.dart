/* Author       : Johan
   Created Date : 2022-09-24
*/

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Grow Your\nFinancial Today',
    'Build From\nZero to Freedom',
    'Start Together',
  ];
  List<String> subtitles = [
    'Our sistem is helping you\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightBackgroundColor,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //---------------On Boarding Displayed Image--------------------------
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/img_onboarding1.png',
                  height: 131,
                ),
                Image.asset(
                  'assets/img_onboarding2.png',
                  height: 131,
                ),
                Image.asset(
                  'assets/img_onboarding3.png',
                  height: 131,
                ),
              ],
              options: CarouselOptions(
                  height: 131,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
              carouselController: carouselController,
            ),
            //---------------On Boarding Displayed Image--------------------------
            const SizedBox(
              height: 80,
            ),
            //---------------White Boxed -----------------------------------------
            Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 24,
                ),
                //---------------    White Boxed------------------------------
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                //---------------    White Boxed------------------------------
                child: Column(
                  children: [
                    //---------------   Titles inside White Boxed------------------------------
                    Text(
                      titles[currentIndex],
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    //---------------   Titles inside White Boxed------------------------------
                    const SizedBox(
                      height: 26,
                    ),
                    //---------------   Sub Titles inside White Boxed------------------------------
                    Text(
                      subtitles[currentIndex],
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    //---------------   Sub Titles inside White Boxed------------------------------
                    SizedBox(
                      height: currentIndex == 2 ? 38 : 50,
                    ),
                    //---------------Last Pages = 2    -------------------------------
                    currentIndex == 2
                        ? Column(
                            children: [
                              //---------------   Get Started------------------------------
                              SizedBox(
                                  width: double.infinity,
                                  height: 34,
                                  child: TextButton(
                                      onPressed: () {
                                        // carouselController.nextPage();
                                      },
                                      style: TextButton.styleFrom(
                                          backgroundColor: purpleColor,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(56))),
                                      child: Text('Get Started',
                                          style: whiteTextStyle.copyWith(
                                            fontSize: 16,
                                            fontWeight: semiBold,
                                          )))),
                              //---------------   Get Started------------------------------
                              const SizedBox(
                                height: 20,
                              ),
                              //---------------   Sign In------------------------------
                              SizedBox(
                                  width: double.infinity,
                                  height: 24,
                                  child: TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        //backgroundColor: greyColor,
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Text('Sign In',
                                          style: whiteTextStyle.copyWith(
                                              fontSize: 16,
                                              color: greyColor)))),
                              //---------------   Sign In------------------------------
                            ],
                          )
                        :
                        //---------------Last Pages = 2    -------------------------------
                        //
                        //--------------- Pages 1 and 2    -------------------------------
                        Row(
                            children: [
                              //---------------   Small Circle Steps------------------------------
                              Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == 0
                                      ? blueColor
                                      : lightBackgroundColor,
                                ),
                              ),
                              Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == 1
                                      ? blueColor
                                      : lightBackgroundColor,
                                ),
                              ),
                              Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == 2
                                      ? blueColor
                                      : lightBackgroundColor,
                                ),
                              ),
                              //---------------   Small Circle Steps------------------------------
                              const Spacer(),
                              //---------------  Button Continue-------------------------------
                              SizedBox(
                                  width: 150,
                                  height: 50,
                                  child: TextButton(
                                      onPressed: () {
                                        carouselController.nextPage();
                                      },
                                      style: TextButton.styleFrom(
                                          backgroundColor: purpleColor,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(56))),
                                      child: Text('Continue',
                                          style: whiteTextStyle.copyWith(
                                            fontSize: 16,
                                            fontWeight: semiBold,
                                          ))))
                              //---------------  Button Continue-------------------------------
                            ],
                          )
                    //--------------- Pages 1 and 2    -------------------------------
                  ],
                ))
            //---------------White Boxed -----------------------------------------
          ],
        )));
  }
}
