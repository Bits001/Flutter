import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/hotel_screen.dart';
import 'package:ticket_app/ticket_view.dart';
import 'package:ticket_app/ticket_view2.dart';
import 'package:ticket_app/utils/app_info_list.dart';
import 'package:ticket_app/utils/app_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          // ignore: avoid_unnecessary_containers

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headlineStyles3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headlineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage("assets/images/logo.jpg"))),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205)),
                      Text(
                        "Search",
                        style: Styles.headlineStyles4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: Styles.headlineStyles2,
                    ),
                    InkWell(
                        onTap: () {
                          print("You are Tapped");
                        },
                        child: Text(
                          "View all",
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor),
                        ))
                  ],
                )
              ],
            ),
          ),
        const Gap(15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(children: [
            TicketView(),
            TicketView2(),
          ],),
        ),
        const Gap(15),

Container(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child:   Row(
  
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
                    children: [
  
                      Text(  "Hotels", style: Styles.headlineStyles2,
  
                        ),
  
                      InkWell(  onTap: () {  print("You are Tapped");     
  
                       },
  
                          child: Text(  "View all",  style: Styles.textStyle .copyWith(color: Styles.primaryColor),
  
                          ))
  
                    ],
  
                  ),
),
  const Gap(15),

  SingleChildScrollView(

    scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
    child: Row(
      children: hotelList.map((singleperson) => HotelScreen(hotel: singleperson)).toList()

      ),
    ),
        ],
      ),
    );
  }
}
