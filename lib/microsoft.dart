@JS()
library microsoft;

import "package:js/js.dart";
import "dart:html" show MouseEvent, Window, EventTarget, Element;

@anonymous
@JS()
abstract class MSPointerEvent implements MouseEvent {
  external num get width;
  external set width(num v);
  external num get rotation;
  external set rotation(num v);
  external num get pressure;
  external set pressure(num v);
  external dynamic get pointerType;
  external set pointerType(dynamic v);
  external bool get isPrimary;
  external set isPrimary(bool v);
  external num get tiltY;
  external set tiltY(num v);
  external num get height;
  external set height(num v);
  external dynamic get intermediatePoints;
  external set intermediatePoints(dynamic v);
  external dynamic get currentPoint;
  external set currentPoint(dynamic v);
  external num get tiltX;
  external set tiltX(num v);
  external num get hwTimestamp;
  external set hwTimestamp(num v);
  external num get pointerId;
  external set pointerId(num v);
  external void initPointerEvent(
      String typeArg,
      bool canBubbleArg,
      bool cancelableArg,
      Window viewArg,
      num detailArg,
      num screenXArg,
      num screenYArg,
      num clientXArg,
      num clientYArg,
      bool ctrlKeyArg,
      bool altKeyArg,
      bool shiftKeyArg,
      bool metaKeyArg,
      num buttonArg,
      EventTarget relatedTargetArg,
      num offsetXArg,
      num offsetYArg,
      num widthArg,
      num heightArg,
      num pressure,
      num rotation,
      num tiltX,
      num tiltY,
      num pointerIdArg,
      dynamic pointerType,
      num hwTimestampArg,
      bool isPrimary);
  external void getCurrentPoint(Element element);
  external void getIntermediatePoints(Element element);
  external num get MSPOINTER_TYPE_PEN;
  external set MSPOINTER_TYPE_PEN(num v);
  external num get MSPOINTER_TYPE_MOUSE;
  external set MSPOINTER_TYPE_MOUSE(num v);
  external num get MSPOINTER_TYPE_TOUCH;
  external set MSPOINTER_TYPE_TOUCH(num v);
}

