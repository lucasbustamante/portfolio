import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/appClass.dart';
import '../../controller/generalController.dart';
import '../../model/projectModel.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';
import '../../teste.dart';

class ProjectsWeb extends StatefulWidget {
  const ProjectsWeb({Key? key}) : super(key: key);

  @override
  State<ProjectsWeb> createState() => _ProjectsWebState();
}

class _ProjectsWebState extends State<ProjectsWeb> {

  int dataPage = 1;

  @override
  Widget build(BuildContext context) {
    List<ProjectsModel> projectsList = [
      ProjectsModel(
          desig: Strings.project1,
          points: Column(
            children: [
              Container(
                child: Text(Strings.info1,
                    style: TextStyle(
                        color: textLight,
                        letterSpacing: 1,
                        height: 1.5,
                        fontSize: 14,
                        fontFamily: 'sfmono')),
                height: 20,
                width: 600,
              ),
              Image.asset('assets/images/project1.png',
                height: AppClass().getMqWidth(context) * 0.35,),
            ],
          )),
      ProjectsModel(
          desig: Strings.project2,
          points: Column(
            children: [
              Container(
                child: Text(Strings.info2,
                    style: TextStyle(
                        color: textLight,
                        letterSpacing: 1,
                        height: 1.5,
                        fontSize: 14,
                        fontFamily: 'sfmono')),
                height: 20,
                width: 600,
              ),
              Image.asset('assets/images/project2.png',
                height: AppClass().getMqWidth(context) * 0.35,),
            ],
          )),
      ProjectsModel(
          desig: Strings.project3,
          points: Column(
            children: [
              Container(
                child: Text(Strings.info3,
                    style: TextStyle(
                        color: textLight,
                        letterSpacing: 1,
                        height: 1.5,
                        fontSize: 14,
                        fontFamily: 'sfmono')),
                height: 20,
                width: 600,
              ),
              Image.asset('assets/images/project3.png',
                height: AppClass().getMqWidth(context) * 0.35,),
            ],
          )),
      ProjectsModel(
          desig: Strings.project4,
          points: Column(
            children: [
              Container(
                child: Text(Strings.info4,
                  style: TextStyle(
                      color: textLight,
                      letterSpacing: 1,
                      height: 1.5,
                      fontSize: 14,
                      fontFamily: 'sfmono'),),
                height: 20,
                width: 600,

              ),
              Image.asset('assets/images/project4.png',
                height: AppClass().getMqWidth(context) * 0.35,),

            ],
          )),
    ];
    return Container(
      height: 800,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 0.5,
                margin: EdgeInsets.only(right: 15),
                width: AppClass().getMqWidth(context) * 0.02,
                color: textLight,
              ),
              Text(Strings.project,
                style: GoogleFonts.robotoSlab(
                    color: primaryColor,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    fontSize: 27),
              ),
              Container(
                height: 0.5,
                margin: EdgeInsets.only(left: 15),
                width: AppClass().getMqWidth(context) * 0.2,
                color: textLight,
              )
            ],
          ),
          Consumer(builder: (context, ref, child) {
            var data = ref.watch(selectedExpProvider);
            return Container(
              width: AppClass().getMqWidth(context) * 0.6,
              margin: EdgeInsets.only(top: 30.0, left: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            dataPage = 1;
                            ref.read(selectedExpProvider.notifier).state = 0;
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: data == 0
                                    ? primaryColor
                                    : Colors.transparent,
                                border: Border(
                                    left: BorderSide(
                                        color: data == 0
                                            ? textColor
                                            : primaryColor,
                                        width: 2))),
                            child: Text(
                              Strings.project1,
                              style: TextStyle(
                                  color: data == 0
                                      ? textLight2
                                      : textLight,
                                  letterSpacing: 1,
                                  height: 1.5,
                                  fontSize: 14,
                                  fontFamily: 'sfmono'),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            dataPage = 2;
                            ref.read(selectedExpProvider.notifier).state = 1;
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: data == 1
                                    ? primaryColor
                                    : Colors.transparent,
                                border: Border(
                                    left: BorderSide(
                                        color: data == 1
                                            ? textColor
                                            : primaryColor,
                                        width: 2))),
                            child: Text(
                              Strings.project2,
                              style: TextStyle(
                                  color: data == 1
                                      ? textLight2
                                      : textLight,
                                  letterSpacing: 1,
                                  height: 1.5,
                                  fontSize: 14,
                                  fontFamily: 'sfmono'),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            dataPage = 3;
                            ref.read(selectedExpProvider.notifier).state = 2;
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: data == 2
                                    ? primaryColor
                                    : Colors.transparent,
                                border: Border(
                                    left: BorderSide(
                                        color: data == 2
                                            ? textColor
                                            : primaryColor,
                                        width: 2))),
                            child: Text(
                              Strings.project3,
                              style: TextStyle(
                                  color: data == 2
                                      ? textLight2
                                      : textLight,
                                  letterSpacing: 1,
                                  height: 1.5,
                                  fontSize: 14,
                                  fontFamily: 'sfmono'),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            dataPage = 4;
                            ref.read(selectedExpProvider.notifier).state = 3;
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: data == 3
                                    ? primaryColor
                                    : Colors.transparent,
                                border: Border(
                                    left: BorderSide(
                                        color: data == 3
                                            ? textColor
                                            : primaryColor,
                                        width: 2))),
                            child: Text(
                              Strings.project4,
                              style: TextStyle(
                                  color: data == 3
                                      ? textLight2
                                      : textLight,
                                  letterSpacing: 1,
                                  height: 1.5,
                                  fontSize: 14,
                                  fontFamily: 'sfmono'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text( projectsList[data].desig.toString(),
                              style: GoogleFonts.roboto(
                                  color: textColor,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  fontSize: 20),
                              ),
                        projectsList[data].points!
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
          //TODO criar caminhos dos projetos
          InkWell(
            onTap: () {
              switch (dataPage){
                case 1 :
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Teste()));
                  break;
                case 2 :
                  print('2');
                  break;
                case 3 :
                  print('3');
                  break;
                case 4 :
                  print('4');
                  break;
              }
            },
            child: Container(
              height: 60,
              width: 140,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                  border: Border.all(
                      color: primaryColor, width: 1.5)),
              child: Center(
                child: Text(Strings.buttonProject,
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 13,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'sfmono')),
              ),
            ),
          )
        ],
      ),
    );
  }
}
