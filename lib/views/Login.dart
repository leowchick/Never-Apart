import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:never_apart/theme.dart';
import 'package:never_apart/theme.dart';
import 'package:never_apart/views/Home.dart';
import 'package:never_apart/views/animate.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: primaryBg,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(8, 30, 8, 8),
          child: Column(
            children: [
              Text('Never Apart',style: Theme.of(context).textTheme.headline1,),
              Animate(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    padding: EdgeInsets.symmetric(horizontal: 35, vertical:5),
                    decoration: BoxDecoration(
                      color: Color(0xffC4C4C4),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Text(
                      'Okay',
                      style: GoogleFonts.oleoScript(
                        color: Colors.black,
                        fontSize: 21,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 10),
                    padding: EdgeInsets.symmetric(horizontal: 35, vertical:5),
                    decoration: BoxDecoration(
                      color: Color(0xffC4C4C4),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Text(
                      'Okay too',
                      style: GoogleFonts.oleoScript(
                        color: Colors.black,
                        fontSize: 21,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Text(
                'I love',
                style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 32),
              ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                    },
                    child: Container(
                      child:ClipPath(
                        child: Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),bottomLeft: Radius.circular(20.0)),
                          ),
                          child: Center(
                            child: Text(
                              "Saju",
                              style:Theme.of(context).textTheme.headline1!.copyWith(color: Colors.black,fontSize: 30),
                            ),
                          ),
                        ),
                        clipper: MyClipper(),
                      )
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                    },
                    child: Container(
                          child:ClipPath(
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0),topRight: Radius.circular(20.0)),
                              ),
                              child: Center(
                                child: Text(
                                  "Maggi",
                                  style:Theme.of(context).textTheme.headline1!.copyWith(color: Colors.black,fontSize: 30),
                                ),
                              ),
                            ),
                            clipper: MyClipper2(),
                          )
                      ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path=Path();
    path.lineTo(0.0,size.height);
    path.lineTo(size.width/1.2,size.height);
    path.lineTo(size.width,0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

class MyClipper2 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path=Path();
    path.lineTo(25.0,0.0);
    path.lineTo(0.0,size.height);
    path.lineTo(size.width,size.height);
    path.lineTo(size.width,0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

}