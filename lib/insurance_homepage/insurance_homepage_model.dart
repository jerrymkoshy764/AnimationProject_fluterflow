import '/components/addto_cart_button_widget.dart';
import '/components/coverage_list_iteam_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import 'insurance_homepage_widget.dart' show InsuranceHomepageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class InsuranceHomepageModel extends FlutterFlowModel<InsuranceHomepageWidget> {
  ///  Local state fields for this page.

  bool monthlyAnnual = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for coverageListIteam component.
  late CoverageListIteamModel coverageListIteamModel1;
  // Model for coverageListIteam component.
  late CoverageListIteamModel coverageListIteamModel2;
  // Model for coverageListIteam component.
  late CoverageListIteamModel coverageListIteamModel3;
  // Model for coverageListIteam component.
  late CoverageListIteamModel coverageListIteamModel4;
  // Model for coverageListIteam component.
  late CoverageListIteamModel coverageListIteamModel5;
  // Model for coverageListIteam component.
  late CoverageListIteamModel coverageListIteamModel6;
  // Model for coverageListIteam component.
  late CoverageListIteamModel coverageListIteamModel7;
  // Model for coverageListIteam component.
  late CoverageListIteamModel coverageListIteamModel8;
  // Model for addtoCartButton component.
  late AddtoCartButtonModel addtoCartButtonModel;

  @override
  void initState(BuildContext context) {
    coverageListIteamModel1 =
        createModel(context, () => CoverageListIteamModel());
    coverageListIteamModel2 =
        createModel(context, () => CoverageListIteamModel());
    coverageListIteamModel3 =
        createModel(context, () => CoverageListIteamModel());
    coverageListIteamModel4 =
        createModel(context, () => CoverageListIteamModel());
    coverageListIteamModel5 =
        createModel(context, () => CoverageListIteamModel());
    coverageListIteamModel6 =
        createModel(context, () => CoverageListIteamModel());
    coverageListIteamModel7 =
        createModel(context, () => CoverageListIteamModel());
    coverageListIteamModel8 =
        createModel(context, () => CoverageListIteamModel());
    addtoCartButtonModel = createModel(context, () => AddtoCartButtonModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    coverageListIteamModel1.dispose();
    coverageListIteamModel2.dispose();
    coverageListIteamModel3.dispose();
    coverageListIteamModel4.dispose();
    coverageListIteamModel5.dispose();
    coverageListIteamModel6.dispose();
    coverageListIteamModel7.dispose();
    coverageListIteamModel8.dispose();
    addtoCartButtonModel.dispose();
  }
}
