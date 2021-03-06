import 'dart:async';

import 'package:corona_indonesia/bloc/detail_corona_bloc.dart';
import 'package:corona_indonesia/bloc/indonesia_corona_bloc.dart';
import 'package:corona_indonesia/bloc/indonesia_covid_news_bloc.dart';
import 'package:corona_indonesia/bloc/rumah_sakit_bloc.dart';
import 'package:corona_indonesia/bloc/world_corona_bloc.dart';
import 'package:corona_indonesia/models/corona.dart';
import 'package:corona_indonesia/widgets/call_action_button.dart';
import 'package:corona_indonesia/widgets/corona_card.dart';
import 'package:corona_indonesia/widgets/corona_card_indonesia.dart';
import 'package:corona_indonesia/widgets/text_keterangan_gejala.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:webview_flutter/webview_flutter.dart';

part 'corona_page.dart';
part 'detail_corona_indonesia_page.dart';
part 'home_page.dart';
part 'rumah_sakit.dart';
part 'news_page.dart';
part 'news_web_view_page.dart';
part 'splash_page.dart';
part 'wrapper.dart';
