import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:like_button/like_button.dart';
import 'package:never_apart/theme.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/pandabar.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff311D3F),
        body: Material(
          color: Color(0xff311D3F),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 23, horizontal: 23),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.music_note_outlined,size: 30,),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                            child: Text('100')
                        ),
                        SizedBox(width: 10,),
                        Icon(Icons.favorite_border, size: 30,),
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Text('100')
                        ),
                        SizedBox(width: 10,),
                        CircleAvatar(radius: 38.5,backgroundImage: NetworkImage('https://img.flaticon.com/icons/png/512/387/387610.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF'),),
                      ],
                    ),
                    Row(

                      children: [
                        CircleAvatar(radius: 38.5,backgroundImage: NetworkImage('https://img.flaticon.com/icons/png/512/2636/2636637.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF'),),
                        SizedBox(width: 10,),
                        Icon(Icons.music_note_outlined, size: 30),
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Text('100')
                        ),
                        SizedBox(width: 10,),
                        Icon(Icons.favorite_border, size: 30),
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Text('100')
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Posts',style: Theme.of(context).textTheme.bodyText1,),
                    Text('View more',style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14)),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width/1.2,
                child: Swiper(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(10)

                      ),
                      child: Stack(
                        children: [
                          Image.network('https://img.mensxp.com/media/content/2018/May/problems-every-guy-faces-if-his-best-friend-is-a-girl1400-1525240656_1400x653.jpg', fit: BoxFit.cover,height: 200,),
                          Positioned(
                              right: 0,
                              child: LikeButton(

                              )
                          ),
                          Positioned(
                              right: 5,
                              top: 40,
                              child: Icon(Icons.mode_comment, color: Colors.grey,)
                          ),
                        ],
                      ),
                    );
                  },
                  viewportFraction: 0.8,
                  scale: 0.9,
                ),
              ),

            ],
          ),
        ),
        bottomNavigationBar: PandaBar(
          backgroundColor: secondaryColor,
          buttonColor: Colors.white,
          buttonSelectedColor: primaryColor,
          buttonData: [
            PandaBarButtonData(
                id: 'Grey',
                icon: Icons.home_rounded,
                title: 'Home'
            ),
            PandaBarButtonData(
                id: 'Blue',
                icon: Icons.list_alt,
                title: 'Bucket List'
            ),
            PandaBarButtonData(
                id: 'Red',
                icon: Icons.account_balance_wallet,
                title: 'Red'
            ),
            PandaBarButtonData(
                id: 'Yellow',
                icon: Icons.chat,
                title: 'Message'
            ),
          ],
          onChange: (index){

          },
          fabColors: [secondaryColor,secondaryColor],
        ),
      ),
    );
  }
}
