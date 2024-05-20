import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class MapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFF1AB7A6),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 546, 0, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/rectangle_1.png',
                    ),
                  ),
                ),
                child: SizedBox(
                  width: 390,
                  height: 589,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(23, 29, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 297, 469),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEDED),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                                      child: SizedBox(
                                        width: 16,
                                        height: 2.7,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_5_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                                      child: SizedBox(
                                        width: 16,
                                        height: 2.7,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_4_x2.svg',
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                      height: 2.7,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_1_x2.svg',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 469, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEDED),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              width: 30,
                              height: 30,
                              padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                              child: SizedBox(
                                width: 26,
                                height: 26,
                                child: SvgPicture.asset(
                                  'assets/vectors/tu_ubicacin_1_x2.svg',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF008678),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  padding: EdgeInsets.fromLTRB(23, 43, 24, 19),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(1, 0, 0, 26),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: SizedBox(
                            width: 310,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(18, 18, 0, 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 1, 7, 2),
                                    child: SizedBox(
                                      width: 16,
                                      height: 16,
                                      child: SvgPicture.asset(
                                        'assets/vectors/ubicacin_actual_1_x2.svg',
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Tu ubicación',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xFFA0A0A0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(1, 0, 0, 32),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: SizedBox(
                            width: 310,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(18, 17, 0, 17),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 2, 7, 1),
                                    child: SizedBox(
                                      width: 16,
                                      height: 16,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_7_x2.svg',
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Destino',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xFFA0A0A0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF52FFC1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0.1, 26, 0, 27),
                          child: Text(
                            'Encuentra una ruta',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}