import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:productive/assets/constants/colors.dart';
import 'package:productive/assets/constants/icons.dart';
import 'package:productive/features/tasks/presentation/widgets/my_video.dart';

class AllPage extends StatelessWidget {
  const AllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 20, left: 16,right: 16),
      child: Column(
        children: [
          Container(
            height: 96, 
            width: double.maxFinite,
            padding:const EdgeInsets.only(top: 8,bottom: 8,left: 10,right: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: textFieldBackgroundColor, 


            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 38, 
                      width: 38, 
                      padding:const EdgeInsets.all(9.09),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: allCreateNavigation
                      ),
                    child: SvgPicture.asset(AppIcons.createNavigation),  
                    ),
                    const Gap(10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Create navigation bar ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: white

                        ),
                        ),
                        Gap(2),
                        Text("10:00 AM - 11:00 AM",
                        style: TextStyle(
                          fontSize: 14,
                          color: allPageTextColor
                        ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 24, 
                      width: 24, 
                      padding:const EdgeInsets.only(left: 4,right: 3,top: 3,bottom: 3),
                      child: SvgPicture.asset(AppIcons.iconYes),
                    ),
                  ],
                ),
                const Gap(8),
                const Text("I will design a navigation bar for the application I am\nworking on, and choose it with suitable colors",
                style: TextStyle(
                  color: white,
                  fontSize: 14,
                ),
                ),
              ],
            ),
          ),



          Container(
            height: 79, 
            width: double.maxFinite,
            margin:const  EdgeInsets.only(top: 16),
            padding:const EdgeInsets.only(top: 8,bottom: 8,left: 10,right: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: textFieldBackgroundColor, 


            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 38, 
                      width: 38, 
                      padding:const EdgeInsets.all(9.09),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: englishStudy
                      ),
                    child: SvgPicture.asset(AppIcons.englishStudy),  
                    ),
                    const Gap(10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("English Study",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: white

                        ),
                        ),
                        Gap(2),
                        Text("12:00 PM - 01:30 PM",
                        style: TextStyle(
                          fontSize: 14,
                          color: allPageTextColor
                        ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 24, 
                      width: 24, 
                      padding:const EdgeInsets.only(left: 4,right: 3,top: 3,bottom: 3),
                      child: SvgPicture.asset(AppIcons.iconYes),
                    ),
                  ],
                ),
                const Gap(8),
                const Text("Review of the acoustics course lessons",
                style: TextStyle(
                  color: white,
                  fontSize: 14,
                ),
                ),
              ],
            ),
          ),



          
         





          Container(
            height: 79, 
            width: double.maxFinite,
            margin:const  EdgeInsets.only(top: 16),
            padding:const EdgeInsets.only(top: 8,bottom: 8,left: 10,right: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: textFieldBackgroundColor, 


            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 38, 
                      width: 38, 
                      padding:const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cleaningRoom
                      ),
                    child: SvgPicture.asset(AppIcons.claenRoom),  
                    ),
                    const Gap(10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Cleaning my room",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: white

                        ),
                        ),
                        Gap(2),
                        Text("08:00 AM - 08:30 AM",
                        style: TextStyle(
                          fontSize: 14,
                          color: allPageTextColor
                        ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 24, 
                      width: 24, 
                      padding:const EdgeInsets.only(left: 4,right: 3,top: 3,bottom: 3),
                      child: SvgPicture.asset(AppIcons.iconYes),
                    ),
                  ],
                ),
                const Gap(8),
                const Text("I will sort the books, redecorate the room",
                style: TextStyle(
                  color: white,
                  fontSize: 14,
                ),
                ),
              ],
            ),
          ),



          Container(
          height: 54,
          margin: const EdgeInsets.only(top: 16),
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
            right: 11,
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


        Container(
          margin: const EdgeInsets.only(top: 16),
          padding:
              const EdgeInsets.only(top: 8, left: 10, right: 21, bottom: 8),
          height: 111,
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



         Container(
            height: 73, 
            width: double.maxFinite,
            margin:const  EdgeInsets.only(top: 16),
            padding:const EdgeInsets.only(top: 8,bottom: 8,left: 10,right: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: textFieldBackgroundColor, 


            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 38, 
                      width: 38, 
                      padding:const EdgeInsets.all(9.09),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: englishStudy
                      ),
                    child: SvgPicture.asset(AppIcons.englishStudy),  
                    ),
                    const Gap(10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Study for the constitutional\njudiciary test",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: white

                        ),
                        ),
                        Gap(2),
                        Text("06:00 PM - 08:30 PM",
                        style: TextStyle(
                          fontSize: 14,
                          color: allPageTextColor
                        ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 24, 
                      width: 24, 
                      padding:const EdgeInsets.only(left: 4,right: 3,top: 3,bottom: 3),
                      child: SvgPicture.asset(AppIcons.iconYes),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
          // const CupertinoActivityIndicator(
          //   radius: 12,
          // )




          

























        ],
      ),
      
    );
  }
}
