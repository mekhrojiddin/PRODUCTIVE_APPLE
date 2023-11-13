import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:productive/assets/constants/colors.dart';
import 'package:productive/assets/constants/icons.dart';

class UpcomingPage extends StatelessWidget {
  const UpcomingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 54,
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
            right: 8,
            left: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: textFieldBackgroundColor,
          ),
          child: Row(
            children: [
              Container(
                height: 38,
                width: 38,
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: gymColor,
                ),
                child: SvgPicture.asset(AppIcons.gym),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gym time',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Text(
                    '03:00 PM - 04:30 PM',
                    style: TextStyle(fontSize: 14, color: upcomingTextColor),
                  )
                ],
              ),
              const Spacer(),
              Container(
                height: 18,
                width: 17,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    width: 2,
                    color: activeColor,
                  ),
                ),
              ),
            ],
          ),
        ),
//----------------------------------------------------------------------------------//
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding:
              const EdgeInsets.only(top: 8, left: 10, right: 18, bottom: 8),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: textFieldBackgroundColor,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 38,
                    width: 38,
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: upcomingMeetColor,
                    ),
                    child: SvgPicture.asset(AppIcons.meet),
                  ),
                  const Gap(10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Meet the cdevs team",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: white
                      ),
                      ),
                      Text("05:00 PM - 05:30 PM",
                      style: TextStyle(
                        color: upcomingTextColor,
                        fontSize: 14,
                      ),
                      ),
                    ],

                  ),
                  const Spacer(),
                  Container(
                    width: 17, 
                    height: 18 ,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: activeColor,
                        width: 2
                      ),
                      borderRadius: BorderRadius.circular(6)
                    ),

                  )
                ],
              ),
              const Gap(8),
              const Text("We will discuss the new Tasks of the calendar pages",
              style: TextStyle(
                fontSize: 14,
                color: white
              ),
              ),
              const Gap(8),
              Container(
                height: 24,
                width: 121,
                padding: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  
                ),
                child: Row(
                  children: [
                    Container(
                      height: 24, 
                      width: 24, 
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: upcomingLinkBolt
                      ),
                      child: SvgPicture.asset(AppIcons.link),
                    ),
                    Container(
                      height: 24, 
                      width: 89,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: upComingLink,

                      ),
                      alignment: Alignment.center,
                      child:const Text("Link to meeting",
                      style: TextStyle(
                        color: white,
                        fontSize: 12
                      ),
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 73,
            width: double.maxFinite,
            padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: textFieldBackgroundColor,
              border: Border.all(width: 1, color: upComingBorderSolid),
            ),
            child: Row(
              children: [
                Container(
                  height: 38,
                  width: 38,
                  padding: EdgeInsets.all(9.09),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: studyIconColor,
                  ),
                  child: SvgPicture.asset(AppIcons.studyIcon),
                ),
                const Gap(10),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Study for the constitutional\njudiciary test",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: white,
                      ),
                    ),
                    // const Gap(2),
                    Text(
                      "06:00 PM - 08:30 PM",
                      style: TextStyle(fontSize: 14, color: upcomingTextColor),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Container(
                      height: 18,
                      width: 17,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: activeColor),
                          borderRadius: BorderRadius.circular(6)),
                      padding: const EdgeInsets.only(
                          right: 4, top: 3, bottom: 3, left: 3),
                      margin: const EdgeInsets.only(right: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

//_________________________________________________________________________________

//--------------------------------------------------------------------//
      ],
    );
  }
}
