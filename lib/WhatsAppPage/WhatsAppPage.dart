import 'package:flutter/material.dart';
import 'package:whats_app/CustomIcon/CustomIcon.dart';
import '../GrayMessageBubble/GrayMessageBubble.dart';
import '../GreenMessageBubble/GreenMessageBubble.dart';
class WhatsAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF168C4B),
        leading:
            Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),

        title: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              width: 37,
              height: 37,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFD9D9D9)),
                borderRadius: BorderRadius.circular(18.5),
                color: Color(0XFF168C4B),
              ),
              child:  CustomIcon(imageName: 'assets/images/profile_image.jpg'),
            ),
            Text(
              'John Safwat',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ],
        ),

        actions: [
          CustomIcon(imageName: 'assets/images/Phone.png', marginRight: 16,),

          CustomIcon(imageName: 'assets/images/video.png', marginRight: 16,),

          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 33, left: 15, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                GreenMessageBubble(
                  text: 'Hello !',
                  height: 51,
                  width: 79,
                  padding_Left: 15,
                  padding_Bottom: 16,
                  padding_Top: 16,
                  padding_Right: 16,
                ),
                GrayMessageBubble(
                  width: 79,
                  paddingLeft: 15,
                  paddingBottom: 17,
                  text: 'Hello !',
                ),
                GreenMessageBubble(
                  text:
                      'Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!',
                  height: 132,
                  padding_Bottom: 10,
                  padding_Left: 15,
                  padding_Right: 16,
                  padding_Top: 8,
                ),
                Container(
                  width: 268,
                  decoration: BoxDecoration(
                    color: Color(0XFF168C4B),
                    borderRadius: BorderRadiusGeometry.only(
                      bottomRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          'what a Great Content Tp learn Flutter',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset('assets/images/route_image.jpg'),
                      ],
                    ),
                  ),
                ),
                GrayMessageBubble(
                  text: 'what a Great Content Tp learn Flutter',
                  width: 267,
                  paddingLeft: 16,
                  paddingBottom: 16,
                ),
                SizedBox(height: 50,),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(39)),
                          border: BoxBorder.all(
                            color: Color(0XFF168C4B),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 14,
                          ),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomIcon(imageName: 'assets/images/Camera.png'),
                              Expanded(child: Text(
                                "Type a Message ...",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),),
                              CustomIcon(imageName: 'assets/images/Send.png'),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Container(

                      width: 48,
                      height: 48,
                      margin: EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(39),
                        color: Color(0XFF168C4B),
                      ),
                      child: Center(child: CustomIcon(imageName: 'assets/images/Mic.png')),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
