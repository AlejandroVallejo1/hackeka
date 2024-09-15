import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rate_app_model.dart';
export 'rate_app_model.dart';

class RateAppWidget extends StatefulWidget {
  const RateAppWidget({super.key});

  @override
  State<RateAppWidget> createState() => _RateAppWidgetState();
}

class _RateAppWidgetState extends State<RateAppWidget> {
  late RateAppModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RateAppModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RatingBar.builder(
          onRatingUpdate: (newValue) =>
              safeSetState(() => _model.ratingBarValue = newValue),
          itemBuilder: (context, index) => Icon(
            Icons.star_rounded,
            color: FlutterFlowTheme.of(context).warning,
          ),
          direction: Axis.horizontal,
          initialRating: _model.ratingBarValue ??= 5.0,
          unratedColor: FlutterFlowTheme.of(context).primaryText,
          itemCount: 5,
          itemSize: 36.0,
          glowColor: FlutterFlowTheme.of(context).warning,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
          child: Text(
            'Califica la app',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  letterSpacing: 0.0,
                ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
          child: FFButtonWidget(
            onPressed: () async {
              await RatingsRecord.collection.doc().set(createRatingsRecordData(
                    rating: _model.ratingBarValue?.round(),
                    createdAt: getCurrentTimestamp,
                  ));
              _model.queryRating = await queryAnaliticsRecordOnce(
                singleRecord: true,
              ).then((s) => s.firstOrNull);

              await _model.queryRating!.reference.update({
                ...createAnaliticsRecordData(
                  avgRating: functions.calculateNewRating(
                      _model.queryRating!.ratings,
                      _model.queryRating!.avgRating,
                      _model.ratingBarValue!),
                ),
                ...mapToFirestore(
                  {
                    'ratings': FieldValue.increment(1),
                  },
                ),
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Gracias por calificar la app!',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                  ),
                  duration: Duration(milliseconds: 4000),
                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                ),
              );
              Navigator.pop(context);

              safeSetState(() {});
            },
            text: 'Calificar',
            options: FFButtonOptions(
              height: 40.0,
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).primary,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Inter Tight',
                    color: Colors.white,
                    letterSpacing: 0.0,
                  ),
              elevation: 0.0,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ],
    );
  }
}
