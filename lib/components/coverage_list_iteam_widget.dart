import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'coverage_list_iteam_model.dart';
export 'coverage_list_iteam_model.dart';

class CoverageListIteamWidget extends StatefulWidget {
  const CoverageListIteamWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.value1,
    Color? color,
  }) : this.color = color ?? const Color(0xFFEE9168);

  final Widget? icon;
  final String? title;
  final int? value1;
  final Color color;

  @override
  State<CoverageListIteamWidget> createState() =>
      _CoverageListIteamWidgetState();
}

class _CoverageListIteamWidgetState extends State<CoverageListIteamWidget>
    with TickerProviderStateMixin {
  late CoverageListIteamModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CoverageListIteamModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: ((widget!.value1!) * 100).toDouble().ms,
            duration: 1000.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(-100.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: ((widget!.value1!) * 100).toDouble().ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          FlutterFlowIconButton(
            borderRadius: 50.0,
            buttonSize: MediaQuery.sizeOf(context).width < kBreakpointSmall
                ? 45.0
                : 90.0,
            fillColor: widget!.color,
            icon: widget!.icon!,
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          Text(
            valueOrDefault<String>(
              widget!.title,
              'title',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  fontSize: MediaQuery.sizeOf(context).width < kBreakpointSmall
                      ? 10.0
                      : 14.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                ),
          ),
        ].divide(SizedBox(height: 5.0)),
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
