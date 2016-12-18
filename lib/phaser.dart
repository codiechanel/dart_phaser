@JS()
library phaser;

import "package:js/js.dart";
import "dart:html"
    show
        ImageElement,
        CanvasElement,
        CanvasRenderingContext2D,
        ImageData,
        HtmlElement,
        DivElement,
        KeyboardEvent,
        HttpRequest,
        XmlDocument,
        MouseEvent,
        VideoElement,
        Blob,
        Event;
import "dart:typed_data" show ByteBuffer, Uint8List, Uint32List, Float32List;
import "package:func/func.dart";
import "dart:web_gl" show Framebuffer;
import "pixi.dart" as PIXI;
import "pixi.dart";

/// <reference path="pixi.d.ts" />
/// <reference path="p2.d.ts" />

/// Type definitions for Phaser 2.6.2 - 26th August 2016
/// Project: https://github.com/photonstorm/phaser

// Module phaser
/* WARNING: export assignment not yet supported. */

// End module phaser
@JS()
class Phaser {
  // @Ignore
  Phaser.fakeConstructor$();
  external static String get VERSION;
  external static set VERSION(String v);
  external static String get DEV_VERSION;
  external static set DEV_VERSION(String v);
  external static List<Game> get GAMES;
  external static set GAMES(List<Game> v);
  external static num get AUTO;
  external static set AUTO(num v);
  external static num get CANVAS;
  external static set CANVAS(num v);
  external static num get WEBGL;
  external static set WEBGL(num v);
  external static num get HEADLESS;
  external static set HEADLESS(num v);
  external static num get BITMAPDATA;
  external static set BITMAPDATA(num v);
  external static num get BITMAPTEXT;
  external static set BITMAPTEXT(num v);
  external static num get BUTTON;
  external static set BUTTON(num v);
  external static num get CANVAS_FILTER;
  external static set CANVAS_FILTER(num v);
  external static num get CIRCLE;
  external static set CIRCLE(num v);
  external static num get ELLIPSE;
  external static set ELLIPSE(num v);
  external static num get EMITTER;
  external static set EMITTER(num v);
  external static num get GRAPHICS;
  external static set GRAPHICS(num v);
  external static num get GROUP;
  external static set GROUP(num v);
  external static num get IMAGE;
  external static set IMAGE(num v);
  external static num get LINE;
  external static set LINE(num v);
  external static num get MATRIX;
  external static set MATRIX(num v);
  external static num get POINT;
  external static set POINT(num v);
  external static num get POINTER;
  external static set POINTER(num v);
  external static num get POLYGON;
  external static set POLYGON(num v);
  external static num get RECTANGLE;
  external static set RECTANGLE(num v);
  external static num get ROUNDEDRECTANGLE;
  external static set ROUNDEDRECTANGLE(num v);
  external static num get RENDERTEXTURE;
  external static set RENDERTEXTURE(num v);
  external static num get RETROFONT;
  external static set RETROFONT(num v);
  external static num get SPRITE;
  external static set SPRITE(num v);
  external static num get SPRITEBATCH;
  external static set SPRITEBATCH(num v);
  external static num get TEXT;
  external static set TEXT(num v);
  external static num get TILEMAP;
  external static set TILEMAP(num v);
  external static num get TILEMAPLAYER;
  external static set TILEMAPLAYER(num v);
  external static num get TILESPRITE;
  external static set TILESPRITE(num v);
  external static num get WEBGL_FILTER;
  external static set WEBGL_FILTER(num v);
  external static num get ROPE;
  external static set ROPE(num v);
  external static num get CREATURE;
  external static set CREATURE(num v);
  external static num get VIDEO;
  external static set VIDEO(num v);
  external static num get NONE;
  external static set NONE(num v);
  external static num get LEFT;
  external static set LEFT(num v);
  external static num get RIGHT;
  external static set RIGHT(num v);
  external static num get UP;
  external static set UP(num v);
  external static num get DOWN;
  external static set DOWN(num v);
  external static num get HORIZONTAL;
  external static set HORIZONTAL(num v);
  external static num get VERTICAL;
  external static set VERTICAL(num v);
  external static num get LANDSCAPE;
  external static set LANDSCAPE(num v);
  external static num get PORTRAIT;
  external static set PORTRAIT(num v);
  external static num get ANGLE_UP;
  external static set ANGLE_UP(num v);
  external static num get ANGLE_DOWN;
  external static set ANGLE_DOWN(num v);
  external static num get ANGLE_LEFT;
  external static set ANGLE_LEFT(num v);
  external static num get ANGLE_RIGHT;
  external static set ANGLE_RIGHT(num v);
  external static num get ANGLE_NORTH_EAST;
  external static set ANGLE_NORTH_EAST(num v);
  external static num get ANGLE_NORTH_WEST;
  external static set ANGLE_NORTH_WEST(num v);
  external static num get ANGLE_SOUTH_EAST;
  external static set ANGLE_SOUTH_EAST(num v);
  external static num get ANGLE_SOUTH_WEST;
  external static set ANGLE_SOUTH_WEST(num v);
  external static num get TOP_LEFT;
  external static set TOP_LEFT(num v);
  external static num get TOP_CENTER;
  external static set TOP_CENTER(num v);
  external static num get TOP_RIGHT;
  external static set TOP_RIGHT(num v);
  external static num get LEFT_TOP;
  external static set LEFT_TOP(num v);
  external static num get LEFT_CENTER;
  external static set LEFT_CENTER(num v);
  external static num get LEFT_BOTTOM;
  external static set LEFT_BOTTOM(num v);
  external static num get CENTER;
  external static set CENTER(num v);
  external static num get RIGHT_TOP;
  external static set RIGHT_TOP(num v);
  external static num get RIGHT_CENTER;
  external static set RIGHT_CENTER(num v);
  external static num get RIGHT_BOTTOM;
  external static set RIGHT_BOTTOM(num v);
  external static num get BOTTOM_LEFT;
  external static set BOTTOM_LEFT(num v);
  external static num get BOTTOM_CENTER;
  external static set BOTTOM_CENTER(num v);
  external static num get BOTTOM_RIGHT;
  external static set BOTTOM_RIGHT(num v);
}

// Module Phaser
@JS("Phaser.Animation")
class Animation {
  // @Ignore
  Animation.fakeConstructor$();
  external factory Animation(Game game, Sprite parent, String name,
      FrameData frameData, List<dynamic> /*List<num>|List<String>*/ frames,
      [num frameRate, bool loop]);
  external Frame get currentFrame;
  external set currentFrame(Frame v);
  external num get delay;
  external set delay(num v);
  external bool get enableUpdate;
  external set enableUpdate(bool v);
  external num get frame;
  external set frame(num v);
  external num get frameTotal;
  external set frameTotal(num v);
  external Game get game;
  external set game(Game v);
  external bool get isFinished;
  external set isFinished(bool v);
  external bool get isPaused;
  external set isPaused(bool v);
  external bool get isPlaying;
  external set isPlaying(bool v);
  external bool get killOnComplete;
  external set killOnComplete(bool v);
  external bool get loop;
  external set loop(bool v);
  external num get loopCount;
  external set loopCount(num v);
  external String get name;
  external set name(String v);
  external Signal get onComplete;
  external set onComplete(Signal v);
  external Signal get onLoop;
  external set onLoop(Signal v);
  external Signal get onStart;
  external set onStart(Signal v);
  external Signal get onUpdate;
  external set onUpdate(Signal v);
  external bool get paused;
  external set paused(bool v);
  external bool get reversed;
  external set reversed(bool v);
  external num get speed;
  external set speed(num v);
  external void complete();
  external void destroy();
  external static List<String> generateFrameNames(
      String prefix, num start, num stop,
      [String suffix, num zeroPad]);
  external void next([num quantity]);
  external void onPause();
  external void onResume();
  external Animation play([num frameRate, bool loop, bool killOnComplete]);
  external void previous([num quantity]);
  external void restart();
  external Animation reverse();
  external Animation reverseOnce();
  external void setFrame(
      [dynamic /*String|num*/ frameId, bool useLocalFrameIndex]);
  external void stop([bool resetFrame, bool dispatchComplete]);
  external bool update();
  external bool updateCurrentFrame(bool signalUpdate, [bool fromPlay]);
  external void updateFrameData(FrameData frameData);
}

@JS("Phaser.AnimationManager")
class AnimationManager {
  // @Ignore
  AnimationManager.fakeConstructor$();
  external factory AnimationManager(Sprite sprite);
  external Animation get currentAnim;
  external set currentAnim(Animation v);
  external Frame get currentFrame;
  external set currentFrame(Frame v);
  external num get frame;
  external set frame(num v);
  external FrameData get frameData;
  external set frameData(FrameData v);
  external String get frameName;
  external set frameName(String v);
  external num get frameTotal;
  external set frameTotal(num v);
  external Game get game;
  external set game(Game v);
  external bool get isLoaded;
  external set isLoaded(bool v);
  external String get name;
  external set name(String v);
  external bool get paused;
  external set paused(bool v);
  external Sprite get sprite;
  external set sprite(Sprite v);
  external bool get updateIfVisible;
  external set updateIfVisible(bool v);
  external Animation add(String name,
      [List<dynamic> /*List<num>|List<String>*/ frames,
      num frameRate,
      bool loop,
      bool useNumericIndex]);
  external bool copyFrameData(
      FrameData frameData, dynamic /*String|num*/ frame);
  external void destroy();
  external Animation getAnimation(String name);
  external void next([num quantity]);
  external Animation play(String name,
      [num frameRate, bool loop, bool killOnComplete]);
  external void previous([num quantity]);
  external void stop([String name, bool resetFrame]);
  external bool update();
  external bool validateFrames(List<Frame> frames, [bool useNumericIndex]);
}

@JS("Phaser.AnimationParser")
class AnimationParser {
  // @Ignore
  AnimationParser.fakeConstructor$();
  external static FrameData JSONData(Game game, dynamic json);
  external static FrameData JSONDataHash(Game game, dynamic json);
  external static FrameData JSONDataPyxel(Game game, dynamic json);
  external static FrameData spriteSheet(
      Game game, String key, num frameWidth, num frameHeight,
      [num frameMax, num margin, num spacing]);
  external static FrameData XMLData(Game game, dynamic xml);
}

@JS("Phaser.AudioSprite")
class AudioSprite {
  // @Ignore
  AudioSprite.fakeConstructor$();
  external factory AudioSprite(Game game, String key);
  external Game get game;
  external set game(Game v);
  external String get key;
  external set key(String v);
  external dynamic get config;
  external set config(dynamic v);
  external String get autoplayKey;
  external set autoplayKey(String v);
  external bool get autoplay;
  external set autoplay(bool v);
  external dynamic get sounds;
  external set sounds(dynamic v);
  external Sound JS$get(String marker);
  external Sound play(String marker, [num volume]);
  external Sound stop(String marker);
}

@JS("Phaser.ArraySet")
class ArraySet {
  // @Ignore
  ArraySet.fakeConstructor$();
  external factory ArraySet(List<dynamic> list);
  external num get position;
  external set position(num v);
  external List<dynamic> get list;
  external set list(List<dynamic> v);
  external num get total;
  external set total(num v);
  external dynamic get first;
  external set first(dynamic v);
  external dynamic get next;
  external set next(dynamic v);
  external dynamic add(dynamic item);
  external dynamic getByKey(String property, dynamic value);
  external num getIndex(dynamic item);
  external bool exists(dynamic item);
  external void reset();
  external dynamic remove(dynamic item);
  external void removeAll([bool destoy]);
  external void setAll(dynamic key, dynamic value);
  external void callAll(String key,
      [dynamic parameter1,
      dynamic parameter2,
      dynamic parameter3,
      dynamic parameter4,
      dynamic parameter5]);
}

@JS("Phaser.ArrayUtils")
class ArrayUtils {
  // @Ignore
  ArrayUtils.fakeConstructor$();
  external static dynamic/*=T*/ getRandomItem/*<T>*/(
      List<dynamic/*=T*/ > objects,
      [num startIndex,
      num length]);
  external static dynamic/*=T*/ removeRandomItem/*<T>*/(
      List<dynamic/*=T*/ > objects,
      [num startIndex,
      num length]);
  external static List<dynamic/*=T*/ > shuffle/*<T>*/(
      List<dynamic/*=T*/ > array);
  external static dynamic/*=T*/ transposeMatrix/*<T>*/(
      List<dynamic/*=T*/ > array);
  external static dynamic rotateMatrix(
      dynamic matrix, dynamic /*num|String*/ direction);
  external static num findClosest(num value, List<num> arr);
  external static dynamic rotate(List<dynamic> array);
  external static dynamic rotateLeft(List<dynamic> array);
  external static dynamic rotateRight(List<dynamic> array);
  external static List<num> numberArray(num start, num end);
  external static List<num> numberArrayStep(num start, [num end, num step]);
}

@anonymous
@JS()
abstract class BitmapFont {
  external PIXI.BaseTexture get base;
  external set base(PIXI.BaseTexture v);
  external ImageElement get data;
  external set data(ImageElement v);
  external BMFont get font;
  external set font(BMFont v);
  external String get url;
  external set url(String v);
  external factory BitmapFont(
      {PIXI.BaseTexture base, ImageElement data, BMFont font, String url});
}

@anonymous
@JS()
abstract class BMFont {
  external List<BMFontChar> get chars;
  external set chars(List<BMFontChar> v);
  external String get font;
  external set font(String v);
  external num get lineHeight;
  external set lineHeight(num v);
  external num get size;
  external set size(num v);
  external factory BMFont(
      {List<BMFontChar> chars, String font, num lineHeight, num size});
}

@anonymous
@JS()
abstract class BMFontChar {
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external num get xOffset;
  external set xOffset(num v);
  external num get yOffset;
  external set yOffset(num v);
  external num get xAdvance;
  external set xAdvance(num v);
  external List<num> get kerning;
  external set kerning(List<num> v);
  external PIXI.BaseTexture get texture;
  external set texture(PIXI.BaseTexture v);
  external factory BMFontChar(
      {num x,
      num y,
      num width,
      num height,
      num xOffset,
      num yOffset,
      num xAdvance,
      List<num> kerning,
      PIXI.BaseTexture texture});
}

@JS("Phaser.BitmapData")
class BitmapData {
  // @Ignore
  BitmapData.fakeConstructor$();
  external factory BitmapData(Game game, String key,
      [num width, num height, bool skipPool]);
  external PIXI.BaseTexture get baseTexture;
  external set baseTexture(PIXI.BaseTexture v);
  external ByteBuffer get buffer;
  external set buffer(ByteBuffer v);
  external CanvasElement get canvas;
  external set canvas(CanvasElement v);
  external CanvasRenderingContext2D get context;
  external set context(CanvasRenderingContext2D v);
  external CanvasRenderingContext2D get ctx;
  external set ctx(CanvasRenderingContext2D v);
  external Uint8List get data;
  external set data(Uint8List v);
  external bool get dirty;
  external set dirty(bool v);
  external bool get disableTextureUpload;
  external set disableTextureUpload(bool v);
  external Game get game;
  external set game(Game v);
  external num get height;
  external set height(num v);
  external ImageData get imageData;
  external set imageData(ImageData v);
  external String get key;
  external set key(String v);
  external String get op;
  external set op(String v);
  external Uint32List get pixels;
  external set pixels(Uint32List v);
  external bool get smoothed;
  external set smoothed(bool v);
  external String get smoothProperty;
  external set smoothProperty(String v);
  external PIXI.Texture get texture;
  external set texture(PIXI.Texture v);
  external Frame get textureFrame;
  external set textureFrame(Frame v);
  external num get type;
  external set type(num v);
  external num get width;
  external set width(num v);
  /*external static dynamic getTransform(num translateX, num translateY, num scaleX, num scaleY, num skewX, num skewY);*/
  /*external dynamic getTransform(num translateX, num translateY, num scaleX,
    num scaleY, num skewX, num skewY);*/
  external dynamic getTransform(num translateX, num translateY, num scaleX,
      num scaleY, num skewX, num skewY);
  external BitmapData add(dynamic object);
  external Image addToWorld(
      [num x, num y, num anchorX, num anchorY, num scaleX, num scaleY]);
  external BitmapData alphaMask(dynamic source,
      [dynamic mask, Rectangle sourceRect, Rectangle maskRect]);
  external BitmapData blendAdd();
  external BitmapData blendColor();
  external BitmapData blendColorBurn();
  external BitmapData blendColorDodge();
  external BitmapData blendDarken();
  external BitmapData blendDestinationAtop();
  external BitmapData blendDestinationIn();
  external BitmapData blendDestinationOut();
  external BitmapData blendDestinationOver();
  external BitmapData blendDifference();
  external BitmapData blendExclusion();
  external BitmapData blendHardLight();
  external BitmapData blendHue();
  external BitmapData blendLighten();
  external BitmapData blendLuminosity();
  external BitmapData blendMultiply();
  external BitmapData blendOverlay();
  external BitmapData blendReset();
  external BitmapData blendSaturation();
  external BitmapData blendScreen();
  external BitmapData blendSoftLight();
  external BitmapData blendSourceAtop();
  external BitmapData blendSourceIn();
  external BitmapData blendSourceOut();
  external BitmapData blendSourceOver();
  external BitmapData blendXor();
  external BitmapData circle(num x, num y, num radius, [String fillStyle]);
  external BitmapData clear([num x, num y, num width, num height]);
  external BitmapData cls();
  external BitmapData copy(
      [dynamic source,
      num x,
      num y,
      num width,
      num height,
      num tx,
      num ty,
      num newWidth,
      num newHeight,
      num rotate,
      num anchorX,
      num anchorY,
      num scaleX,
      num scaleY,
      num alpha,
      String blendMode,
      bool roundPx]);
  external void copyPixels(dynamic source, Rectangle area, num x, num y,
      [num alpha]);
  external BitmapData copyRect(dynamic source, Rectangle area,
      [num x, num y, num alpha, String blendMode, bool roundPx]);
  external BitmapData copyTransform(dynamic source,
      [String blendMode, bool roundPx]);
  external void destroy();
  external BitmapData draw(dynamic source,
      [num x, num y, num width, num height, String blendMode, bool roundPx]);
  external BitmapData drawFull(dynamic parent,
      [String blendMode, bool roundPx]);
  external BitmapData drawGroup(Group group, [String blendMode, bool roundPx]);
  external BitmapData extract(BitmapData destination, num r, num g, num b,
      [num a, bool resize, num r2, num g2, num b2]);
  external BitmapData fill(num r, num g, num b, [num a]);
  external PIXI.Texture generateTexture(String key);
  external Rectangle getBounds([Rectangle rect]);
  external dynamic /*{ r: number; g: number; b: number; x: number; y: number; }*/ getFirstPixel(
      num direction);
  external num getPixel(num x, num y, [dynamic out]);
  external dynamic getPixelRGB(num x, num y, [dynamic out, bool hsl, bool hsv]);
  external num getPixel32(num x, num y);
  external ImageData getPixels(Rectangle rect);
  external BitmapData line(num x1, num y1, num x2, num y2,
      [String color, num width]);
  external BitmapData load(dynamic source);
  external BitmapData move(num x, num y, [bool wrap]);
  external BitmapData moveH(num distance, [bool wrap]);
  external BitmapData moveV(num distance, [bool wrap]);
  external BitmapData processPixel(
      void callback(num color, num x, num y), dynamic callbackContext,
      [num x, num y, num width, num height]);
  external BitmapData processPixelRGB(
      void callback(ColorComponents color, num x, num y),
      dynamic callbackContext,
      [num x,
      num y,
      num width,
      num height]);
  external BitmapData rect(num x, num y, num width, num height,
      [String fillStyle]);
  external BitmapData render();
  external BitmapData replaceRGB(
      num r1, num g1, num b1, num a1, num r2, num g2, num b2, num a2,
      [Rectangle region]);
  external BitmapData resize(num width, num height);
  external void resizeFrame(dynamic parent, num width, num height);
  external BitmapData setHSL([num h, num s, num l, Rectangle region]);
  external BitmapData setPixel(num x, num y, num red, num green, num blue,
      [bool immediate]);
  external BitmapData setPixel32(
      num x, num y, num red, num green, num blue, num alpha,
      [bool immediate]);
  external BitmapData shadow(String color, [num blur, num x, num y]);
  external BitmapData shiftHSL([num h, num s, num l, Rectangle region]);
  external BitmapData text(String text,
      [num x, num y, String font, String color, bool shadow]);
  external BitmapData textureLine(Line line, String key, [String repeat]);
  external BitmapData update([num x, num y, num width, num height]);
}

@JS("Phaser.BitmapText")
class BitmapText extends DisplayObjectContainer {
  // @Ignore
  BitmapText.fakeConstructor$() : super.fakeConstructor$();
  external factory BitmapText(Game game, num x, num y, String font,
      [String text, num size, String align]);
  external String get align;
  external set align(String v);
  external bool get alive;
  external set alive(bool v);
  external Point get anchor;
  external set anchor(Point v);
  external AnimationManager get animations;
  external set animations(AnimationManager v);
  external num get angle;
  external set angle(num v);
  external bool get autoCull;
  external set autoCull(bool v);
  external dynamic /*Body|P2_Body|Ninja_Body|dynamic*/ get body;
  external set body(dynamic /*Body|P2_Body|Ninja_Body|dynamic*/ v);
  external num get bottom;
  external set bottom(num v);
  external Point get cameraOffset;
  external set cameraOffset(Point v);
  external bool get checkWorldBounds;
  external set checkWorldBounds(bool v);
  external dynamic get data;
  external set data(dynamic v);
  external bool get destroyPhase;
  external set destroyPhase(bool v);
  external bool get debug;
  external set debug(bool v);
  external bool get dirty;
  external set dirty(bool v);
  external Events get events;
  external set events(Events v);
  external bool get exists;
  external set exists(bool v);
  external bool get fixedToCamera;
  external set fixedToCamera(bool v);
  external String get font;
  external set font(String v);
  external num get fontSize;
  external set fontSize(num v);
  external bool get fresh;
  external set fresh(bool v);
  external Game get game;
  external set game(Game v);
  external InputHandler get input;
  external set input(InputHandler v);
  external bool get inputEnabled;
  external set inputEnabled(bool v);
  external bool get inCamera;
  external set inCamera(bool v);
  external bool get inWorld;
  external set inWorld(bool v);
  external dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ get key;
  external set key(
      dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ v);
  external num get left;
  external set left(num v);
  external String get name;
  external set name(String v);
  external dynamic get components;
  external set components(dynamic v);
  external num get lifespan;
  external set lifespan(num v);
  external num get maxWidth;
  external set maxWidth(num v);
  external num get offsetX;
  external set offsetX(num v);
  external num get offsetY;
  external set offsetY(num v);
  external bool get outOfBoundsKill;
  external set outOfBoundsKill(bool v);
  external bool get pendingDestroy;
  external set pendingDestroy(bool v);
  external num get physicsType;
  external set physicsType(num v);
  external Point get previousPosition;
  external set previousPosition(Point v);
  external num get previousRotation;
  external set previousRotation(num v);
  external Point get position;
  external set position(Point v);
  external num get renderOrderID;
  external set renderOrderID(num v);
  external num get right;
  external set right(num v);
  external String get text;
  external set text(String v);
  external bool get smoothed;
  external set smoothed(bool v);
  external num get textWidth;
  external set textWidth(num v);
  external num get textHeight;
  external set textHeight(num v);
  external num get tint;
  external set tint(num v);
  external num get top;
  external set top(num v);
  external num get type;
  external set type(num v);
  external Point get world;
  external set world(Point v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get z;
  external set z(num v);
  external dynamic alignIn(
      dynamic /*Rectangle|Sprite|Image|Text|BitmapText|Button|Graphics|TileSprite*/ container,
      [num position,
      num offsetX,
      num offsetY]);
  external dynamic alignTo(
      dynamic /*Rectangle|Sprite|Image|Text|BitmapText|Button|Graphics|TileSprite*/ container,
      [num position,
      num offsetX,
      num offsetY]);
  external void destroy([bool destroyChildren]);
  external void kill();
  external void postUpdate();
  external void preUpdate();
  external num purgeGlyphs();
  external BitmapText reset(num x, num y, [num health]);
  external BitmapText revive([num health]);
  external dynamic /*{ width: number; text: string; end: boolean; chars: string[] }*/ scanLine(
      dynamic data, num scale, String text);
  external void setText(String text);
  external void update();
  external void updateText();
  external void updateTransform();
}

@JS("Phaser.Bullet")
class Bullet extends Sprite {
  // @Ignore
  Bullet.fakeConstructor$() : super.fakeConstructor$();
  external factory Bullet(Game game, num x, num y,
      [dynamic key, dynamic frame]);
  external Bullet kill();
  external void update();
}

@JS("Phaser.Button")
class Button extends Image {
  // @Ignore
  Button.fakeConstructor$() : super.fakeConstructor$();
  external factory Button(Game game,
      [num x,
      num y,
      String key,
      Function callback,
      dynamic callbackContext,
      dynamic /*String|num*/ overFrame,
      dynamic /*String|num*/ outFrame,
      dynamic /*String|num*/ downFrame,
      dynamic /*String|num*/ upFrame]);
  external bool get forceOut;
  external set forceOut(bool v);
  external bool get freezeFrames;
  external set freezeFrames(bool v);
  external dynamic /*Sound|AudioSprite*/ get onDownSound;
  external set onDownSound(dynamic /*Sound|AudioSprite*/ v);
  external String get onDownSoundMarker;
  external set onDownSoundMarker(String v);
  external Signal get onInputDown;
  external set onInputDown(Signal v);
  external Signal get onInputOut;
  external set onInputOut(Signal v);
  external Signal get onInputOver;
  external set onInputOver(Signal v);
  external Signal get onInputUp;
  external set onInputUp(Signal v);
  external dynamic /*Sound|AudioSprite*/ get onOutSound;
  external set onOutSound(dynamic /*Sound|AudioSprite*/ v);
  external String get onOutSoundMarker;
  external set onOutSoundMarker(String v);
  external dynamic /*Sound|AudioSprite*/ get onOverSound;
  external set onOverSound(dynamic /*Sound|AudioSprite*/ v);
  external String get onOverSoundMarker;
  external set onOverSoundMarker(String v);
  external bool get onOverMouseOnly;
  external set onOverMouseOnly(bool v);
  external dynamic /*Sound|AudioSprite*/ get onUpSound;
  external set onUpSound(dynamic /*Sound|AudioSprite*/ v);
  external String get onUpSoundMaker;
  external set onUpSoundMaker(String v);
  external num get physicsType;
  external set physicsType(num v);
  external num get type;
  external set type(num v);
  external void clearFrames();
  external void setDownSound(dynamic /*Sound|AudioSprite*/ sound,
      [String marker]);
  external void setFrames(
      [dynamic /*String|num*/ overFrame,
      dynamic /*String|num*/ outFrame,
      dynamic /*String|num*/ downFrame,
      dynamic /*String|num*/ upFrame]);
  external void onInputOverHandler(Button sprite, Pointer pointer);
  external void onInputOutHandler(Button sprite, Pointer pointer);
  external void onInputDownHandler(Button sprite, Pointer pointer);
  external void onInputUpHandler(Button sprite, Pointer pointer, bool isOver);
  external void removedFromWorld();
  external void setOutSound(dynamic /*Sound|AudioSprite*/ sound,
      [String marker]);
  external void setOverSound(dynamic /*Sound|AudioSprite*/ sound,
      [String marker]);
  external void setSounds(
      [dynamic /*Sound|AudioSprite*/ overSound,
      String overMarker,
      dynamic /*Sound|AudioSprite*/ downSound,
      String downMarker,
      dynamic /*Sound|AudioSprite*/ outSound,
      String outMarker,
      dynamic /*Sound|AudioSprite*/ upSound,
      String upMarker]);
  external void setState(num newState);
  external void setUpSound(dynamic /*Sound|AudioSprite*/ sound,
      [String marker]);
}

@JS("Phaser.PointerMode")
class PointerMode {
  // @Ignore
  PointerMode.fakeConstructor$();
  external static num get CURSOR;
  external static set CURSOR(num v);
  external static num get CONTACT;
  external static set CONTACT(num v);
}

@JS("Phaser.Cache")
class Cache {
  // @Ignore
  Cache.fakeConstructor$();
  external factory Cache(Game game);
  external static num get BINARY;
  external static set BINARY(num v);
  external static num get BITMAPDATA;
  external static set BITMAPDATA(num v);
  external static num get BITMAPFONT;
  external static set BITMAPFONT(num v);
  external static num get CANVAS;
  external static set CANVAS(num v);
  external static num get IMAGE;
  external static set IMAGE(num v);
  external static num get JSON;
  external static set JSON(num v);
  external static num get PHYSICS;
  external static set PHYSICS(num v);
  external static num get RENDER_TEXTURE;
  external static set RENDER_TEXTURE(num v);
  external static num get SHADER;
  external static set SHADER(num v);
  external static num get SOUND;
  external static set SOUND(num v);
  external static num get SPRITE_SHEET;
  external static set SPRITE_SHEET(num v);
  external static num get TEXT;
  external static set TEXT(num v);
  external static num get TEXTURE;
  external static set TEXTURE(num v);
  external static num get TEXTURE_ATLAS;
  external static set TEXTURE_ATLAS(num v);
  external static num get TILEMAP;
  external static set TILEMAP(num v);
  external static num get XML;
  external static set XML(num v);
  external static num get VIDEO;
  external static set VIDEO(num v);
  external static PIXI.Texture get DEFAULT;
  external static set DEFAULT(PIXI.Texture v);
  external static PIXI.Texture get MISSING;
  external static set MISSING(PIXI.Texture v);
  external bool get autoResolveURL;
  external set autoResolveURL(bool v);
  external Game get game;
  external set game(Game v);
  external Signal get onSoundUnlock;
  external set onSoundUnlock(Signal v);
  external void addBinary(String key, dynamic binaryData);
  external BitmapData addBitmapData(String key, BitmapData bitmapData,
      [FrameData frameData]);
  /*external void addBitmapFont(String key, RetroFont texture);*/
  /*external void addBitmapFont(
    String key, String url, dynamic data, dynamic atlasData, String atlasType,
    [num xSpacing, num ySpacing]);*/
  external void addBitmapFont(
      String key, dynamic /*RetroFont|String*/ texture_url,
      [dynamic data,
      dynamic atlasData,
      String atlasType,
      num xSpacing,
      num ySpacing]);
  external void addCanvas(String key, CanvasElement canvas,
      [CanvasRenderingContext2D context]);
  external void addDefaultImage();
  external ImageElement addImage(String key, String url, dynamic data);
  external void addJSON(String key, String urL, dynamic data);
  external void addMissingImage();
  external void addPhysicsData(
      String key, String url, dynamic JSONData, num format);
  external void addRenderTexture(String key, RenderTexture texture);
  external void addShader(String key, String url, dynamic data);
  external void addSound(
      String key, String url, dynamic data, bool webAudio, bool audioTag);
  external void addSpriteSheet(
      String key, String url, dynamic data, num frameWidth, num frameHeight,
      [num frameMax, num margin, num spacing]);
  external void addText(String key, String url, dynamic data);
  external void addTextureAtlas(
      String key, String url, dynamic data, dynamic atlasData, num format);
  external void addTilemap(String key, String url, dynamic mapData, num format);
  external void addVideo(String key, String url, dynamic data, [bool isBlob]);
  external void addXML(String key, String url, dynamic data);
  external bool checkBinaryKey(String key);
  external bool checkBitmapDataKey(String key);
  external bool checkBitmapFontKey(String key);
  external bool checkCanvasKey(String key);
  external bool checkImageKey(String key);
  external bool checkJSONKey(String key);
  external bool checkKey(num cache, String key);
  external bool checkPhysicsKey(String key);
  external bool checkRenderTextureKey(String key);
  external bool checkShaderKey(String key);
  external bool checkSoundKey(String key);
  external bool checkTextKey(String key);
  external bool checkTextureKey(String key);
  external bool checkTilemapKey(String key);
  external dynamic checkURL(String url);
  external dynamic checkUrl(String url);
  external bool checkXMLKey(String key);
  external bool checkVideoKey(String key);
  external void clearGLTextures();
  external void decodedSound(String key, dynamic data);
  external void destroy();
  external PIXI.BaseTexture getBaseTexture(String key, [num cache]);
  external dynamic getBinary(String key);
  external BitmapData getBitmapData(String key);
  external BitmapFont getBitmapFont(String key);
  external CanvasElement getCanvas(String key);
  external Frame getFrame(String key, [num cache]);
  external Frame getFrameByIndex(String key, num index, [num cache]);
  external Frame getFrameByName(String key, String name, [num cache]);
  external num getFrameCount(String key, [num cache]);
  external FrameData getFrameData(String key, [num cache]);
  external ImageElement getImage(String key, [bool full]);
  external dynamic getItem(String key, num cache,
      [String method, String property]);
  external dynamic getJSON(String key, [bool clone]);
  external List<String> getKeys(num cache);
  external List<dynamic> getPhysicsData(String key,
      [String object, String fixtureKey]);
  external CachedRenderTexture getRenderTexture(String key);
  external String getShader(String key);
  external Sound getSound(String key);
  external dynamic getSoundData(String key);
  external bool getSpriteSheetKey(String key);
  external String getText(String key);
  external List<String> getTextKeys();
  external RenderTexture getTexture(String key);
  external bool getTextureAtlasKey(String key);
  external Frame getTextureFrame(String key);
  external dynamic getTilemap(String key);
  external dynamic getTilemapData(String key);
  external dynamic getURL(String url);
  external dynamic getXML(String key);
  external Video getVideo(String key);
  external bool hasFrameData(String key, [num cache]);
  external bool isSoundDecoded(String key);
  external bool isSoundReady(String key);
  external bool isSpriteSheet(String key);
  external void reloadSound(String key);
  external void reloadSoundComplete(String key);
  external void removeBinary(String key);
  external void removeBitmapData(String key);
  external void removeBitmapFont(String key);
  external void removeCanvas(String key);
  external void removeImage(String key, [bool removeFromPixi]);
  external void removeJSON(String key);
  external void removePhysics(String key);
  external void removeRenderTexture(String key);
  external void removeShader(String key);
  external void removeSound(String key);
  external void removeSpriteSheet(String key);
  external void removeText(String key);
  external void removeTextureAtlas(String key);
  external void removeTilemap(String key);
  external void removeXML(String key);
  external void removeVideo(String key);
  external void updateFrameData(String key, dynamic frameData, [num cache]);
  external void updateSound(String key, String property, Sound value);
}

@anonymous
@JS()
abstract class CachedRenderTexture {
  external Frame get frame;
  external set frame(Frame v);
  external RenderTexture get texture;
  external set texture(RenderTexture v);
  external factory CachedRenderTexture({Frame frame, RenderTexture texture});
}

@JS("Phaser.Camera")
class Camera {
  // @Ignore
  Camera.fakeConstructor$();
  external factory Camera(
      Game game, num id, num x, num y, num width, num height);
  external static num get FOLLOW_LOCKON;
  external static set FOLLOW_LOCKON(num v);
  external static num get FOLLOW_PLATFORMER;
  external static set FOLLOW_PLATFORMER(num v);
  external static num get FOLLOW_TOPDOWN;
  external static set FOLLOW_TOPDOWN(num v);
  external static num get FOLLOW_TOPDOWN_TIGHT;
  external static set FOLLOW_TOPDOWN_TIGHT(num v);
  external static num get SHAKE_BOTH;
  external static set SHAKE_BOTH(num v);
  external static num get SHAKE_HORIZONTAL;
  external static set SHAKE_HORIZONTAL(num v);
  external static num get SHAKE_VERTICAL;
  external static set SHAKE_VERTICAL(num v);
  external static num get ENABLE_FX;
  external static set ENABLE_FX(num v);
  external dynamic /*{ x: boolean; y: boolean; }*/ get atLimit;
  external set atLimit(dynamic /*{ x: boolean; y: boolean; }*/ v);
  external Rectangle get bounds;
  external set bounds(Rectangle v);
  external Rectangle get deadzone;
  external set deadzone(Rectangle v);
  external PIXI.DisplayObject get displayObject;
  external set displayObject(PIXI.DisplayObject v);
  external num get id;
  external set id(num v);
  external Graphics get fx;
  external set fx(Graphics v);
  external Game get game;
  external set game(Game v);
  external num get height;
  external set height(num v);
  external Point get lerp;
  external set lerp(Point v);
  external Point get position;
  external set position(Point v);
  external bool get roundPx;
  external set roundPx(bool v);
  external Point get scale;
  external set scale(Point v);
  external num get shakeIntensity;
  external set shakeIntensity(num v);
  external Signal get onFadeComplete;
  external set onFadeComplete(Signal v);
  external Signal get onFlashComplete;
  external set onFlashComplete(Signal v);
  external Signal get onShakeComplete;
  external set onShakeComplete(Signal v);
  external Sprite get target;
  external set target(Sprite v);
  external num get totalInView;
  external set totalInView(num v);
  external Rectangle get view;
  external set view(Rectangle v);
  external bool get visible;
  external set visible(bool v);
  external num get width;
  external set width(num v);
  external World get world;
  external set world(World v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external void checkBounds();
  external bool fade([num color, num duration, bool force]);
  external bool flash([num color, num duration, bool force]);
  external void focusOn(PIXI.DisplayObject displayObject);
  external void focusOnXY(num x, num y);
  external void follow(Sprite target, [num style, num lerpX, num lerpY]);
  external void reset();
  external void resetFX();
  external void setBoundsToWorld();
  external void setPosition(num x, num y);
  external void setSize(num width, num height);
  external bool shake(
      [num intensity,
      num duration,
      bool force,
      num direction,
      bool shakeBounds]);
  external void unfollow();
  external void update();
}

@JS("Phaser.Canvas")
class Canvas {
  // @Ignore
  Canvas.fakeConstructor$();
  external static CanvasElement addToDOM(
      CanvasElement canvas, HtmlElement parent,
      [bool overflowHidden]);
  external static CanvasElement create(DivElement parent,
      [num width, num height, String id, bool skipPool]);
  external static bool getSmoothingEnabled(CanvasRenderingContext2D context);
  external static String getSmoothingPrefix(CanvasRenderingContext2D context);
  external static void removeFromDOM(CanvasElement canvas);
  external static CanvasElement setBackgroundColor(
      CanvasElement canvas, String color);
  external static CanvasElement setImageRenderingBicubic(CanvasElement canvas);
  external static CanvasElement setImageRenderingCrisp(CanvasElement canvas);
  external static CanvasRenderingContext2D setSmoothingEnabled(
      CanvasRenderingContext2D context, bool value);
  external static CanvasElement setTouchAction(
      CanvasElement canvas, String value);
  external static CanvasRenderingContext2D setTransform(
      CanvasRenderingContext2D context,
      num translateX,
      num translateY,
      num scaleX,
      num scaleY,
      num skewX,
      num skewY);
  external static CanvasElement setUserSelect(CanvasElement canvas,
      [String value]);
}

@JS("Phaser.Circle")
class Circle {
  // @Ignore
  Circle.fakeConstructor$();
  external factory Circle([num x, num y, num diameter]);
  external num get area;
  external set area(num v);
  external num get bottom;
  external set bottom(num v);
  external num get diameter;
  external set diameter(num v);
  external bool get empty;
  external set empty(bool v);
  external num get left;
  external set left(num v);
  external num get radius;
  external set radius(num v);
  external num get right;
  external set right(num v);
  external num get top;
  external set top(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  /*external static Point circumferencePoint(Circle a, num angle, bool asDegrees, [Point out]);*/
  /*external Point circumferencePoint(num angle, [bool asDegrees, Point out]);*/
  external Point circumferencePoint(dynamic /*Circle|num*/ a_angle,
      [dynamic /*num|bool*/ angle_asDegrees,
      dynamic /*bool|Point*/ asDegrees_out,
      Point out]);
  /*external static bool contains(Circle a, num x, num y);*/
  /*external bool contains(num x, num y);*/
  external bool contains(dynamic /*Circle|num*/ a_x, num x_y, [num y]);
  external static bool equals(Circle a, Circle b);
  external static bool intersects(Circle a, Circle b);
  external static bool intersectsRectangle(Circle c, Rectangle r);
  external num circumference();
  external Circle clone(Circle output);
  external Circle copyFrom(dynamic source);
  external dynamic copyTo(dynamic dest);
  external num distance(dynamic dest, [bool round]);
  external Rectangle getBounds();
  external Circle offset(num dx, num dy);
  external Circle offsetPoint(Point point);
  external Point random([Point out]);
  external Rectangle scale(num x, [num y]);
  external Circle setTo(num x, num y, num diameter);
  external String toString();
}

@JS("Phaser.Color")
class Color {
  // @Ignore
  Color.fakeConstructor$();
  external static String componentToHex(num color);
  external static ColorComponents createColor(
      [num r, num g, num b, num a, num h, num s, num l, num v]);
  external static ColorComponents fromRGBA(num rgba, [ColorComponents out]);
  external static num getAlpha(num color);
  external static num getAlphaFloat(num color);
  external static num getBlue(num color);
  external static num getColor(num red, num green, num blue);
  external static num getColor32(num alpha, num red, num green, num blue);
  external static num getGreen(num color);
  external static num getRandomColor([num min, num max, num alpha]);
  external static num getRed(num color);
  external static RGBColor getRGB(num color);
  external static String getWebRGB(dynamic /*num|RGBColor*/ color);
  external static num hexToRGB(String h);
  external static ColorComponents hexToColor(String hex, [ColorComponents out]);
  external static ColorComponents HSLtoRGB(num h, num s, num l,
      [ColorComponents out]);
  external static List<ColorComponents> HSLColorWheel([num s, num l]);
  external static ColorComponents HSVtoRGB(num h, num s, num v,
      [ColorComponents out]);
  external static List<ColorComponents> HSVColorWheel([num s, num v]);
  external static num hueToColor(num p, num q, num t);
  external static num interpolateColor(
      num color1, num color2, num steps, num currentStep,
      [num alpha]);
  external static num interpolateColorWithRGB(
      num color, num r, num g, num b, num steps, num currentStep);
  external static num interpolateRGB(num r1, num g1, num b1, num r2, num g2,
      num b2, num steps, num currentStep);
  external static num packPixel(num r, num g, num b, num a);
  external static ColorComponents RGBtoHSL(num r, num g, num b,
      [ColorComponents out]);
  external static ColorComponents RGBtoHSV(num r, num g, num b,
      [ColorComponents out]);
  external static String RGBtoString(num r, num g, num b,
      [num a, String prefix]);
  external static num toRGBA(num r, num g, num b, num a);
  external static num toABGR(num r, num g, num b, num a);
  external static ColorComponents unpackPixel(num rgba,
      [ColorComponents out, bool hsl, bool hsv]);
  external static ColorComponents updateColor(ColorComponents out);
  external static ColorComponents valueToColor(String value,
      [ColorComponents out]);
  external static ColorComponents webToColor(String web, [ColorComponents out]);
  external static num blendNormal(num a);
  external static num blendLighten(num a, num b);
  external static num blendDarken(num a, num b);
  external static num blendMultiply(num a, num b);
  external static num blendAverage(num a, num b);
  external static num blendAdd(num a, num b);
  external static num blendSubtract(num a, num b);
  external static num blendDifference(num a, num b);
  external static num blendNegation(num a, num b);
  external static num blendScreen(num a, num b);
  external static num blendExclusion(num a, num b);
  external static num blendOverlay(num a, num b);
  external static num blendSoftLight(num a, num b);
  external static num blendHardLight(num a, num b);
  external static num blendColorDodge(num a, num b);
  external static num blendColorBurn(num a, num b);
  external static num blendLinearDodge(num a, num b);
  external static num blendLinearBurn(num a, num b);
  external static num blendLinearLight(num a, num b);
  external static num blendVividLight(num a, num b);
  external static num blendPinLight(num a, num b);
  external static num blendHardMix(num a, num b);
  external static num blendReflect(num a, num b);
  external static num blendGlow(num a, num b);
  external static num blendPhoenix(num a, num b);
}

@anonymous
@JS()
abstract class RGBColor {
  external num get r;
  external set r(num v);
  external num get g;
  external set g(num v);
  external num get b;
  external set b(num v);
  external num get a;
  external set a(num v);
  external factory RGBColor({num r, num g, num b, num a});
}

@anonymous
@JS()
abstract class ColorComponents implements RGBColor {
  external num get h;
  external set h(num v);
  external num get s;
  external set s(num v);
  external num get v;
  external set v(num v);
  external num get l;
  external set l(num v);
  external num get color;
  external set color(num v);
  external num get color32;
  external set color32(num v);
  external String get rgba;
  external set rgba(String v);
  external factory ColorComponents(
      {num h,
      num s,
      num v,
      num l,
      num color,
      num color32,
      String rgba,
      num r,
      num g,
      num b,
      num a});
}

@JS("Phaser.Create")
class Create {
  // @Ignore
  Create.fakeConstructor$();
  external factory Create(Game game);
  external static num get PALETTE_ARNE;
  external static set PALETTE_ARNE(num v);
  external static num get PALETTE_JMP;
  external static set PALETTE_JMP(num v);
  external static num get PALETTE_CGA;
  external static set PALETTE_CGA(num v);
  external static num get PALETTE_C64;
  external static set PALETTE_C64(num v);
  external static num get PALETTE_JAPANESE_MACHINE;
  external static set PALETTE_JAPANESE_MACHINE(num v);
  external BitmapData get bmd;
  external set bmd(BitmapData v);
  external CanvasElement get canvas;
  external set canvas(CanvasElement v);
  external CanvasRenderingContext2D get ctx;
  external set ctx(CanvasRenderingContext2D v);
  external Game get game;
  external set game(Game v);
  external dynamic get palettes;
  external set palettes(dynamic v);
  external PIXI.Texture grid(String key, num width, num height, num cellWidth,
      num cellHeight, String color);
  external PIXI.Texture texture(String key, dynamic data,
      [num pixelWidth, num pixelHeight, num palette]);
}

@anonymous
@JS()
abstract class CursorKeys {
  external Key get up;
  external set up(Key v);
  external Key get down;
  external set down(Key v);
  external Key get left;
  external set left(Key v);
  external Key get right;
  external set right(Key v);
  external factory CursorKeys({Key up, Key down, Key left, Key right});
}

@JS("Phaser.Device")
class Device {
  // @Ignore
  Device.fakeConstructor$();
  external static bool get LITTLE_ENDIAN;
  external static set LITTLE_ENDIAN(bool v);
  external static Signal get onInitialized;
  external static set onInitialized(Signal v);
  external static void checkFullScreenSupport();
  external static bool canPlayAudio(String type);
  external static bool canPlayVideo(String type);
  external static bool isConsoleOpen();
  external static String isAndroidStockBrowser();
  external static VoidFunc2Opt1<Function, dynamic> get whenReady;
  external static set whenReady(VoidFunc2Opt1<Function, dynamic> v);
  external bool get android;
  external set android(bool v);
  external bool get arora;
  external set arora(bool v);
  external bool get audioData;
  external set audioData(bool v);
  external String get cancelFullScreen;
  external set cancelFullScreen(String v);
  external bool get canvas;
  external set canvas(bool v);
  external bool get chrome;
  external set chrome(bool v);
  external bool get chromeOS;
  external set chromeOS(bool v);
  external num get chromeVersion;
  external set chromeVersion(num v);
  external bool get cocoonJS;
  external set cocoonJS(bool v);
  external bool get cocoonJSApp;
  external set cocoonJSApp(bool v);
  external bool get cordova;
  external set cordova(bool v);
  external bool get crosswalk;
  external set crosswalk(bool v);
  external bool get css3D;
  external set css3D(bool v);
  external bool get desktop;
  external set desktop(bool v);
  external num get deviceReadyAt;
  external set deviceReadyAt(num v);
  external bool get electron;
  external set electron(bool v);
  external bool get ejecta;
  external set ejecta(bool v);
  external bool get epiphany;
  external set epiphany(bool v);
  external bool get file;
  external set file(bool v);
  external bool get fileSystem;
  external set fileSystem(bool v);
  external bool get firefox;
  external set firefox(bool v);
  external num get firefoxVersion;
  external set firefoxVersion(num v);
  external bool get fullScreen;
  external set fullScreen(bool v);
  external bool get fullScreenKeyboard;
  external set fullScreenKeyboard(bool v);
  external bool get getUserMedia;
  external set getUserMedia(bool v);
  external Game get game;
  external set game(Game v);
  external bool get h264Video;
  external set h264Video(bool v);
  external bool get hlsVideo;
  external set hlsVideo(bool v);
  external bool get ie;
  external set ie(bool v);
  external num get ieVersion;
  external set ieVersion(num v);
  external bool get iOS;
  external set iOS(bool v);
  external num get iOSVersion;
  external set iOSVersion(num v);
  external bool get initialized;
  external set initialized(bool v);
  external bool get iPad;
  external set iPad(bool v);
  external bool get iPhone;
  external set iPhone(bool v);
  external bool get iPhone4;
  external set iPhone4(bool v);
  external bool get kindle;
  external set kindle(bool v);
  external bool get linux;
  external set linux(bool v);
  external bool get littleEndian;
  external set littleEndian(bool v);
  external bool get localStorage;
  external set localStorage(bool v);
  external bool get m4a;
  external set m4a(bool v);
  external bool get macOS;
  external set macOS(bool v);
  external bool get midori;
  external set midori(bool v);
  external bool get mobileSafari;
  external set mobileSafari(bool v);
  external bool get mp3;
  external set mp3(bool v);
  external bool get mp4Video;
  external set mp4Video(bool v);
  external bool get mspointer;
  external set mspointer(bool v);
  external bool get node;
  external set node(bool v);
  external bool get nodeWebkit;
  external set nodeWebkit(bool v);
  external bool get ogg;
  external set ogg(bool v);
  external num get oggVideo;
  external set oggVideo(num v);
  external bool get opera;
  external set opera(bool v);
  external bool get opus;
  external set opus(bool v);
  external num get pixelRatio;
  external set pixelRatio(num v);
  external bool get pointerLock;
  external set pointerLock(bool v);
  external bool get quirksMode;
  external set quirksMode(bool v);
  external String get requestFullScreen;
  external set requestFullScreen(String v);
  external bool get safari;
  external set safari(bool v);
  external bool get silk;
  external set silk(bool v);
  external bool get support32bit;
  external set support32bit(bool v);
  external bool get touch;
  external set touch(bool v);
  external bool get trident;
  external set trident(bool v);
  external num get tridentVersion;
  external set tridentVersion(num v);
  external bool get typedArray;
  external set typedArray(bool v);
  external bool get vibration;
  external set vibration(bool v);
  external bool get vita;
  external set vita(bool v);
  external bool get wav;
  external set wav(bool v);
  external bool get webApp;
  external set webApp(bool v);
  external bool get webAudio;
  external set webAudio(bool v);
  external bool get webGL;
  external set webGL(bool v);
  external bool get webm;
  external set webm(bool v);
  external bool get webmVideo;
  external set webmVideo(bool v);
  external bool get windows;
  external set windows(bool v);
  external bool get windowsPhone;
  external set windowsPhone(bool v);
  external String get wheelEvent;
  external set wheelEvent(String v);
  external bool get worker;
  external set worker(bool v);
  external bool get wp9Video;
  external set wp9Video(bool v);
}

@JS("Phaser.DeviceButton")
class DeviceButton {
  // @Ignore
  DeviceButton.fakeConstructor$();
  external factory DeviceButton(
      dynamic /*Pointer|SinglePad*/ parent, num butonCode);
  external num get buttonCode;
  external set buttonCode(num v);
  external Game get game;
  external set game(Game v);
  external bool get isDown;
  external set isDown(bool v);
  external bool get isUp;
  external set isUp(bool v);
  external Signal get onDown;
  external set onDown(Signal v);
  external Signal get onFloat;
  external set onFloat(Signal v);
  external Signal get onUp;
  external set onUp(Signal v);
  external Gamepad get pad;
  external set pad(Gamepad v);
  external num get repeats;
  external set repeats(num v);
  external num get timeDown;
  external set timeDown(num v);
  external num get timeUp;
  external set timeUp(num v);
  external num get value;
  external set value(num v);
  external void destroy();
  external bool justPressed([num duration]);
  external bool justReleased([num duration]);
  external void processButtonDown(num value);
  external void processButtonFloat(num value);
  external void processButtonUp(num value);
  external void reset();
}

// Module Easing
@JS("Phaser.Easing.Default")
external Function get Default;
@JS("Phaser.Easing.Default")
external set Default(Function v);
@JS("Phaser.Easing.Power0")
external Function get Power0;
@JS("Phaser.Easing.Power0")
external set Power0(Function v);
@JS("Phaser.Easing.Power1")
external Function get Power1;
@JS("Phaser.Easing.Power1")
external set Power1(Function v);
@JS("Phaser.Easing.power2")
external Function get power2;
@JS("Phaser.Easing.power2")
external set power2(Function v);
@JS("Phaser.Easing.power3")
external Function get power3;
@JS("Phaser.Easing.power3")
external set power3(Function v);
@JS("Phaser.Easing.power4")
external Function get power4;
@JS("Phaser.Easing.power4")
external set power4(Function v);

@JS("Phaser.Easing.Back")
class Back {
  // @Ignore
  Back.fakeConstructor$();
  external static num In(num k);
  external static num Out(num k);
  external static num InOut(num k);
}

@JS("Phaser.Easing.Bounce")
class Bounce {
  // @Ignore
  Bounce.fakeConstructor$();
  external static num In(num k);
  external static num Out(num k);
  external static num InOut(num k);
}

@JS("Phaser.Easing.Circular")
class Circular {
  // @Ignore
  Circular.fakeConstructor$();
  external static num In(num k);
  external static num Out(num k);
  external static num InOut(num k);
}

@JS("Phaser.Easing.Cubic")
class Cubic {
  // @Ignore
  Cubic.fakeConstructor$();
  external static num In(num k);
  external static num Out(num k);
  external static num InOut(num k);
}

@JS("Phaser.Easing.Elastic")
class Elastic {
  // @Ignore
  Elastic.fakeConstructor$();
  external static num In(num k);
  external static num Out(num k);
  external static num InOut(num k);
}

@JS("Phaser.Easing.Exponential")
class Exponential {
  // @Ignore
  Exponential.fakeConstructor$();
  external static num In(num k);
  external static num Out(num k);
  external static num InOut(num k);
}

@JS("Phaser.Easing.Linear")
class Linear {
  // @Ignore
  Linear.fakeConstructor$();
  external static num None(num k);
}

@JS("Phaser.Easing.Quadratic")
class Quadratic {
  // @Ignore
  Quadratic.fakeConstructor$();
  external static num In(num k);
  external static num Out(num k);
  external static num InOut(num k);
}

@JS("Phaser.Easing.Quartic")
class Quartic {
  // @Ignore
  Quartic.fakeConstructor$();
  external static num In(num k);
  external static num Out(num k);
  external static num InOut(num k);
}

@JS("Phaser.Easing.Quintic")
class Quintic {
  // @Ignore
  Quintic.fakeConstructor$();
  external static num In(num k);
  external static num Out(num k);
  external static num InOut(num k);
}

@JS("Phaser.Easing.Sinusoidal")
class Sinusoidal {
  // @Ignore
  Sinusoidal.fakeConstructor$();
  external static num In(num k);
  external static num Out(num k);
  external static num InOut(num k);
}

// End module Easing
@JS("Phaser.Ellipse")
class Ellipse {
  // @Ignore
  Ellipse.fakeConstructor$();
  external factory Ellipse([num x, num y, num width, num height]);
  external num get bottom;
  external set bottom(num v);
  external bool get empty;
  external set empty(bool v);
  external num get height;
  external set height(num v);
  external num get left;
  external set left(num v);
  external num get right;
  external set right(num v);
  external num get top;
  external set top(num v);
  external num get type;
  external set type(num v);
  external num get width;
  external set width(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external static bool constains(Ellipse a, num x, num y);
  external Ellipse clone(Ellipse output);
  external bool contains(num x, num y);
  external Ellipse copyFrom(dynamic source);
  external dynamic copyTo(dynamic dest);
  external Rectangle getBounds();
  external Point random([Point out]);
  external Ellipse setTo(num x, num y, num width, num height);
  external String toString();
}

@JS("Phaser.Events")
class Events {
  // @Ignore
  Events.fakeConstructor$();
  external factory Events(Sprite sprite);
  external Sprite get parent;
  external set parent(Sprite v);
  external Signal get onAddedToGroup;
  external set onAddedToGroup(Signal v);
  external Signal get onRemovedFromGroup;
  external set onRemovedFromGroup(Signal v);
  external Signal get onRemovedFromWorld;
  external set onRemovedFromWorld(Signal v);
  external Signal get onKilled;
  external set onKilled(Signal v);
  external Signal get onRevived;
  external set onRevived(Signal v);
  external Signal get onOutOfBounds;
  external set onOutOfBounds(Signal v);
  external Signal get onEnterBounds;
  external set onEnterBounds(Signal v);
  external Signal get onInputOver;
  external set onInputOver(Signal v);
  external Signal get onInputOut;
  external set onInputOut(Signal v);
  external Signal get onInputDown;
  external set onInputDown(Signal v);
  external Signal get onInputUp;
  external set onInputUp(Signal v);
  external Signal get onDestroy;
  external set onDestroy(Signal v);
  external Signal get onDragStart;
  external set onDragStart(Signal v);
  external Signal get onDragStop;
  external set onDragStop(Signal v);
  external Signal get onDragUpdate;
  external set onDragUpdate(Signal v);
  external Signal get onAnimationStart;
  external set onAnimationStart(Signal v);
  external Signal get onAnimationComplete;
  external set onAnimationComplete(Signal v);
  external Signal get onAnimationLoop;
  external set onAnimationLoop(Signal v);
  external void destroy();
}

@JS("Phaser.Filter")
class Filter extends AbstractFilter {
  // @Ignore
  Filter.fakeConstructor$() : super.fakeConstructor$();
  external factory Filter(
      Game game, dynamic uniforms, dynamic /*String|List<String>*/ fragmentSrc);
  external bool get dirty;
  external set dirty(bool v);
  external Game get game;
  external set game(Game v);
  external num get height;
  external set height(num v);
  external dynamic /*String|List<String>*/ get fragmentSrc;
  external set fragmentSrc(dynamic /*String|List<String>*/ v);
  external num get padding;
  external set padding(num v);
  external Point get prevPoint;
  external set prevPoint(Point v);
  external num get type;
  external set type(num v);
  external dynamic get uniforms;
  external set uniforms(dynamic v);
  external num get width;
  external set width(num v);
  external Image addToWorld(
      [num x, num y, num width, num height, num anchorX, num anchorY]);
  external void apply(Framebuffer frameBuffer);
  external void destroy();
  external void init(
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external void setResolution(num width, num height);
  external void syncUniforms();
  external void update([Pointer pointer]);
}

// Module Filter
@JS("Phaser.Filter.BinarySerpents")
class BinarySerpents extends Filter {
  // @Ignore
  BinarySerpents.fakeConstructor$() : super.fakeConstructor$();
  external factory BinarySerpents(Game game, num width, num height,
      [num march, num maxDistance]);
  external num get fog;
  external set fog(num v);
}

@JS("Phaser.Filter.BlurX")
class BlurX extends Filter {
  // @Ignore
  BlurX.fakeConstructor$() : super.fakeConstructor$();
  external num get blur;
  external set blur(num v);
}

@JS("Phaser.Filter.BlurY")
class BlurY extends Filter {
  // @Ignore
  BlurY.fakeConstructor$() : super.fakeConstructor$();
  external num get blur;
  external set blur(num v);
}

@JS("Phaser.Filter.CausticLight")
class CausticLight extends Filter {
  // @Ignore
  CausticLight.fakeConstructor$() : super.fakeConstructor$();
  external factory CausticLight(Game game, num width, num height,
      [num divisor]);
  external void init(num width, num height, [num divisor]);
}

@JS("Phaser.Filter.CheckerWave")
class CheckerWave extends Filter {
  // @Ignore
  CheckerWave.fakeConstructor$() : super.fakeConstructor$();
  external factory CheckerWave(Game game, num width, num height);
  external num get alpha;
  external set alpha(num v);
  external num get cameraX;
  external set cameraX(num v);
  external num get cameraY;
  external set cameraY(num v);
  external num get cameraZ;
  external set cameraZ(num v);
  external void init(num width, num height);
  external void setColor1(num red, num green, num blue);
  external void setColor2(num red, num green, num blue);
}

@JS("Phaser.Filter.ColorBars")
class ColorBars extends Filter {
  // @Ignore
  ColorBars.fakeConstructor$() : super.fakeConstructor$();
  external factory ColorBars(Game game, num width, num height);
  external num get alpha;
  external set alpha(num v);
  external void init(num width, num height);
}

@JS("Phaser.Filter.Fire")
class Fire extends Filter {
  // @Ignore
  Fire.fakeConstructor$() : super.fakeConstructor$();
  external factory Fire(num width, num height, [num alpha, num shift]);
  external num get alpha;
  external set alpha(num v);
  external num get shift;
  external set shift(num v);
  external num get speed;
  external set speed(num v);
  external void init(num width, num height, [num alpha, num shift]);
}

@JS("Phaser.Filter.Gray")
class Gray extends Filter {
  // @Ignore
  Gray.fakeConstructor$() : super.fakeConstructor$();
  external num get gray;
  external set gray(num v);
}

@JS("Phaser.Filter.HueRotate")
class HueRotate extends Filter {
  // @Ignore
  HueRotate.fakeConstructor$() : super.fakeConstructor$();
  external factory HueRotate(Game game, num width, num height, dynamic texture);
  external num get alpha;
  external set alpha(num v);
  external void init(num width, num height, dynamic texture);
}

@JS("Phaser.Filter.LazerBeam")
class LazerBeam extends Filter {
  // @Ignore
  LazerBeam.fakeConstructor$() : super.fakeConstructor$();
  external void init(num width, num height, [num divisor]);
}

@JS("Phaser.Filter.LightBeam")
class LightBeam extends Filter {
  // @Ignore
  LightBeam.fakeConstructor$() : super.fakeConstructor$();
  external factory LightBeam(Game game, num width, num height);
  external num get alpha;
  external set alpha(num v);
  external num get blue;
  external set blue(num v);
  external num get green;
  external set green(num v);
  external num get red;
  external set red(num v);
  external num get thickness;
  external set thickness(num v);
  external num get speed;
  external set speed(num v);
  external void init(num width, num height);
}

@JS("Phaser.Filter.Marble")
class Marble extends Filter {
  // @Ignore
  Marble.fakeConstructor$() : super.fakeConstructor$();
  external factory Marble(Game game, num width, num height,
      [num speed, num intensity]);
  external num get alpha;
  external set alpha(num v);
  external num get intensity;
  external set intensity(num v);
  external num get speed;
  external set speed(num v);
  external void init(num width, num height, [num speed, num intensity]);
}

@JS("Phaser.Filter.Pixelate")
class Pixelate extends Filter {
  // @Ignore
  Pixelate.fakeConstructor$() : super.fakeConstructor$();
  external num get size;
  external set size(num v);
  external num get sizeX;
  external set sizeX(num v);
  external num get sizeY;
  external set sizeY(num v);
}

@JS("Phaser.Filter.Plasma")
class Plasma extends Filter {
  // @Ignore
  Plasma.fakeConstructor$() : super.fakeConstructor$();
  external factory Plasma(Game game, num width, num height,
      [num alpha, num size]);
  external num get alpha;
  external set alpha(num v);
  external num get blueShift;
  external set blueShift(num v);
  external num get greenShift;
  external set greenShift(num v);
  external num get redShift;
  external set redShift(num v);
  external num get size;
  external set size(num v);
  external void init(num width, num height, [num alpha, num size]);
}

@JS("Phaser.Filter.SampleFilter")
class SampleFilter extends Filter {
  // @Ignore
  SampleFilter.fakeConstructor$() : super.fakeConstructor$();
  external factory SampleFilter(Game game, num width, num height,
      [num divisor]);
  external void init(num width, num height, [num divisor]);
}

@JS("Phaser.Filter.Tunnel")
class Tunnel extends Filter {
  // @Ignore
  Tunnel.fakeConstructor$() : super.fakeConstructor$();
  external factory Tunnel(Game game, num width, num height, dynamic texture);
  external num get alpha;
  external set alpha(num v);
  external num get origin;
  external set origin(num v);
  external void init(num width, num height, dynamic texture);
}

// End module Filter
@JS("Phaser.FlexGrid")
class FlexGrid {
  // @Ignore
  FlexGrid.fakeConstructor$();
  external factory FlexGrid(ScaleManager manager, num width, num height);
  external Game get game;
  external set game(Game v);
  external ScaleManager get manager;
  external set manager(ScaleManager v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external Rectangle get boundsCustom;
  external set boundsCustom(Rectangle v);
  external Rectangle get boundsFluid;
  external set boundsFluid(Rectangle v);
  external Rectangle get boundsFull;
  external set boundsFull(Rectangle v);
  external Rectangle get boundsNone;
  external set boundsNone(Rectangle v);
  external num get customWidth;
  external set customWidth(num v);
  external num get customHeight;
  external set customHeight(num v);
  external num get customOffsetX;
  external set customOffsetX(num v);
  external num get customOffsetY;
  external set customOffsetY(num v);
  external Point get positionCustom;
  external set positionCustom(Point v);
  external Point get positionFluid;
  external set positionFluid(Point v);
  external Point get positionFull;
  external set positionFull(Point v);
  external Point get positionNone;
  external set positionNone(Point v);
  external Point get scaleCustom;
  external set scaleCustom(Point v);
  external Point get scaleFluid;
  external set scaleFluid(Point v);
  external Point get scaleFluidInversed;
  external set scaleFluidInversed(Point v);
  external Point get scaleFull;
  external set scaleFull(Point v);
  external Point get scaleNone;
  external set scaleNone(Point v);
  external num get ratioH;
  external set ratioH(num v);
  external num get ratioV;
  external set ratioV(num v);
  external num get multiplier;
  external set multiplier(num v);
  external FlexLayer createCustomLayer(num width, num height,
      [List<PIXI.DisplayObject> children, bool addToWorld]);
  external FlexLayer createFluidLayer(List<PIXI.DisplayObject> children);
  external FlexLayer createFullLayer(List<PIXI.DisplayObject> children);
  external FlexLayer createFixedLayer(List<PIXI.DisplayObject> children);
  external void debug();
  external void fitSprite(Sprite sprite);
  external void onResize(num width, num height);
  external void refresh();
  external void reset();
  external void setSize(num width, num height);
}

@JS("Phaser.FlexLayer")
class FlexLayer extends Group {
  // @Ignore
  FlexLayer.fakeConstructor$() : super.fakeConstructor$();
  external factory FlexLayer(
      ScaleManager manager, Point position, Rectangle bounds, Point scale);
  external FlexGrid get grid;
  external set grid(FlexGrid v);
  external ScaleManager get manager;
  external set manager(ScaleManager v);
  external Point get bottomLeft;
  external set bottomLeft(Point v);
  external Point get bottomMiddle;
  external set bottomMiddle(Point v);
  external Point get bottomRight;
  external set bottomRight(Point v);
  external Rectangle get bounds;
  external set bounds(Rectangle v);
  external bool get persist;
  external set persist(bool v);
  external Point get position;
  external set position(Point v);
  external Point get scale;
  external set scale(Point v);
  external Point get topLeft;
  external set topLeft(Point v);
  external Point get topMiddle;
  external set topMiddle(Point v);
  external Point get topRight;
  external set topRight(Point v);
  external void debug();
  external void resize();
}

@JS("Phaser.Frame")
class Frame {
  // @Ignore
  Frame.fakeConstructor$();
  external factory Frame(
      num index, num x, num y, num width, num height, String name);
  external num get bottom;
  external set bottom(num v);
  external num get centerX;
  external set centerX(num v);
  external num get centerY;
  external set centerY(num v);
  external num get distance;
  external set distance(num v);
  external num get height;
  external set height(num v);
  external num get index;
  external set index(num v);
  external String get name;
  external set name(String v);
  external num get right;
  external set right(num v);
  external bool get rotated;
  external set rotated(bool v);
  external String get rotationDirection;
  external set rotationDirection(String v);
  external num get sourceSizeH;
  external set sourceSizeH(num v);
  external num get sourceSizeW;
  external set sourceSizeW(num v);
  external num get spriteSourceSizeH;
  external set spriteSourceSizeH(num v);
  external num get spriteSourceSizeW;
  external set spriteSourceSizeW(num v);
  external num get spriteSourceSizeX;
  external set spriteSourceSizeX(num v);
  external num get spriteSourceSizeY;
  external set spriteSourceSizeY(num v);
  external bool get trimmed;
  external set trimmed(bool v);
  external String get uuid;
  external set uuid(String v);
  external num get width;
  external set width(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external Frame clone();
  external Rectangle getRect([Rectangle out]);
  external void setTrim(bool trimmed, num actualWidth, num actualHeight,
      num destX, num destY, num destWidth, num destHeight);
  external void resize(num width, num height);
}

@JS("Phaser.FrameData")
class FrameData {
  // @Ignore
  FrameData.fakeConstructor$();
  external num get total;
  external set total(num v);
  external Frame addFrame(Frame frame);
  external bool checkFrameName(String name);
  external FrameData clone();
  external Frame getFrame(num index);
  external Frame getFrameByName(String name);
  external List<num> getFrameIndexes(
      [List<num> frames, bool useNumericIndex, List<num> output]);
  external List<Frame> getFrameRange(num start, num end, List<Frame> output);
  external List<Frame> getFrames(
      [List<num> frames, bool useNumericIndex, List<Frame> output]);
}

@anonymous
@JS()
abstract class IGameConfig {
  external bool get enableDebug;
  external set enableDebug(bool v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external num get renderer;
  external set renderer(num v);
  external dynamic get parent;
  external set parent(dynamic v);
  external bool get transparent;
  external set transparent(bool v);
  external bool get antialias;
  external set antialias(bool v);
  external num get resolution;
  external set resolution(num v);
  external bool get preserveDrawingBuffer;
  external set preserveDrawingBuffer(bool v);
  external dynamic get physicsConfig;
  external set physicsConfig(dynamic v);
  external String get seed;
  external set seed(String v);
  external State get state;
  external set state(State v);
  external bool get forceSetTimeOut;
  external set forceSetTimeOut(bool v);
  external factory IGameConfig(
      {bool enableDebug,
      num width,
      num height,
      num renderer,
      dynamic parent,
      bool transparent,
      bool antialias,
      num resolution,
      bool preserveDrawingBuffer,
      dynamic physicsConfig,
      String seed,
      State state,
      bool forceSetTimeOut});
}

@JS("Phaser.Game")
class Game {
  // @Ignore
  Game.fakeConstructor$();
  /*external factory Game([num|String width, num|String height, num renderer, dynamic parent, dynamic state, bool transparent, bool antialias, dynamic physicsConfig]);*/
  /*external factory Game(IGameConfig config);*/
  external factory Game(
      [dynamic /*num|String|IGameConfig*/ width_config,
      dynamic /*num|String*/ height,
      num renderer,
      dynamic parent,
      dynamic state,
      bool transparent,
      bool antialias,
      dynamic physicsConfig]);
  external GameObjectFactory get add;
  external set add(GameObjectFactory v);
  external bool get antialias;
  external set antialias(bool v);
  external Cache get cache;
  external set cache(Cache v);
  external Camera get camera;
  external set camera(Camera v);
  external CanvasElement get canvas;
  external set canvas(CanvasElement v);
  external bool get clearBeforeRender;
  external set clearBeforeRender(bool v);
  external IGameConfig get config;
  external set config(IGameConfig v);
  external CanvasRenderingContext2D get context;
  external set context(CanvasRenderingContext2D v);
  external num get count;
  external set count(num v);
  external Create get create;
  external set create(Create v);
  external Debug get debug;
  external set debug(Debug v);
  external Device get device;
  external set device(Device v);
  external bool get forceSingleUpdate;
  external set forceSingleUpdate(bool v);
  external Signal get fpsProblemNotifier;
  external set fpsProblemNotifier(Signal v);
  external num get height;
  external set height(num v);
  external num get id;
  external set id(num v);
  external Input get input;
  external set input(Input v);
  external bool get isBooted;
  external set isBooted(bool v);
  external bool get isRunning;
  external set isRunning(bool v);
  external Loader get load;
  external set load(Loader v);
  external bool get lockRender;
  external set lockRender(bool v);
  external GameObjectCreator get make;
  external set make(GameObjectCreator v);
  external Math get math;
  external set math(Math v);
  external Net get net;
  external set net(Net v);
  external Signal get onBlur;
  external set onBlur(Signal v);
  external Signal get onFocus;
  external set onFocus(Signal v);
  external Signal get onPause;
  external set onPause(Signal v);
  external Signal get onResume;
  external set onResume(Signal v);
  external HtmlElement get parent;
  external set parent(HtmlElement v);
  external Particles get particles;
  external set particles(Particles v);
  external bool get paused;
  external set paused(bool v);
  external bool get pendingStep;
  external set pendingStep(bool v);
  external Physics get physics;
  external set physics(Physics v);
  external dynamic get physicsConfig;
  external set physicsConfig(dynamic v);
  external PluginManager get plugins;
  external set plugins(PluginManager v);
  external bool get preserveDrawingBuffer;
  external set preserveDrawingBuffer(bool v);
  external RequestAnimationFrame get raf;
  external set raf(RequestAnimationFrame v);
  external dynamic /*PIXI.CanvasRenderer|PIXI.WebGLRenderer*/ get renderer;
  external set renderer(dynamic /*PIXI.CanvasRenderer|PIXI.WebGLRenderer*/ v);
  external num get renderType;
  external set renderType(num v);
  external num get resolution;
  external set resolution(num v);
  external RandomDataGenerator get rnd;
  external set rnd(RandomDataGenerator v);
  external ScaleManager get scale;
  external set scale(ScaleManager v);
  external BitmapData get scratch;
  external set scratch(BitmapData v);
  external SoundManager get sound;
  external set sound(SoundManager v);
  external Stage get stage;
  external set stage(Stage v);
  external StateManager get state;
  external set state(StateManager v);
  external num get stepCount;
  external set stepCount(num v);
  external bool get stepping;
  external set stepping(bool v);
  external Time get time;
  external set time(Time v);
  external bool get transparent;
  external set transparent(bool v);
  external TweenManager get tweens;
  external set tweens(TweenManager v);
  external num get currentUpdateID;
  external set currentUpdateID(num v);
  external num get updatesThisFrame;
  external set updatesThisFrame(num v);
  external num get width;
  external set width(num v);
  external World get world;
  external set world(World v);
  external void boot();
  external void destroy();
  external void disableStep();
  external void enableStep();
  external void focusGain(dynamic event);
  external void focusLoss(dynamic event);
  external void gamePaused(dynamic event);
  external void gameResumed(dynamic event);
  external void parseConfig(dynamic config);
  external void removeFromDOM(CanvasElement canvas);
  external void setUpRenderer();
  external void showDebugHeader();
  external void step();
  external void update(num time);
  external void updateLogic(num timeStep);
  external void updateRender(num timeStep);
}

@JS("Phaser.GameObjectCreator")
class GameObjectCreator {
  // @Ignore
  GameObjectCreator.fakeConstructor$();
  external factory GameObjectCreator(Game game);
  external Game get game;
  external set game(Game v);
  external World get world;
  external set world(World v);
  external Sound audio(String key, [num volume, bool loop, bool connect]);
  external AudioSprite audioSprite(String key);
  external BitmapData bitmapData(
      [num width, num height, String key, bool addToCache]);
  external BitmapText bitmapText(num x, num y, String font,
      [String text, num size, String align]);
  external Button button(
      [num x,
      num y,
      String key,
      Function callback,
      dynamic callbackContext,
      dynamic overFrame,
      dynamic outFrame,
      dynamic downFrame,
      dynamic upFrame]);
  external Emitter emitter([num x, num y, num maxParticles]);
  external Filter filter(dynamic filter,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external Graphics graphics([num x, num y]);
  external Group group(
      [dynamic parent,
      String name,
      bool addToStage,
      bool enableBody,
      num physicsBodyType]);
  external Image image(num x, num y, [dynamic key, dynamic frame]);
  external RenderTexture renderTexture(
      [num width, num height, dynamic key, bool addToCache]);
  external RetroFont retroFont(String font, num characterWidth,
      num characterHeight, String chars, num charsPerRow,
      [num xSpacing, num ySpacing, num xOffset, num yOffset]);
  external Rope rope(num x, num y, dynamic key,
      [dynamic frame, List<Point> points]);
  external Sound sound(String key, [num volume, bool loop, bool connect]);
  external Sprite sprite(num x, num y, [dynamic key, dynamic frame]);
  external SpriteBatch spriteBatch(dynamic parent,
      [String name, bool addToStage]);
  external Text text(num x, num y, [String text, dynamic style]);
  external Tilemap tilemap(String key,
      [num tileWidth, num tileHeight, num width, num height]);
  external TileSprite tileSprite(
      num x, num y, num width, num height, dynamic key, dynamic frame);
  external Tween tween(dynamic obj);
}

@JS("Phaser.GameObjectFactory")
class GameObjectFactory {
  // @Ignore
  GameObjectFactory.fakeConstructor$();
  external factory GameObjectFactory(Game game);
  external Game get game;
  external set game(Game v);
  external World get world;
  external set world(World v);
  external Sound audio(String key, [num volume, bool loop, bool connect]);
  external AudioSprite audioSprite(String key);
  external BitmapData bitmapData(
      [num width, num height, String key, bool addToCache]);
  external BitmapText bitmapText(num x, num y, String font,
      [String text, num size, Group group]);
  external Button button(
      [num x,
      num y,
      String key,
      Function callback,
      dynamic callbackContext,
      dynamic overFrame,
      dynamic outFrame,
      dynamic downFrame,
      dynamic upFrame,
      Group group]);
  external Emitter emitter([num x, num y, num maxParticles]);
  external dynamic existing(dynamic object);
  external Filter filter(String filter,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external Graphics graphics(num x, num y, [Group group]);
  external Group group(
      [dynamic parent,
      String name,
      bool addToStage,
      bool enableBody,
      num physicsBodyType]);
  external Image image(num x, num y, [dynamic key, dynamic frame, Group group]);
  external Group physicsGroup(
      [num physicsBodyType, dynamic parent, String name, bool addToStage]);
  external Plugin plugin(Plugin plugin,
      [dynamic parameter1,
      dynamic parameter2,
      dynamic parameter3,
      dynamic parameter4,
      dynamic parameter5]);
  external RenderTexture renderTexture(
      [num width, num height, String key, bool addToCache]);
  external RetroFont retroFont(String font, num characterWidth,
      num characterHeight, String chars, num charsPerRow,
      [num xSpacing, num ySpacing, num xOffset, num yOffset]);
  external Rope rope(num x, num y, dynamic key,
      [dynamic frame, List<Point> points]);
  external Sound sound(String key, [num volume, bool loop, bool connect]);
  external Sprite sprite(num x, num y,
      [dynamic key, dynamic frame, Group group]);
  external Group spriteBatch(dynamic parent, [String name, bool addToStage]);
  external Text text(num x, num y, String text, dynamic style, [Group group]);
  external Tilemap tilemap(
      [String key, num tileWidth, num tileHeight, num width, num height]);
  external TileSprite tileSprite(num x, num y, num width, num height,
      [dynamic key, dynamic frame, Group group]);
  external Tween tween(dynamic obj);
  external Weapon weapon(
      [num quantity, dynamic key, dynamic frame, Group group]);
  external Video video([String key, String url]);
}

@JS("Phaser.Gamepad")
class Gamepad {
  // @Ignore
  Gamepad.fakeConstructor$();
  external factory Gamepad(Game game);
  external static num get BUTTON_0;
  external static set BUTTON_0(num v);
  external static num get BUTTON_1;
  external static set BUTTON_1(num v);
  external static num get BUTTON_2;
  external static set BUTTON_2(num v);
  external static num get BUTTON_3;
  external static set BUTTON_3(num v);
  external static num get BUTTON_4;
  external static set BUTTON_4(num v);
  external static num get BUTTON_5;
  external static set BUTTON_5(num v);
  external static num get BUTTON_6;
  external static set BUTTON_6(num v);
  external static num get BUTTON_7;
  external static set BUTTON_7(num v);
  external static num get BUTTON_8;
  external static set BUTTON_8(num v);
  external static num get BUTTON_9;
  external static set BUTTON_9(num v);
  external static num get BUTTON_10;
  external static set BUTTON_10(num v);
  external static num get BUTTON_11;
  external static set BUTTON_11(num v);
  external static num get BUTTON_12;
  external static set BUTTON_12(num v);
  external static num get BUTTON_13;
  external static set BUTTON_13(num v);
  external static num get BUTTON_14;
  external static set BUTTON_14(num v);
  external static num get BUTTON_15;
  external static set BUTTON_15(num v);
  external static num get AXIS_0;
  external static set AXIS_0(num v);
  external static num get AXIS_1;
  external static set AXIS_1(num v);
  external static num get AXIS_2;
  external static set AXIS_2(num v);
  external static num get AXIS_3;
  external static set AXIS_3(num v);
  external static num get AXIS_4;
  external static set AXIS_4(num v);
  external static num get AXIS_5;
  external static set AXIS_5(num v);
  external static num get AXIS_6;
  external static set AXIS_6(num v);
  external static num get AXIS_7;
  external static set AXIS_7(num v);
  external static num get AXIS_8;
  external static set AXIS_8(num v);
  external static num get AXIS_9;
  external static set AXIS_9(num v);
  external static num get XBOX360_A;
  external static set XBOX360_A(num v);
  external static num get XBOX360_B;
  external static set XBOX360_B(num v);
  external static num get XBOX360_X;
  external static set XBOX360_X(num v);
  external static num get XBOX360_Y;
  external static set XBOX360_Y(num v);
  external static num get XBOX360_LEFT_BUMPER;
  external static set XBOX360_LEFT_BUMPER(num v);
  external static num get XBOX360_RIGHT_BUMPER;
  external static set XBOX360_RIGHT_BUMPER(num v);
  external static num get XBOX360_LEFT_TRIGGER;
  external static set XBOX360_LEFT_TRIGGER(num v);
  external static num get XBOX360_RIGHT_TRIGGER;
  external static set XBOX360_RIGHT_TRIGGER(num v);
  external static num get XBOX360_BACK;
  external static set XBOX360_BACK(num v);
  external static num get XBOX360_START;
  external static set XBOX360_START(num v);
  external static num get XBOX360_STICK_LEFT_BUTTON;
  external static set XBOX360_STICK_LEFT_BUTTON(num v);
  external static num get XBOX360_STICK_RIGHT_BUTTON;
  external static set XBOX360_STICK_RIGHT_BUTTON(num v);
  external static num get XBOX360_DPAD_LEFT;
  external static set XBOX360_DPAD_LEFT(num v);
  external static num get XBOX360_DPAD_RIGHT;
  external static set XBOX360_DPAD_RIGHT(num v);
  external static num get XBOX360_DPAD_UP;
  external static set XBOX360_DPAD_UP(num v);
  external static num get XBOX360_DPAD_DOWN;
  external static set XBOX360_DPAD_DOWN(num v);
  external static num get XBOX360_STICK_LEFT_X;
  external static set XBOX360_STICK_LEFT_X(num v);
  external static num get XBOX360_STICK_LEFT_Y;
  external static set XBOX360_STICK_LEFT_Y(num v);
  external static num get XBOX360_STICK_RIGHT_X;
  external static set XBOX360_STICK_RIGHT_X(num v);
  external static num get XBOX360_STICK_RIGHT_Y;
  external static set XBOX360_STICK_RIGHT_Y(num v);
  external static num get PS3XC_X;
  external static set PS3XC_X(num v);
  external static num get PS3XC_CIRCLE;
  external static set PS3XC_CIRCLE(num v);
  external static num get PS3XC_SQUARE;
  external static set PS3XC_SQUARE(num v);
  external static num get PS3XC_TRIANGLE;
  external static set PS3XC_TRIANGLE(num v);
  external static num get PS3XC_L1;
  external static set PS3XC_L1(num v);
  external static num get PS3XC_R1;
  external static set PS3XC_R1(num v);
  external static num get PS3XC_L2;
  external static set PS3XC_L2(num v);
  external static num get PS3XC_R2;
  external static set PS3XC_R2(num v);
  external static num get PS3XC_SELECT;
  external static set PS3XC_SELECT(num v);
  external static num get PS3XC_START;
  external static set PS3XC_START(num v);
  external static num get PS3XC_STICK_LEFT_BUTTON;
  external static set PS3XC_STICK_LEFT_BUTTON(num v);
  external static num get PS3XC_STICK_RIGHT_BUTTON;
  external static set PS3XC_STICK_RIGHT_BUTTON(num v);
  external static num get PS3XC_DPAD_UP;
  external static set PS3XC_DPAD_UP(num v);
  external static num get PS3XC_DPAD_DOWN;
  external static set PS3XC_DPAD_DOWN(num v);
  external static num get PS3XC_DPAD_LEFT;
  external static set PS3XC_DPAD_LEFT(num v);
  external static num get PS3XC_DPAD_RIGHT;
  external static set PS3XC_DPAD_RIGHT(num v);
  external static num get PS3XC_STICK_LEFT_X;
  external static set PS3XC_STICK_LEFT_X(num v);
  external static num get PS3XC_STICK_LEFT_Y;
  external static set PS3XC_STICK_LEFT_Y(num v);
  external static num get PS3XC_STICK_RIGHT_X;
  external static set PS3XC_STICK_RIGHT_X(num v);
  external static num get PS3XC_STICK_RIGHT_Y;
  external static set PS3XC_STICK_RIGHT_Y(num v);
  external bool get active;
  external set active(bool v);
  external dynamic get callbackContext;
  external set callbackContext(dynamic v);
  external bool get enabled;
  external set enabled(bool v);
  external Game get game;
  external set game(Game v);
  external Function get onAxisCallBack;
  external set onAxisCallBack(Function v);
  external Function get onConnectCallback;
  external set onConnectCallback(Function v);
  external Function get onDisconnectCallback;
  external set onDisconnectCallback(Function v);
  external Function get onDownCallback;
  external set onDownCallback(Function v);
  external Function get onFloatCallback;
  external set onFloatCallback(Function v);
  external Function get onUpCallback;
  external set onUpCallback(Function v);
  external SinglePad get pad1;
  external set pad1(SinglePad v);
  external SinglePad get pad2;
  external set pad2(SinglePad v);
  external SinglePad get pad3;
  external set pad3(SinglePad v);
  external SinglePad get pad4;
  external set pad4(SinglePad v);
  external num get padsConnected;
  external set padsConnected(num v);
  external bool get supported;
  external set supported(bool v);
  external void addCallbacks(dynamic context, dynamic callbacks);
  external bool isDown(num buttonCode);
  external bool justPressed(num buttonCode, [num duration]);
  external bool justReleased(num buttonCode, [num duration]);
  external void reset();
  external void setDeadZones(dynamic value);
  external void start();
  external void stop();
  external void update();
}

@JS("Phaser.Graphics")
class Graphics extends Graphics {
  // @Ignore
  Graphics.fakeConstructor$() : super.fakeConstructor$();
  external factory Graphics(Game game, [num x, num y]);
  external num get angle;
  external set angle(num v);
  external bool get alive;
  external set alive(bool v);
  external AnimationManager get animations;
  external set animations(AnimationManager v);
  external bool get autoCull;
  external set autoCull(bool v);
  external dynamic /*Body|P2_Body|Ninja_Body|dynamic*/ get body;
  external set body(dynamic /*Body|P2_Body|Ninja_Body|dynamic*/ v);
  external num get bottom;
  external set bottom(num v);
  external Point get cameraOffset;
  external set cameraOffset(Point v);
  external bool get checkWorldBounds;
  external set checkWorldBounds(bool v);
  external dynamic get components;
  external set components(dynamic v);
  external dynamic get data;
  external set data(dynamic v);
  external bool get debug;
  external set debug(bool v);
  external bool get destroyPhase;
  external set destroyPhase(bool v);
  external bool get exists;
  external set exists(bool v);
  external Events get events;
  external set events(Events v);
  external bool get fixedToCamera;
  external set fixedToCamera(bool v);
  external dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ get key;
  external set key(
      dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ v);
  external bool get fresh;
  external set fresh(bool v);
  external Game get game;
  external set game(Game v);
  external num get height;
  external set height(num v);
  external InputHandler get input;
  external set input(InputHandler v);
  external bool get inputEnabled;
  external set inputEnabled(bool v);
  external bool get inCamera;
  external set inCamera(bool v);
  external bool get inWorld;
  external set inWorld(bool v);
  external num get left;
  external set left(num v);
  external String get name;
  external set name(String v);
  external num get lifespan;
  external set lifespan(num v);
  external num get offsetX;
  external set offsetX(num v);
  external num get offsetY;
  external set offsetY(num v);
  external bool get outOfBoundsKill;
  external set outOfBoundsKill(bool v);
  external bool get pendingDestroy;
  external set pendingDestroy(bool v);
  external num get physicsType;
  external set physicsType(num v);
  external Point get position;
  external set position(Point v);
  external Point get previousPosition;
  external set previousPosition(Point v);
  external num get previousRotation;
  external set previousRotation(num v);
  external num get renderOrderID;
  external set renderOrderID(num v);
  external num get right;
  external set right(num v);
  external num get top;
  external set top(num v);
  external num get type;
  external set type(num v);
  external Point get world;
  external set world(Point v);
  external num get width;
  external set width(num v);
  external num get z;
  external set z(num v);
  external dynamic alignIn(
      dynamic /*Rectangle|Sprite|Image|Text|BitmapText|Button|Graphics|TileSprite*/ container,
      [num position,
      num offsetX,
      num offsetY]);
  external dynamic alignTo(
      dynamic /*Rectangle|Sprite|Image|Text|BitmapText|Button|Graphics|TileSprite*/ container,
      [num position,
      num offsetX,
      num offsetY]);
  external void destroy([bool destroyChildren]);
  external void drawTriangle(List<Point> points, [bool cull]);
  external void drawTriangles(List<dynamic> /*List<Point>|List<num>*/ vertices,
      [List<num> indices, bool cull]);
  external Graphics kill();
  external void postUpdate();
  external void preUpdate();
  external Graphics reset(num x, num y, [num health]);
  external Graphics revive([num health]);
  external void update();
}

@JS("Phaser.Group")
class Group extends DisplayObjectContainer {
  // @Ignore
  Group.fakeConstructor$() : super.fakeConstructor$();
  external factory Group(Game game,
      [PIXI.DisplayObjectContainer parent,
      String name,
      bool addToStage,
      bool enableBody,
      num physicsBodyType]);
  external static num get RETURN_CHILD;
  external static set RETURN_CHILD(num v);
  external static num get RETURN_NONE;
  external static set RETURN_NONE(num v);
  external static num get RETURN_TOTAL;
  external static set RETURN_TOTAL(num v);
  external static num get RETURN_ALL;
  external static set RETURN_ALL(num v);
  external static num get SORT_ASCENDING;
  external static set SORT_ASCENDING(num v);
  external static num get SORT_DESCENDING;
  external static set SORT_DESCENDING(num v);
  external num get alpha;
  external set alpha(num v);
  external num get angle;
  external set angle(num v);
  external bool get alive;
  external set alive(bool v);
  external num get bottom;
  external set bottom(num v);
  external Point get cameraOffset;
  external set cameraOffset(Point v);
  external num get centerX;
  external set centerX(num v);
  external num get centerY;
  external set centerY(num v);
  external dynamic get classType;
  external set classType(dynamic v);
  external dynamic get cursor;
  external set cursor(dynamic v);
  external num get cursorIndex;
  external set cursorIndex(num v);
  external bool get enableBody;
  external set enableBody(bool v);
  external bool get enableBodyDebug;
  external set enableBodyDebug(bool v);
  external bool get exists;
  external set exists(bool v);
  external bool get fixedToCamera;
  external set fixedToCamera(bool v);
  external Game get game;
  external set game(Game v);
  external List<PIXI.DisplayObject> get hash;
  external set hash(List<PIXI.DisplayObject> v);
  external bool get ignoreDestroy;
  external set ignoreDestroy(bool v);
  external bool get inputEnableChildren;
  external set inputEnableChildren(bool v);
  external num get left;
  external set left(num v);
  external num get length;
  external set length(num v);
  external String get name;
  external set name(String v);
  external Signal get onChildInputDown;
  external set onChildInputDown(Signal v);
  external Signal get onChildInputUp;
  external set onChildInputUp(Signal v);
  external Signal get onChildInputOver;
  external set onChildInputOver(Signal v);
  external Signal get onChildInputOut;
  external set onChildInputOut(Signal v);
  external Signal get onDestroy;
  external set onDestroy(Signal v);
  external bool get pendingDestroy;
  external set pendingDestroy(bool v);
  external num get physicsBodyType;
  external set physicsBodyType(num v);
  external num get physicsType;
  external set physicsType(num v);
  external num get physicsSortDirection;
  external set physicsSortDirection(num v);
  external Point get position;
  external set position(Point v);
  external num get right;
  external set right(num v);
  external num get rotation;
  external set rotation(num v);
  external Point get scale;
  external set scale(Point v);
  external num get top;
  external set top(num v);
  external num get total;
  external set total(num v);
  external num get type;
  external set type(num v);
  external bool get visible;
  external set visible(bool v);
  external num get z;
  external set z(num v);
  external dynamic add(dynamic child, [bool silent, num index]);
  external void addAll(
      String property, num amount, bool checkAlive, bool checkVisible);
  external dynamic addAt(dynamic child, num index, [bool silent]);
  external List<dynamic> addMultiple(List<dynamic> children, [bool silent]);
  external bool addToHash(PIXI.DisplayObject child);
  external bool align(num width, num height, num cellWidth, num cellHeight,
      [num position, num offset]);
  external Group alignIn(
      dynamic /*Rectangle|Sprite|Image|Text|BitmapText|Button|Graphics|TileSprite*/ container,
      [num position,
      num offsetX,
      num offsetY]);
  external Group alignTo(
      dynamic /*Rectangle|Sprite|Image|Text|BitmapText|Button|Graphics|TileSprite*/ container,
      [num position,
      num offsetX,
      num offsetY]);
  external dynamic bringToTop(dynamic child);
  external void callAll(String method, dynamic context,
      [dynamic parameters1,
      dynamic parameters2,
      dynamic parameters3,
      dynamic parameters4,
      dynamic parameters5]);
  external void callAllExists(String callback, bool existsValue,
      [dynamic parameters1,
      dynamic parameters2,
      dynamic parameters3,
      dynamic parameters4,
      dynamic parameters5]);
  external void callbackFromArray(dynamic child, Function callback, num length);
  external bool checkAll(List<String> key, dynamic value,
      [bool checkAlive, bool checkVisible, bool force]);
  external bool checkProperty(dynamic child, List<String> key, dynamic value,
      [bool force]);
  external num countDead();
  external num countLiving();
  external dynamic create(num x, num y,
      [dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ key,
      dynamic /*String|num*/ frame,
      bool exists,
      num index]);
  external List<dynamic> createMultiple(
      num quantity, dynamic /*String|List<String>*/ key,
      [dynamic /*dynamic|List<dynamic>*/ frame, bool exists]);
  external void customSort(Function sortHandler, [dynamic context]);
  external void destroy([bool destroyChildren, bool soft]);
  external void divideAll(String property, num amount,
      [bool checkAlive, bool checkVisible]);
  external void forEach(Function callback, dynamic callbackContext,
      [bool checkExists,
      dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external void forEachAlive(Function callback, dynamic callbackContext,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external void forEachDead(Function callback, dynamic callbackContext,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external void forEachExists(Function callback, dynamic callbackContext);
  external ArraySet filter(Function predicate, [bool checkExists]);
  external dynamic /*PIXI.DisplayObject|num*/ getAt(num index);
  external dynamic getBottom();
  external dynamic getByName(String name);
  external dynamic getClosestTo(dynamic object,
      [Function callback, dynamic callbackContext]);
  external dynamic getFirstAlive(
      [bool createIfNull,
      num x,
      num y,
      dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ key,
      dynamic /*String|num*/ frame]);
  external dynamic getFirstDead(
      [bool createIfNull,
      num x,
      num y,
      dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ key,
      dynamic /*String|num*/ frame]);
  external dynamic getFirstExists(bool exists,
      [bool createIfNull,
      num x,
      num y,
      dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ key,
      dynamic /*String|num*/ frame]);
  external dynamic getFurthestFrom(dynamic object,
      [Function callback, dynamic callbackContext]);
  external num getIndex(dynamic child);
  external dynamic getRandom([num startIndex, num length]);
  external dynamic getTop();
  external bool hasProperty(dynamic child, List<String> key);
  external dynamic iterate(String key, dynamic value, num returnType,
      [Function callback,
      dynamic callbackContext,
      dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external Group moveAll(Group group, [bool silent]);
  external dynamic moveDown(dynamic child);
  external dynamic moveUp(dynamic child);
  external void multiplyAll(
      String property, num amount, bool checkAlive, bool checkVisible);
  external void next();
  external void postUpdate();
  external void preUpdate();
  external void previous();
  external bool remove(dynamic child, [bool destroy, bool silent]);
  external void removeAll([bool destroy, bool silent, bool destroyTexture]);
  external void removeBetween(num startIndex,
      [num endIndex, bool destroy, bool silent]);
  external bool removeFromHash(PIXI.DisplayObject child);
  external dynamic replace(dynamic oldChild, dynamic newChild);
  external dynamic resetChild(dynamic child,
      [num x,
      num y,
      dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ key,
      dynamic /*String|num*/ frame]);
  external dynamic resetCursor([num index]);
  external void reverse();
  external dynamic sendToBack(dynamic child);
  external bool JS$set(dynamic child, List<String> key, dynamic value,
      [num operation, bool force]);
  external void setAll(String key, dynamic value,
      [bool checkAlive, bool checkVisible, num operation, bool force]);
  external void setAllChildren(String key, dynamic value,
      [bool checkAlive, bool checkVisible, num operation, bool force]);
  external bool setProperty(dynamic child, List<String> key, dynamic value,
      [num operation, bool force]);
  external void sort([String key, num order]);
  external void subAll(
      String property, num amount, bool checkAlive, bool checkVisible);
  external bool swap(dynamic child1, dynamic child2);
  external void update();
  external void updateZ();
  external void xy(num index, num x, num y);
}

@JS("Phaser.Image")
class Image extends Sprite {
  // @Ignore
  Image.fakeConstructor$() : super.fakeConstructor$();
  external factory Image(Game game, num x, num y,
      dynamic /*String|RenderTexture|BitmapData|PIXI.Texture*/ key,
      [dynamic /*String|num*/ frame]);
  external bool get alive;
  external set alive(bool v);
  external num get angle;
  external set angle(num v);
  external Point get anchor;
  external set anchor(Point v);
  external AnimationManager get animations;
  external set animations(AnimationManager v);
  external bool get autoCull;
  external set autoCull(bool v);
  external num get bottom;
  external set bottom(num v);
  external Point get cameraOffset;
  external set cameraOffset(Point v);
  external num get centerX;
  external set centerX(num v);
  external num get centerY;
  external set centerY(num v);
  external dynamic get components;
  external set components(dynamic v);
  external Rectangle get cropRect;
  external set cropRect(Rectangle v);
  external bool get customRender;
  external set customRender(bool v);
  external dynamic get data;
  external set data(dynamic v);
  external bool get debug;
  external set debug(bool v);
  external num get deltaX;
  external set deltaX(num v);
  external num get deltaY;
  external set deltaY(num v);
  external num get deltaZ;
  external set deltaZ(num v);
  external bool get destroyPhase;
  external set destroyPhase(bool v);
  external Events get events;
  external set events(Events v);
  external bool get exists;
  external set exists(bool v);
  external bool get fixedToCamera;
  external set fixedToCamera(bool v);
  external dynamic /*String|num*/ get frame;
  external set frame(dynamic /*String|num*/ v);
  external String get frameName;
  external set frameName(String v);
  external bool get fresh;
  external set fresh(bool v);
  external Game get game;
  external set game(Game v);
  external bool get inCamera;
  external set inCamera(bool v);
  external InputHandler get input;
  external set input(InputHandler v);
  external bool get inputEnabled;
  external set inputEnabled(bool v);
  external bool get inWorld;
  external set inWorld(bool v);
  external dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ get key;
  external set key(
      dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ v);
  external num get lifespan;
  external set lifespan(num v);
  external num get left;
  external set left(num v);
  external String get name;
  external set name(String v);
  external num get offsetX;
  external set offsetX(num v);
  external num get offsetY;
  external set offsetY(num v);
  external bool get pendingDestroy;
  external set pendingDestroy(bool v);
  external Point get position;
  external set position(Point v);
  external Point get previousPosition;
  external set previousPosition(Point v);
  external num get previousRotation;
  external set previousRotation(num v);
  external num get renderOrderID;
  external set renderOrderID(num v);
  external num get right;
  external set right(num v);
  external Point get scale;
  external set scale(Point v);
  external bool get smoothed;
  external set smoothed(bool v);
  external num get top;
  external set top(num v);
  external num get type;
  external set type(num v);
  external Point get world;
  external set world(Point v);
  external num get z;
  external set z(num v);
  external dynamic alignIn(
      dynamic /*Rectangle|Sprite|Image|Text|BitmapText|Button|Graphics|TileSprite*/ container,
      [num position,
      num offsetX,
      num offsetY]);
  external dynamic alignTo(
      dynamic /*Rectangle|Sprite|Image|Text|BitmapText|Button|Graphics|TileSprite*/ container,
      [num position,
      num offsetX,
      num offsetY]);
  external Image bringToTop();
  external void crop(Rectangle rect, [bool copy]);
  external void destroy([bool destroyChildren]);
  external Image kill();
  external void loadTexture(
      dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ key,
      [dynamic /*String|num*/ frame,
      bool stopAnimation]);
  external void resizeFrame(dynamic parent, num width, num height);
  external Image moveDown();
  external Image moveUp();
  external bool overlap(
      dynamic /*Sprite|Image|TileSprite|Button|PIXI.DisplayObject*/ displayObject);
  external Animation play(String name,
      [num frameRate, bool loop, bool killOnComplete]);
  external void postUpdate();
  external void preUpdate();
  external Image reset(num x, num y, [num health]);
  external void resetFrame();
  external Image revive([num health]);
  external Image sendToBack();
  external void setFrame(Frame frame);
  external void update();
  external void updateCrop();
}

@JS("Phaser.ImageCollection")
class ImageCollection {
  // @Ignore
  ImageCollection.fakeConstructor$();
  external factory ImageCollection(String name, num firstgid,
      [num width, num height, num margin, num spacing, dynamic properties]);
  external String get name;
  external set name(String v);
  external num get firstgid;
  external set firstgid(num v);
  external num get imageWidth;
  external set imageWidth(num v);
  external num get imageHeight;
  external set imageHeight(num v);
  external num get imageMargin;
  external set imageMargin(num v);
  external num get imageSpacing;
  external set imageSpacing(num v);
  external dynamic get properties;
  external set properties(dynamic v);
  external List<dynamic> get images;
  external set images(List<dynamic> v);
  external num get total;
  external set total(num v);
  external void addImage(num gid, String image);
  external bool containsImageIndex(num imageIndex);
}

@JS("Phaser.Input")
class Input {
  // @Ignore
  Input.fakeConstructor$();
  external factory Input(Game game);
  external static num get MAX_POINTERS;
  external static set MAX_POINTERS(num v);
  external static num get MOUSE_OVERRIDES_TOUCH;
  external static set MOUSE_OVERRIDES_TOUCH(num v);
  external static num get MOUSE_TOUCH_COMBINE;
  external static set MOUSE_TOUCH_COMBINE(num v);
  external static num get TOUCH_OVERRIDES_MOUSE;
  external static set TOUCH_OVERRIDES_MOUSE(num v);
  external Pointer get activePointer;
  external set activePointer(Pointer v);
  external Circle get circle;
  external set circle(Circle v);
  external bool get enabled;
  external set enabled(bool v);
  external num get doubleTapRate;
  external set doubleTapRate(num v);
  external Game get game;
  external set game(Game v);
  external Gamepad get gamepad;
  external set gamepad(Gamepad v);
  external CanvasElement get hitCanvas;
  external set hitCanvas(CanvasElement v);
  external CanvasRenderingContext2D get hitContext;
  external set hitContext(CanvasRenderingContext2D v);
  external num get holdRate;
  external set holdRate(num v);
  external ArraySet get interactiveItems;
  external set interactiveItems(ArraySet v);
  external num get justPressedRate;
  external set justPressedRate(num v);
  external num get justReleasedRate;
  external set justReleasedRate(num v);
  external Keyboard get keyboard;
  external set keyboard(Keyboard v);
  external num get maxPointers;
  external set maxPointers(num v);
  external num get minPriorityID;
  external set minPriorityID(num v);
  external Mouse get mouse;
  external set mouse(Mouse v);
  external Pointer get mousePointer;
  external set mousePointer(Pointer v);
  external Func3<Pointer, num, num, List<Null>> get moveCallbacks;
  external set moveCallbacks(Func3<Pointer, num, num, List<Null>> v);
  external MSPointer get mspointer;
  external set mspointer(MSPointer v);
  external num get multiInputOverride;
  external set multiInputOverride(num v);
  external Signal get onDown;
  external set onDown(Signal v);
  external Signal get onHold;
  external set onHold(Signal v);
  external Signal get onTap;
  external set onTap(Signal v);
  external Signal get onUp;
  external set onUp(Signal v);
  external Pointer get pointer1;
  external set pointer1(Pointer v);
  external Pointer get pointer2;
  external set pointer2(Pointer v);
  external Pointer get pointer3;
  external set pointer3(Pointer v);
  external Pointer get pointer4;
  external set pointer4(Pointer v);
  external Pointer get pointer5;
  external set pointer5(Pointer v);
  external Pointer get pointer6;
  external set pointer6(Pointer v);
  external Pointer get pointer7;
  external set pointer7(Pointer v);
  external Pointer get pointer8;
  external set pointer8(Pointer v);
  external Pointer get pointer9;
  external set pointer9(Pointer v);
  external Pointer get pointer10;
  external set pointer10(Pointer v);
  external bool get pollLocked;
  external set pollLocked(bool v);
  external num get pollRate;
  external set pollRate(num v);
  external Point get position;
  external set position(Point v);
  external List<Pointer> get pointer;
  external set pointer(List<Pointer> v);
  external num get recordLimit;
  external set recordLimit(num v);
  external bool get recordPointerHistory;
  external set recordPointerHistory(bool v);
  external num get recordRate;
  external set recordRate(num v);
  external bool get resetLocked;
  external set resetLocked(bool v);
  external Point get scale;
  external set scale(Point v);
  external Point get speed;
  external set speed(Point v);
  external num get tapRate;
  external set tapRate(num v);
  external num get totalActivePointers;
  external set totalActivePointers(num v);
  external num get totalInactivePointers;
  external set totalInactivePointers(num v);
  external Touch get touch;
  external set touch(Touch v);
  external num get worldX;
  external set worldX(num v);
  external num get worldY;
  external set worldY(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external Pointer addPointer();
  external num addMoveCallback(Function callback, dynamic context);
  external void boot();
  external num countActivePointers([num limit]);
  external void deleteMoveCallback(Function callback, [dynamic context]);
  external void destroy();
  external Point getLocalPosition(dynamic displayObject, Pointer pointer);
  external Pointer getPointer([bool isActive]);
  external Pointer getPointerFromId(num pointerID);
  external Pointer getPointerFromIdentifier(num identifier);
  external void hitTest(
      PIXI.DisplayObject displayObject, Pointer pointer, Point localPoint);
  external void reset([bool hard]);
  external void resetSpeed(num x, num y);
  external void setInteractiveCandidateHandler(Function callback,
      [dynamic context]);
  external Pointer startPointer(dynamic event);
  external Pointer stopPointer(dynamic event);
  external void update();
  external Pointer updatePointer(dynamic event);
}

@JS("Phaser.InputHandler")
class InputHandler {
  // @Ignore
  InputHandler.fakeConstructor$();
  external factory InputHandler(Sprite sprite);
  external bool get allowHorizontalDrag;
  external set allowHorizontalDrag(bool v);
  external bool get allowVerticalDrag;
  external set allowVerticalDrag(bool v);
  external Rectangle get boundsRect;
  external set boundsRect(Rectangle v);
  external Sprite get boundsSprite;
  external set boundsSprite(Sprite v);
  external bool get bringToTop;
  external set bringToTop(bool v);
  external Point get downPoint;
  external set downPoint(Point v);
  external num get dragDistanceThreshold;
  external set dragDistanceThreshold(num v);
  external Point get dragOffset;
  external set dragOffset(Point v);
  external bool get dragFromCenter;
  external set dragFromCenter(bool v);
  external bool get draggable;
  external set draggable(bool v);
  external Point get dragStartPoint;
  external set dragStartPoint(Point v);
  external bool get dragStopBlocksInputUp;
  external set dragStopBlocksInputUp(bool v);
  external num get dragTimeThreshold;
  external set dragTimeThreshold(num v);
  external bool get enabled;
  external set enabled(bool v);
  external Game get game;
  external set game(Game v);
  external num globalToLocalX(num x);
  external num globalToLocalY(num y);
  external bool get isDragged;
  external set isDragged(bool v);
  external num get pixelPerfectAlpha;
  external set pixelPerfectAlpha(num v);
  external bool get pixelPerfectClick;
  external set pixelPerfectClick(bool v);
  external bool get pixelPerfectOver;
  external set pixelPerfectOver(bool v);
  external num get priorityID;
  external set priorityID(num v);
  external bool get scaleLayer;
  external set scaleLayer(bool v);
  external Point get snapOffset;
  external set snapOffset(Point v);
  external num get snapOffsetX;
  external set snapOffsetX(num v);
  external num get snapOffsetY;
  external set snapOffsetY(num v);
  external bool get snapOnDrag;
  external set snapOnDrag(bool v);
  external bool get snapOnRelease;
  external set snapOnRelease(bool v);
  external Point get snapPoint;
  external set snapPoint(Point v);
  external num get snapX;
  external set snapX(num v);
  external num get snapY;
  external set snapY(num v);
  external Sprite get sprite;
  external set sprite(Sprite v);
  external bool get useHandCursor;
  external set useHandCursor(bool v);
  external void checkBoundsRect();
  external void checkBoundsSprite();
  external bool checkPixel(num x, num y, [Pointer pointer]);
  external bool checkPointerDown(Pointer pointer, [bool fastTest]);
  external bool checkPointerOver(Pointer pointer, [bool fastTest]);
  external void destroy();
  external void disableDrag();
  external void disableSnap();
  external num downDuration([num pointerId]);
  external void enableDrag(
      [bool lockCenter,
      bool bringToTop,
      bool pixelPerfect,
      num alphaThreshold,
      Rectangle boundsRect,
      Sprite boundsSprite]);
  external void enableSnap(num snapX, num snapY,
      [bool onDrag, bool onRelease, num snapOffsetX, num snapOffsetY]);
  external bool isPixelPerfect();
  external bool justOut([num pointerId, num delay]);
  external bool justOver([num pointerId, num delay]);
  external bool justPressed([num pointerId, num delay]);
  external bool justReleased([num pointerId, num delay]);
  external num overDuration([num pointerId]);
  external bool pointerDown([num pointerId]);
  external bool pointerDragged([num pointerId]);
  external bool pointerOut([num pointerId]);
  external bool pointerOver([num pointerId]);
  external num pointerTimeDown([num pointerId]);
  external num pointerTimeOut([num pointerId]);
  external num pointerTimeOver([num pointerId]);
  external num pointerTimeUp([num pointerId]);
  external bool pointerUp([num pointerId]);
  external num pointerX([num pointerId]);
  external num pointerY([num pointerId]);
  external void reset();
  external void setDragLock([bool allowHorizontal, bool allowVertical]);
  external Sprite start(num priority, bool useHandCursor);
  external void startDrag(Pointer pointer);
  external void stop();
  external void stopDrag(Pointer pointer);
  external void update(Pointer pointer);
  external bool updateDrag(Pointer pointer);
  external bool validForInput(num highestID, num highestRenderID,
      [bool includePixelPerfect]);
}

@JS("Phaser.Key")
class Key {
  // @Ignore
  Key.fakeConstructor$();
  external factory Key(Game game, num keycode);
  external bool get altKey;
  external set altKey(bool v);
  external bool get ctrlKey;
  external set ctrlKey(bool v);
  external num get duration;
  external set duration(num v);
  external bool get enabled;
  external set enabled(bool v);
  external dynamic get event;
  external set event(dynamic v);
  external Game get game;
  external set game(Game v);
  external bool get isDown;
  external set isDown(bool v);
  external bool get isUp;
  external set isUp(bool v);
  external bool get JS$_justDown;
  external set JS$_justDown(bool v);
  external bool get justDown;
  external set justDown(bool v);
  external bool get JS$_justUp;
  external set JS$_justUp(bool v);
  external bool get justUp;
  external set justUp(bool v);
  external num get keyCode;
  external set keyCode(num v);
  external Signal get onDown;
  external set onDown(Signal v);
  external Function get onHoldCallback;
  external set onHoldCallback(Function v);
  external dynamic get onHoldContext;
  external set onHoldContext(dynamic v);
  external Signal get onUp;
  external set onUp(Signal v);
  external num get repeats;
  external set repeats(num v);
  external bool get shiftKey;
  external set shiftKey(bool v);
  external num get timeDown;
  external set timeDown(num v);
  external num get timeUp;
  external set timeUp(num v);
  external bool downDuration([num duration]);
  external void processKeyDown(KeyboardEvent event);
  external void processKeyUp(KeyboardEvent event);
  external void reset([bool hard]);
  external void update();
  external bool upDuration([num duration]);
}

@JS("Phaser.Keyboard")
class Keyboard {
  // @Ignore
  Keyboard.fakeConstructor$();
  external factory Keyboard(Game game);
  external static num get A;
  external static set A(num v);
  external static num get B;
  external static set B(num v);
  external static num get C;
  external static set C(num v);
  external static num get D;
  external static set D(num v);
  external static num get E;
  external static set E(num v);
  external static num get F;
  external static set F(num v);
  external static num get G;
  external static set G(num v);
  external static num get H;
  external static set H(num v);
  external static num get I;
  external static set I(num v);
  external static num get J;
  external static set J(num v);
  external static num get K;
  external static set K(num v);
  external static num get L;
  external static set L(num v);
  external static num get M;
  external static set M(num v);
  external static num get N;
  external static set N(num v);
  external static num get O;
  external static set O(num v);
  external static num get P;
  external static set P(num v);
  external static num get Q;
  external static set Q(num v);
  external static num get R;
  external static set R(num v);
  external static num get S;
  external static set S(num v);
  external static num get T;
  external static set T(num v);
  external static num get U;
  external static set U(num v);
  external static num get V;
  external static set V(num v);
  external static num get W;
  external static set W(num v);
  external static num get X;
  external static set X(num v);
  external static num get Y;
  external static set Y(num v);
  external static num get Z;
  external static set Z(num v);
  external static num get ZERO;
  external static set ZERO(num v);
  external static num get ONE;
  external static set ONE(num v);
  external static num get TWO;
  external static set TWO(num v);
  external static num get THREE;
  external static set THREE(num v);
  external static num get FOUR;
  external static set FOUR(num v);
  external static num get FIVE;
  external static set FIVE(num v);
  external static num get SIX;
  external static set SIX(num v);
  external static num get SEVEN;
  external static set SEVEN(num v);
  external static num get EIGHT;
  external static set EIGHT(num v);
  external static num get NINE;
  external static set NINE(num v);
  external static num get NUMPAD_0;
  external static set NUMPAD_0(num v);
  external static num get NUMPAD_1;
  external static set NUMPAD_1(num v);
  external static num get NUMPAD_2;
  external static set NUMPAD_2(num v);
  external static num get NUMPAD_3;
  external static set NUMPAD_3(num v);
  external static num get NUMPAD_4;
  external static set NUMPAD_4(num v);
  external static num get NUMPAD_5;
  external static set NUMPAD_5(num v);
  external static num get NUMPAD_6;
  external static set NUMPAD_6(num v);
  external static num get NUMPAD_7;
  external static set NUMPAD_7(num v);
  external static num get NUMPAD_8;
  external static set NUMPAD_8(num v);
  external static num get NUMPAD_9;
  external static set NUMPAD_9(num v);
  external static num get NUMPAD_MULTIPLY;
  external static set NUMPAD_MULTIPLY(num v);
  external static num get NUMPAD_ADD;
  external static set NUMPAD_ADD(num v);
  external static num get NUMPAD_ENTER;
  external static set NUMPAD_ENTER(num v);
  external static num get NUMPAD_SUBTRACT;
  external static set NUMPAD_SUBTRACT(num v);
  external static num get NUMPAD_DECIMAL;
  external static set NUMPAD_DECIMAL(num v);
  external static num get NUMPAD_DIVIDE;
  external static set NUMPAD_DIVIDE(num v);
  external static num get F1;
  external static set F1(num v);
  external static num get F2;
  external static set F2(num v);
  external static num get F3;
  external static set F3(num v);
  external static num get F4;
  external static set F4(num v);
  external static num get F5;
  external static set F5(num v);
  external static num get F6;
  external static set F6(num v);
  external static num get F7;
  external static set F7(num v);
  external static num get F8;
  external static set F8(num v);
  external static num get F9;
  external static set F9(num v);
  external static num get F10;
  external static set F10(num v);
  external static num get F11;
  external static set F11(num v);
  external static num get F12;
  external static set F12(num v);
  external static num get F13;
  external static set F13(num v);
  external static num get F14;
  external static set F14(num v);
  external static num get F15;
  external static set F15(num v);
  external static num get COLON;
  external static set COLON(num v);
  external static num get EQUALS;
  external static set EQUALS(num v);
  external static num get COMMA;
  external static set COMMA(num v);
  external static num get UNDERSCORE;
  external static set UNDERSCORE(num v);
  external static num get PERIOD;
  external static set PERIOD(num v);
  external static num get QUESTION_MARK;
  external static set QUESTION_MARK(num v);
  external static num get TILDE;
  external static set TILDE(num v);
  external static num get OPEN_BRACKET;
  external static set OPEN_BRACKET(num v);
  external static num get BACKWARD_SLASH;
  external static set BACKWARD_SLASH(num v);
  external static num get CLOSED_BRACKET;
  external static set CLOSED_BRACKET(num v);
  external static num get QUOTES;
  external static set QUOTES(num v);
  external static num get BACKSPACE;
  external static set BACKSPACE(num v);
  external static num get TAB;
  external static set TAB(num v);
  external static num get CLEAR;
  external static set CLEAR(num v);
  external static num get ENTER;
  external static set ENTER(num v);
  external static num get SHIFT;
  external static set SHIFT(num v);
  external static num get CONTROL;
  external static set CONTROL(num v);
  external static num get ALT;
  external static set ALT(num v);
  external static num get CAPS_LOCK;
  external static set CAPS_LOCK(num v);
  external static num get ESC;
  external static set ESC(num v);
  external static num get SPACEBAR;
  external static set SPACEBAR(num v);
  external static num get PAGE_UP;
  external static set PAGE_UP(num v);
  external static num get PAGE_DOWN;
  external static set PAGE_DOWN(num v);
  external static num get END;
  external static set END(num v);
  external static num get HOME;
  external static set HOME(num v);
  external static num get LEFT;
  external static set LEFT(num v);
  external static num get UP;
  external static set UP(num v);
  external static num get RIGHT;
  external static set RIGHT(num v);
  external static num get DOWN;
  external static set DOWN(num v);
  external static num get INSERT;
  external static set INSERT(num v);
  external static num get DELETE;
  external static set DELETE(num v);
  external static num get HELP;
  external static set HELP(num v);
  external static num get NUM_LOCK;
  external static set NUM_LOCK(num v);
  external static num get PLUS;
  external static set PLUS(num v);
  external static num get MINUS;
  external static set MINUS(num v);
  external dynamic get callbackContext;
  external set callbackContext(dynamic v);
  external bool get enabled;
  external set enabled(bool v);
  external dynamic get event;
  external set event(dynamic v);
  external Game get game;
  external set game(Game v);
  external String get lastChar;
  external set lastChar(String v);
  external Key get lastKey;
  external set lastKey(Key v);
  external Function get onDownCallback;
  external set onDownCallback(Function v);
  external Function get onPressCallback;
  external set onPressCallback(Function v);
  external Function get onUpCallback;
  external set onUpCallback(Function v);
  external dynamic get pressEvent;
  external set pressEvent(dynamic v);
  external void addCallbacks(dynamic context,
      [Function onDown, Function onUp, Function onPress]);
  external Key addKey(num keycode);
  external dynamic addKeys(dynamic keys);
  external void addKeyCapture(dynamic keycode);
  external CursorKeys createCursorKeys();
  external void clearCaptures();
  external void destroy();
  external bool downDuration(num keycode, [num duration]);
  external bool isDown(num keycode);
  external void processKeyDown(KeyboardEvent event);
  external void processKeyPress(KeyboardEvent event);
  external void processKeyUp(KeyboardEvent event);
  external void removeKey(num keycode);
  external void removeKeyCapture(num keycode);
  external void reset([bool hard]);
  external void start();
  external void stop();
  external void update();
  external bool upDuration(num keycode, [num duration]);
}

@JS("Phaser.KeyCode")
class KeyCode {
  // @Ignore
  KeyCode.fakeConstructor$();
  external static num get A;
  external static set A(num v);
  external static num get B;
  external static set B(num v);
  external static num get C;
  external static set C(num v);
  external static num get D;
  external static set D(num v);
  external static num get E;
  external static set E(num v);
  external static num get F;
  external static set F(num v);
  external static num get G;
  external static set G(num v);
  external static num get H;
  external static set H(num v);
  external static num get I;
  external static set I(num v);
  external static num get J;
  external static set J(num v);
  external static num get K;
  external static set K(num v);
  external static num get L;
  external static set L(num v);
  external static num get M;
  external static set M(num v);
  external static num get N;
  external static set N(num v);
  external static num get O;
  external static set O(num v);
  external static num get P;
  external static set P(num v);
  external static num get Q;
  external static set Q(num v);
  external static num get R;
  external static set R(num v);
  external static num get S;
  external static set S(num v);
  external static num get T;
  external static set T(num v);
  external static num get U;
  external static set U(num v);
  external static num get V;
  external static set V(num v);
  external static num get W;
  external static set W(num v);
  external static num get X;
  external static set X(num v);
  external static num get Y;
  external static set Y(num v);
  external static num get Z;
  external static set Z(num v);
  external static num get ZERO;
  external static set ZERO(num v);
  external static num get ONE;
  external static set ONE(num v);
  external static num get TWO;
  external static set TWO(num v);
  external static num get THREE;
  external static set THREE(num v);
  external static num get FOUR;
  external static set FOUR(num v);
  external static num get FIVE;
  external static set FIVE(num v);
  external static num get SIX;
  external static set SIX(num v);
  external static num get SEVEN;
  external static set SEVEN(num v);
  external static num get EIGHT;
  external static set EIGHT(num v);
  external static num get NINE;
  external static set NINE(num v);
  external static num get NUMPAD_0;
  external static set NUMPAD_0(num v);
  external static num get NUMPAD_1;
  external static set NUMPAD_1(num v);
  external static num get NUMPAD_2;
  external static set NUMPAD_2(num v);
  external static num get NUMPAD_3;
  external static set NUMPAD_3(num v);
  external static num get NUMPAD_4;
  external static set NUMPAD_4(num v);
  external static num get NUMPAD_5;
  external static set NUMPAD_5(num v);
  external static num get NUMPAD_6;
  external static set NUMPAD_6(num v);
  external static num get NUMPAD_7;
  external static set NUMPAD_7(num v);
  external static num get NUMPAD_8;
  external static set NUMPAD_8(num v);
  external static num get NUMPAD_9;
  external static set NUMPAD_9(num v);
  external static num get NUMPAD_MULTIPLY;
  external static set NUMPAD_MULTIPLY(num v);
  external static num get NUMPAD_ADD;
  external static set NUMPAD_ADD(num v);
  external static num get NUMPAD_ENTER;
  external static set NUMPAD_ENTER(num v);
  external static num get NUMPAD_SUBTRACT;
  external static set NUMPAD_SUBTRACT(num v);
  external static num get NUMPAD_DECIMAL;
  external static set NUMPAD_DECIMAL(num v);
  external static num get NUMPAD_DIVIDE;
  external static set NUMPAD_DIVIDE(num v);
  external static num get F1;
  external static set F1(num v);
  external static num get F2;
  external static set F2(num v);
  external static num get F3;
  external static set F3(num v);
  external static num get F4;
  external static set F4(num v);
  external static num get F5;
  external static set F5(num v);
  external static num get F6;
  external static set F6(num v);
  external static num get F7;
  external static set F7(num v);
  external static num get F8;
  external static set F8(num v);
  external static num get F9;
  external static set F9(num v);
  external static num get F10;
  external static set F10(num v);
  external static num get F11;
  external static set F11(num v);
  external static num get F12;
  external static set F12(num v);
  external static num get F13;
  external static set F13(num v);
  external static num get F14;
  external static set F14(num v);
  external static num get F15;
  external static set F15(num v);
  external static num get COLON;
  external static set COLON(num v);
  external static num get EQUALS;
  external static set EQUALS(num v);
  external static num get COMMA;
  external static set COMMA(num v);
  external static num get UNDERSCORE;
  external static set UNDERSCORE(num v);
  external static num get PERIOD;
  external static set PERIOD(num v);
  external static num get QUESTION_MARK;
  external static set QUESTION_MARK(num v);
  external static num get TILDE;
  external static set TILDE(num v);
  external static num get OPEN_BRACKET;
  external static set OPEN_BRACKET(num v);
  external static num get BACKWARD_SLASH;
  external static set BACKWARD_SLASH(num v);
  external static num get CLOSED_BRACKET;
  external static set CLOSED_BRACKET(num v);
  external static num get QUOTES;
  external static set QUOTES(num v);
  external static num get BACKSPACE;
  external static set BACKSPACE(num v);
  external static num get TAB;
  external static set TAB(num v);
  external static num get CLEAR;
  external static set CLEAR(num v);
  external static num get ENTER;
  external static set ENTER(num v);
  external static num get SHIFT;
  external static set SHIFT(num v);
  external static num get CONTROL;
  external static set CONTROL(num v);
  external static num get ALT;
  external static set ALT(num v);
  external static num get CAPS_LOCK;
  external static set CAPS_LOCK(num v);
  external static num get ESC;
  external static set ESC(num v);
  external static num get SPACEBAR;
  external static set SPACEBAR(num v);
  external static num get PAGE_UP;
  external static set PAGE_UP(num v);
  external static num get PAGE_DOWN;
  external static set PAGE_DOWN(num v);
  external static num get END;
  external static set END(num v);
  external static num get HOME;
  external static set HOME(num v);
  external static num get LEFT;
  external static set LEFT(num v);
  external static num get UP;
  external static set UP(num v);
  external static num get RIGHT;
  external static set RIGHT(num v);
  external static num get DOWN;
  external static set DOWN(num v);
  external static num get INSERT;
  external static set INSERT(num v);
  external static num get DELETE;
  external static set DELETE(num v);
  external static num get HELP;
  external static set HELP(num v);
  external static num get NUM_LOCK;
  external static set NUM_LOCK(num v);
  external static num get PLUS;
  external static set PLUS(num v);
  external static num get MINUS;
  external static set MINUS(num v);
}

@JS("Phaser.Line")
class Line {
  // @Ignore
  Line.fakeConstructor$();
  external factory Line([num x1, num y1, num x2, num y2]);
  external num get angle;
  external set angle(num v);
  external Point get end;
  external set end(Point v);
  external num get height;
  external set height(num v);
  external num get left;
  external set left(num v);
  external num get length;
  external set length(num v);
  external num get normalAngle;
  external set normalAngle(num v);
  external num get normalX;
  external set normalX(num v);
  external num get normalY;
  external set normalY(num v);
  external num get perpSlope;
  external set perpSlope(num v);
  external num get right;
  external set right(num v);
  external num get slope;
  external set slope(num v);
  external Point get start;
  external set start(Point v);
  external num get top;
  external set top(num v);
  external num get type;
  external set type(num v);
  external num get width;
  external set width(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external static Point intersectsPoints(Point a, Point b, Point e, Point f,
      [bool asSegment, Point result]);
  /*external static Point intersects(Line a, Line b, [bool asSegment, Point result]);*/
  /*external Point intersects(Line line, [bool asSegment, Point result]);*/
  external Point intersects(Line a_line,
      [dynamic /*Line|bool*/ b_asSegment,
      dynamic /*bool|Point*/ asSegment_result,
      Point result]);
  external static bool intersectsRectangle(Line line, Rectangle rect);
  /*external static num reflect(Line a, Line b);*/
  /*external num reflect(Line line);*/
  external num reflect(Line a_line, [Line b]);
  external Line centerOn(num x, num y);
  external Line clone(Line output);
  external List<dynamic> coordinatesOnLine(num stepRate, List<dynamic> results);
  external Line fromAngle(num x, num y, num angle, num length);
  external Line fromSprite(Sprite startSprite, Sprite endSprite,
      [bool useCenter]);
  external Point midPoint([Point out]);
  external bool pointOnLine(num x, num y);
  external bool pointOnSegment(num x, num y);
  external Point random([Point out]);
  external Line rotate(num angle, [bool asDegrees]);
  external Line rotateAround(num x, num y, num angle, [bool asDegrees]);
  external Line setTo([num x1, num y1, num x2, num y2]);
}

@JS("Phaser.LinkedList")
class LinkedList {
  // @Ignore
  LinkedList.fakeConstructor$();
  external dynamic get first;
  external set first(dynamic v);
  external dynamic get last;
  external set last(dynamic v);
  external dynamic get next;
  external set next(dynamic v);
  external dynamic get prev;
  external set prev(dynamic v);
  external num get total;
  external set total(num v);
  external dynamic add(dynamic item);
  external void callAll(Function callback);
  external void remove(dynamic item);
  external void reset();
}

@JS("Phaser.Loader")
class Loader {
  // @Ignore
  Loader.fakeConstructor$();
  external factory Loader(Game game);
  external static num get PHYSICS_LIME_CORONA_JSON;
  external static set PHYSICS_LIME_CORONA_JSON(num v);
  external static num get PHYSICS_PHASER_JSON;
  external static set PHYSICS_PHASER_JSON(num v);
  external static num get TEXTURE_ATLAS_JSON_ARRAY;
  external static set TEXTURE_ATLAS_JSON_ARRAY(num v);
  external static num get TEXTURE_ATLAS_JSON_HASH;
  external static set TEXTURE_ATLAS_JSON_HASH(num v);
  external static num get TEXTURE_ATLAS_XML_STARLING;
  external static set TEXTURE_ATLAS_XML_STARLING(num v);
  external static num get TEXTURE_ATLAS_JSON_PYXEL;
  external static set TEXTURE_ATLAS_JSON_PYXEL(num v);
  external String get baseURL;
  external set baseURL(String v);
  external Cache get cache;
  external set cache(Cache v);
  external dynamic /*bool|String*/ get crossOrigin;
  external set crossOrigin(dynamic /*bool|String*/ v);
  external bool get enableParallel;
  external set enableParallel(bool v);
  external Game get game;
  external set game(Game v);
  external bool get hasLoaded;
  external set hasLoaded(bool v);
  external bool get isLoading;
  external set isLoading(bool v);
  external num get maxParallelDownloads;
  external set maxParallelDownloads(num v);
  external Signal get onFileStart;
  external set onFileStart(Signal v);
  external Signal get onFileComplete;
  external set onFileComplete(Signal v);
  external Signal get onFileError;
  external set onFileError(Signal v);
  external Signal get onLoadComplete;
  external set onLoadComplete(Signal v);
  external Signal get onLoadStart;
  external set onLoadStart(Signal v);
  external Signal get onPackComplete;
  external set onPackComplete(Signal v);
  external String get path;
  external set path(String v);
  external dynamic get preloadSprite;
  external set preloadSprite(dynamic v);
  external num get progress;
  external set progress(num v);
  external num get progressFloat;
  external set progressFloat(num v);
  external bool get resetLocked;
  external set resetLocked(bool v);
  external bool get useXDomainRequest;
  external set useXDomainRequest(bool v);
  external void asyncComplete(dynamic file, [String errorMessage]);
  external Loader addSyncPoint(String type, String key);
  external Loader addToFileList(String type, String key,
      [String url, dynamic properties, bool overwrite, String extension]);
  external Loader atlas(String key,
      [String textureURL, String atlasURL, dynamic atlasData, num format]);
  external Loader atlasJSONArray(String key,
      [String textureURL, String atlasURL, dynamic atlasData]);
  external Loader atlasJSONHash(String key,
      [String textureURL, String atlasURL, dynamic atlasData]);
  external Loader atlasXML(String key,
      [String textureURL, String atlasURL, dynamic atlasData]);
  external Loader audio(
      String key, dynamic /*String|List<String>|dynamic*/ urls,
      [bool autoDecode]);
  external Loader audiosprite(String key, List<String> urls,
      [String jsonURL, dynamic /*String|dynamic*/ jsonData, bool autoDecode]);
  external Loader binary(String key,
      [String url, Function callback, dynamic callbackContext]);
  external Loader bitmapFont(String key,
      [String textureURL,
      String atlasURL,
      dynamic atlasData,
      num xSpacing,
      num ySpacing]);
  external bool checkKeyExists(String type, String key);
  external void csvLoadComplete(dynamic file, HttpRequest xhr);
  external void fileComplete(dynamic file, HttpRequest xhr);
  external void fileError(dynamic file, HttpRequest xhr, String reason);
  external void finishedLoading([bool abnormal]);
  external dynamic getAsset(String type, String key);
  external num getAssetIndex(String type, String key);
  external void getAudioURL(List<dynamic> urls);
  external Loader image(String key, [String url, bool overwrite]);
  external Loader images(List<String> keys, [List<String> urls]);
  external Loader json(String key, [String url, bool overwrite]);
  external void jsonLoadComplete(dynamic file, HttpRequest xhr);
  external void loadAudioTag(dynamic file);
  external void loadFile(dynamic file);
  external void loadImageTag(dynamic file);
  external Loader pack(String key,
      [String url, dynamic data, dynamic callbackContext]);
  external XmlDocument parseXml(String data);
  external Loader physics(String key,
      [String url, dynamic data, String format]);
  external void processLoadQueue();
  external void processPack(dynamic pack);
  external void removeAll();
  external void removeFile(String type, String key);
  external void replaceInFileList(
      String type, String key, String url, dynamic properties);
  external void reset([bool hard, bool clearEvents]);
  external void resize();
  external Loader script(String key,
      [String url, Function callback, dynamic callbackContext]);
  external Loader shader(String key, [String url, bool overwrite]);
  external void setPreloadSprite(dynamic /*Sprite|Image*/ sprite,
      [num direction]);
  external Loader spritesheet(
      String key, String url, num frameWidth, num frameHeight,
      [num frameMax, num margin, num spacing]);
  external void start();
  external Loader text(String key, [String url, bool overwrite]);
  external Loader tilemap(String key, [String url, dynamic data, num format]);
  external num totalLoadedFiles();
  external num totalLoadedPacks();
  external num totalQueuedFiles();
  external num totalQueuedPacks();
  external String transformUrl(String url, [dynamic file]);
  external void updateProgress();
  external Loader video(
      String key, dynamic /*String|List<String>|dynamic*/ urls,
      [String loadEvent, bool asBlob]);
  external Loader withSyncPoint(Function callback, [dynamic callbackContext]);
  external Loader xml(String key, [String url, bool overwrite]);
  external void xhrLoad(dynamic file, String url, String type, Function onload,
      [Function onerror]);
  external void xhrLoadWithXDR(
      dynamic file, String url, String type, Function onload,
      [Function onerror]);
  external void xmlLoadComplete(dynamic file, HttpRequest xhr);
}

@JS("Phaser.LoaderParser")
class LoaderParser {
  // @Ignore
  LoaderParser.fakeConstructor$();
  external static dynamic bitmapFont(dynamic xml, PIXI.BaseTexture baseTexture,
      [num xSpacing, num ySpacing]);
  external static dynamic xmlBitmapFont(
      dynamic xml, PIXI.BaseTexture baseTexture,
      [num xSpacing, num ySpacing]);
  external static dynamic jsonBitmapFont(
      dynamic json, PIXI.BaseTexture baseTexture,
      [num xSpacing, num ySpacing]);
}

@JS("Phaser.Matrix")
class Matrix extends Matrix {
  // @Ignore
  Matrix.fakeConstructor$() : super.fakeConstructor$();
  external num get a;
  external set a(num v);
  external num get b;
  external set b(num v);
  external num get c;
  external set c(num v);
  external num get d;
  external set d(num v);
  external num get tx;
  external set tx(num v);
  external num get ty;
  external set ty(num v);
  external num get type;
  external set type(num v);
  external factory Matrix([num a, num b, num c, num d, num tx, num ty]);
  external Point apply(Point pos, [Point newPos]);
  external Point applyInverse(Point pos, [Point newPos]);
  external Matrix clone([Matrix output]);
  external Matrix copyFrom(Matrix matrix);
  external Matrix copyTo(Matrix matrix);
  external Matrix fromArray(List<num> array);
  external Matrix setTo(num a, num b, num c, num d, num tx, num ty);
  external List<num> toArray([bool transpose, List<num> array]);
  external Matrix translate(num x, num y);
  external Matrix scale(num x, num y);
  external Matrix rotate(num angle);
  external Matrix append(Matrix matrix);
  external Matrix identity();
}

@JS("Phaser.Math")
class Math {
  // @Ignore
  Math.fakeConstructor$();
  external static num angleBetween(num x1, num y1, num x2, num y2);
  external static num angleBetweenPoints(Point point1, Point point2);
  external static num angleBetweenY(num x1, num y1, num x2, num y2);
  external static num angleBetweenPointsY(Point point1, Point point2);
  external static num average(
      [num numbers1, num numbers2, num numbers3, num numbers4, num numbers5]);
  external static num bernstein(num n, num i);
  external static num between(num min, num max);
  external static num bezierInterpolation(List<num> v, num k);
  external static num catmullRom(num p0, num p1, num p2, num p3, num t);
  external static num catmullRomInterpolation(List<num> v, num k);
  external static num ceilTo(num value, [num place, num base]);
  external static num clamp(num x, num a, num b);
  external static num clampBottom(num x, num a);
  external static num degToRad(num degrees);
  external static num difference(num a, num b);
  external static num distance(num x1, num y1, num x2, num y2);
  external static num distanceSq(num x1, num y1, num x2, num y2);
  external static num distancePow(num xy, num y1, num x2, num y2, [num pow]);
  external static num factorial(num value);
  external static num floorTo(num value, num place, num base);
  external static bool fuzzyCeil(num val, [num epsilon]);
  external static bool fuzzyEqual(num a, num b, [num epsilon]);
  /*external static bool fuzzyLessThan(num a, num b, [num epsilon]);*/
  /*external static bool fuzzyLessThan(num a, num b, [num epsilon]);*/
  external bool fuzzyLessThan(num a, num b, [num epsilon]);
  external static bool fuzzyFloor(num val, [num epsilon]);
  external static bool fuzzyGreaterThan(num a, num b, [num epsilon]);
  external static bool isEven(num n);
  external static bool isOdd(num n);
  external static num linear(num p0, num p1, num t);
  external static num linearInterpolation(List<num> v, num k);
  external static num mapLinear(num x, num a1, num a2, num b1, num b2);
  external static num max(
      [num numbers1, num numbers2, num numbers3, num numbers4, num numbers5]);
  external static num maxAdd(num value, num amount, num max);
  external static num maxProperty(
      [num numbers1, num numbers2, num numbers3, num numbers4, num numbers5]);
  external static num min(
      [num numbers1, num numbers2, num numbers3, num numbers4, num numbers5]);
  external static num minProperty(
      [num numbers1, num numbers2, num numbers3, num numbers4, num numbers5]);
  external static num minSub(num value, num amount, num min);
  external static num normalizeAngle(num angle, [bool radians]);
  external static num percent(num a, num b, [num base]);
  external static num p2px(num v);
  external static num get PI2;
  external static set PI2(num v);
  external static num radToDeg(num radians);
  external static num reverseAngle(num angleRed);
  external static num rotateToAngle(num currentAngle, num targetAngle,
      [num lerp]);
  external static num roundAwayFromZero(num value);
  external static num roundTo(num value, [num place, num base]);
  external static num shear(num n);
  external static num sign(num x);
  external static dynamic /*{ sin: number[]; cos: number[]; }*/ sinCosGenerator(
      num length,
      [num sinAmplitude,
      num cosAmplitude,
      num frequency]);
  external static num smootherstep(num x, num min, num max);
  external static num smoothstep(num x, num min, num max);
  external static num snapTo(num input, num gap, [num start]);
  external static num snapToCeil(num input, num gap, [num start]);
  external static num snapToFloor(num input, num gap, [num start]);
  external static bool within(num a, num b, num tolerance);
  external static num wrap(num value, num min, num max);
  external static num wrapAngle(num angle, [bool radians]);
  external static num wrapValue(num value, num amount, num max);
}

@anonymous
@JS()
abstract class WheelEventProxy {
  external WheelEventProxy bindEvent(dynamic event);
  external String get type;
  external set type(String v);
  external num get deltaMode;
  external set deltaMode(num v);
  external num get deltaX;
  external set deltaX(num v);
  external num get deltaY;
  external set deltaY(num v);
  external num get deltaZ;
  external set deltaZ(num v);
}

@JS("Phaser.Mouse")
class Mouse {
  // @Ignore
  Mouse.fakeConstructor$();
  external factory Mouse(Game game);
  external static num get NO_BUTTON;
  external static set NO_BUTTON(num v);
  external static num get LEFT_BUTTON;
  external static set LEFT_BUTTON(num v);
  external static num get MIDDLE_BUTTON;
  external static set MIDDLE_BUTTON(num v);
  external static num get RIGHT_BUTTON;
  external static set RIGHT_BUTTON(num v);
  external static num get BACK_BUTTON;
  external static set BACK_BUTTON(num v);
  external static num get FORWARD_BUTTON;
  external static set FORWARD_BUTTON(num v);
  external static num get WHEEL_DOWN;
  external static set WHEEL_DOWN(num v);
  external static num get WHEEL_UP;
  external static set WHEEL_UP(num v);
  external num get button;
  external set button(num v);
  external dynamic get callbackContext;
  external set callbackContext(dynamic v);
  external bool get capture;
  external set capture(bool v);
  external bool get enabled;
  external set enabled(bool v);
  external MouseEvent get event;
  external set event(MouseEvent v);
  external Game get game;
  external set game(Game v);
  external Input get input;
  external set input(Input v);
  external bool get locked;
  external set locked(bool v);
  external VoidFunc1<MouseEvent> get mouseDownCallback;
  external set mouseDownCallback(VoidFunc1<MouseEvent> v);
  external VoidFunc1<MouseEvent> get mouseOutCallback;
  external set mouseOutCallback(VoidFunc1<MouseEvent> v);
  external VoidFunc1<MouseEvent> get mouseOverCallback;
  external set mouseOverCallback(VoidFunc1<MouseEvent> v);
  external VoidFunc1<MouseEvent> get mouseUpCallback;
  external set mouseUpCallback(VoidFunc1<MouseEvent> v);
  external VoidFunc1<MouseEvent> get mouseWheelCallback;
  external set mouseWheelCallback(VoidFunc1<MouseEvent> v);
  external VoidFunc1<MouseEvent> get JS$_onMouseDown;
  external set JS$_onMouseDown(VoidFunc1<MouseEvent> v);
  external VoidFunc1<MouseEvent> get JS$_onMouseMove;
  external set JS$_onMouseMove(VoidFunc1<MouseEvent> v);
  external VoidFunc1<MouseEvent> get JS$_onMouseUp;
  external set JS$_onMouseUp(VoidFunc1<MouseEvent> v);
  external VoidFunc1<MouseEvent> get JS$_onMouseOut;
  external set JS$_onMouseOut(VoidFunc1<MouseEvent> v);
  external VoidFunc1<MouseEvent> get JS$_onMouseOver;
  external set JS$_onMouseOver(VoidFunc1<MouseEvent> v);
  external VoidFunc1<MouseEvent> get JS$_onMouseWheel;
  external set JS$_onMouseWheel(VoidFunc1<MouseEvent> v);
  external WheelEventProxy get JS$_wheelEvent;
  external set JS$_wheelEvent(WheelEventProxy v);
  external Signal get pointerLock;
  external set pointerLock(Signal v);
  external bool get stopOnGameOut;
  external set stopOnGameOut(bool v);
  external num get wheelDelta;
  external set wheelDelta(num v);
  external void onMouseDown(MouseEvent event);
  external void onMouseMove(MouseEvent event);
  external void onMouseOut(MouseEvent event);
  external void onMouseOver(MouseEvent event);
  external void onMouseUp(MouseEvent event);
  external void onMouseUpGlobal(MouseEvent event);
  external void onMouseWheel(MouseEvent event);
  external void pointerLockChange(MouseEvent event);
  external void releasePointerLock();
  external void requestPointerLock();
  external void start();
  external void stop();
}

@JS("Phaser.MSPointer")
class MSPointer {
  // @Ignore
  MSPointer.fakeConstructor$();
  external factory MSPointer(Game game);
  external num get button;
  external set button(num v);
  external bool get capture;
  external set capture(bool v);
  external dynamic get callbackContext;
  external set callbackContext(dynamic v);
  external MSPointerEvent get event;
  external set event(MSPointerEvent v);
  external Game get game;
  external set game(Game v);
  external Input get input;
  external set input(Input v);
  external VoidFunc1<MSPointerEvent> get onPointerDown;
  external set onPointerDown(VoidFunc1<MSPointerEvent> v);
  external VoidFunc1<MSPointerEvent> get onPointerMove;
  external set onPointerMove(VoidFunc1<MSPointerEvent> v);
  external VoidFunc1<MSPointerEvent> get onPointerUp;
  external set onPointerUp(VoidFunc1<MSPointerEvent> v);
  external VoidFunc1<MSPointerEvent> get mouseDownCallback;
  external set mouseDownCallback(VoidFunc1<MSPointerEvent> v);
  external VoidFunc1<MSPointerEvent> get mouseMoveCallback;
  external set mouseMoveCallback(VoidFunc1<MSPointerEvent> v);
  external VoidFunc1<MSPointerEvent> get mouseUpCallback;
  external set mouseUpCallback(VoidFunc1<MSPointerEvent> v);
  external VoidFunc1<MSPointerEvent> get pointerDownCallback;
  external set pointerDownCallback(VoidFunc1<MSPointerEvent> v);
  external VoidFunc1<MSPointerEvent> get pointerMoveCallback;
  external set pointerMoveCallback(VoidFunc1<MSPointerEvent> v);
  external VoidFunc1<MSPointerEvent> get pointerUpCallback;
  external set pointerUpCallback(VoidFunc1<MSPointerEvent> v);
  external void start();
  external void stop();
}

@JS("Phaser.Net")
class Net {
  // @Ignore
  Net.fakeConstructor$();
  external factory Net(Game game);
  external Game get game;
  external set game(Game v);
  external bool checkDomainName(String domain);
  external String decodeURI(String value);
  external String getHostName();
  external String getQueryString([String parameter]);
  external String updateQueryString(String key, dynamic value,
      [bool redirect, String url]);
}

@JS("Phaser.Particle")
class Particle extends Sprite {
  // @Ignore
  Particle.fakeConstructor$() : super.fakeConstructor$();
  external factory Particle(Game game, num x, num y,
      [dynamic key, dynamic frame]);
  external bool get fresh;
  external set fresh(bool v);
  external void onEmit();
  external Particle reset(num x, num y, [num health]);
  external void setAlphaData(List<dynamic> data);
  external void setScaleData(List<dynamic> data);
  external void update();
}

@JS("Phaser.Particles")
class Particles {
  // @Ignore
  Particles.fakeConstructor$();
  external factory Particles(Game game);
  external dynamic get emitters;
  external set emitters(dynamic v);
  external Game get game;
  external set game(Game v);
  external num get ID;
  external set ID(num v);
  external Emitter add(Emitter emitter);
  external void remove(Emitter emitter);
  external void update();
}

// Module Particles

// Module Arcade
@JS("Phaser.Particles.Arcade.Emitter")
class Emitter extends Group {
  // @Ignore
  Emitter.fakeConstructor$() : super.fakeConstructor$();
  external factory Emitter(Game game, [num x, num y, num maxParticles]);
  external List<dynamic> get alphaData;
  external set alphaData(List<dynamic> v);
  external bool get autoAlpha;
  external set autoAlpha(bool v);
  external bool get autoScale;
  external set autoScale(bool v);
  external num get angle;
  external set angle(num v);
  external num get angularDrag;
  external set angularDrag(num v);
  external num get bottom;
  external set bottom(num v);
  external Point get bounce;
  external set bounce(Point v);
  external num get emitX;
  external set emitX(num v);
  external num get emitY;
  external set emitY(num v);
  external bool get exists;
  external set exists(bool v);
  external num get frequency;
  external set frequency(num v);
  external num get gravity;
  external set gravity(num v);
  external Group get group;
  external set group(Group v);
  external num get height;
  external set height(num v);
  external num get left;
  external set left(num v);
  external num get lifespan;
  external set lifespan(num v);
  external num get maxParticles;
  external set maxParticles(num v);
  external num get maxParticleScale;
  external set maxParticleScale(num v);
  external Point get maxParticleSpeed;
  external set maxParticleSpeed(Point v);
  external num get maxRotation;
  external set maxRotation(num v);
  external num get minParticleScale;
  external set minParticleScale(num v);
  external Point get minParticleSpeed;
  external set minParticleSpeed(Point v);
  external num get minRotation;
  external set minRotation(num v);
  external String get name;
  external set name(String v);
  external bool get on;
  external set on(bool v);
  external Point get particleAnchor;
  external set particleAnchor(Point v);
  external bool get particleBringToTop;
  external set particleBringToTop(bool v);
  external bool get particleSendToBack;
  external set particleSendToBack(bool v);
  external dynamic get particleClass;
  external set particleClass(dynamic v);
  external Point get particleDrag;
  external set particleDrag(Point v);
  external num get physicsType;
  external set physicsType(num v);
  external Point get position;
  external set position(Point v);
  external num get right;
  external set right(num v);
  external List<dynamic> get scaleData;
  external set scaleData(List<dynamic> v);
  external num get top;
  external set top(num v);
  external num get type;
  external set type(num v);
  external num get width;
  external set width(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external Emitter at(dynamic object);
  external bool emitParticle(
      [num x,
      num y,
      dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ key,
      dynamic /*String|num*/ frame]);
  external Emitter explode([num lifespan, num quantity]);
  external Emitter flow(
      [num lifespan, num frequency, num quantity, num total, bool immediate]);
  external Emitter kill();
  external Emitter makeParticles(dynamic keys,
      [dynamic frames, num quantity, bool collide, bool collideWorldBounds]);
  external Particles reset(num x, num y, [num health]);
  external Emitter setAlpha(
      [num min, num max, num rate, num ease(num k), bool yoyo]);
  external Emitter setRotation([num min, num max]);
  external Emitter setScale(
      [num minX,
      num maxX,
      num minY,
      num maxY,
      num rate,
      num ease(num k),
      bool yoyo]);
  external Emitter setSize(num width, num height);
  external Emitter setXSpeed(num min, num max);
  external Emitter setYSpeed(num min, num max);
  external Emitter start(
      [bool explode,
      num lifespan,
      num frequency,
      num quantity,
      bool forceQuantity]);
  external void update();
  external Emitter revive();
}

// End module Arcade

// End module Particles
@JS("Phaser.Physics")
class Physics {
  // @Ignore
  Physics.fakeConstructor$();
  external factory Physics(Game game, [dynamic config]);
  external static num get ARCADE;
  external static set ARCADE(num v);
  external static num get P2JS;
  external static set P2JS(num v);
  external static num get NINJA;
  external static set NINJA(num v);
  external static num get BOX2D;
  external static set BOX2D(num v);
  external static num get CHIPMUNK;
  external static set CHIPMUNK(num v);
  external static num get MATTERJS;
  external static set MATTERJS(num v);
  external Arcade get arcade;
  external set arcade(Arcade v);
  external dynamic get config;
  external set config(dynamic v);
  external Game get game;
  external set game(Game v);
  external Ninja get ninja;
  external set ninja(Ninja v);
  external P2 get p2;
  external set p2(P2 v);
  external dynamic get box2d;
  external set box2d(dynamic v);
  external void clear();
  external void destroy();
  external void enable(dynamic object, [num system, bool debug]);
  external void parseConfig();
  external void preUpdate();
  external void reset();
  external void setBoundsToWorld();
  external void startSystem(num system);
  external void update();
}

@JS("Phaser.Video")
class Video {
  // @Ignore
  Video.fakeConstructor$();
  external Game get game;
  external set game(Game v);
  external String get key;
  external set key(String v);
  external VideoElement get video;
  external set video(VideoElement v);
  external PIXI.BaseTexture get baseTexture;
  external set baseTexture(PIXI.BaseTexture v);
  external PIXI.Texture get texture;
  external set texture(PIXI.Texture v);
  external Frame get textureFrame;
  external set textureFrame(Frame v);
  external num get type;
  external set type(num v);
  external bool get disableTextureUpload;
  external set disableTextureUpload(bool v);
  external bool get dirty;
  external set dirty(bool v);
  external num get currentTime;
  external set currentTime(num v);
  external num get duration;
  external set duration(num v);
  external num get progress;
  external set progress(num v);
  external bool get mute;
  external set mute(bool v);
  external bool get paused;
  external set paused(bool v);
  external bool get volume;
  external set volume(bool v);
  external bool get playbackRate;
  external set playbackRate(bool v);
  external bool get playing;
  external set playing(bool v);
  external bool get loop;
  external set loop(bool v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external dynamic get videoStream;
  external set videoStream(dynamic v);
  external bool get isStreaming;
  external set isStreaming(bool v);
  external BitmapData get snapshot;
  external set snapshot(BitmapData v);
  external num get timeout;
  external set timeout(num v);
  external num get retryLimit;
  external set retryLimit(num v);
  external num get retry;
  external set retry(num v);
  external num get retryInterval;
  external set retryInterval(num v);
  external Signal get onAccess;
  external set onAccess(Signal v);
  external Signal get onError;
  external set onError(Signal v);
  external Signal get onPlay;
  external set onPlay(Signal v);
  external Signal get onComplete;
  external set onComplete(Signal v);
  external Signal get onUpdate;
  external set onUpdate(Signal v);
  external Signal get onTimeout;
  external set onTimeout(Signal v);
  external bool get touchLocked;
  external set touchLocked(bool v);
  external VoidFunc0 get complete;
  external set complete(VoidFunc0 v);
  external factory Video(Game game, [String key, String url]);
  external Video add(dynamic /*Sprite|List<Sprite>|Image|List<Image>*/ object);
  external Image addToWorld(
      [num x, num y, num anchorX, num anchorY, num scaleX, num scaleY]);
  external Video createVideoFromBlob(Blob blob);
  external Video startMediaStream([bool captureAudio, num width, num height]);
  external Video createVideoFromURL(String url, [bool autoplay]);
  external Video changeSource(String src, [bool autoplay]);
  external Video connectToMediaStram(dynamic video, dynamic stream);
  external void destroy();
  external Video play([bool loop, num playbackRate]);
  external void playHandler();
  external void render();
  external void removeVideoElement();
  external void resizeFrame(dynamic parent, num width, num height);
  external void setTouchLock();
  external BitmapData grab([bool clear, num alpha, String blendMode]);
  external void stop();
  external bool unlock();
  external void updateTexture([dynamic event, num width, num height]);
}

// Module Physics
@JS("Phaser.Physics.Arcade")
class Arcade {
  // @Ignore
  Arcade.fakeConstructor$();
  external static num get SORT_NONE;
  external static set SORT_NONE(num v);
  external static num get LEFT_RIGHT;
  external static set LEFT_RIGHT(num v);
  external static num get RIGHT_LEFT;
  external static set RIGHT_LEFT(num v);
  external static num get TOP_BOTTOM;
  external static set TOP_BOTTOM(num v);
  external static num get BOTTOM_TOP;
  external static set BOTTOM_TOP(num v);
  external static num get OVERLAP_BIAS;
  external static set OVERLAP_BIAS(num v);
  external static num get TILE_BIAS;
  external static set TILE_BIAS(num v);
  external factory Arcade(Game game);
  external Rectangle get bounds;
  external set bounds(Rectangle v);
  external dynamic /*{ up?: boolean; down?: boolean; left?: boolean; right?: boolean; }*/ get checkCollision;
  external set checkCollision(
      dynamic /*{ up?: boolean; down?: boolean; left?: boolean; right?: boolean; }*/ v);
  external bool get forceX;
  external set forceX(bool v);
  external Game get game;
  external set game(Game v);
  external Point get gravity;
  external set gravity(Point v);
  external QuadTree get quadTree;
  external set quadTree(QuadTree v);
  external num get maxObjects;
  external set maxObjects(num v);
  external num get maxLevels;
  external set maxLevels(num v);
  external bool get skipQuadTree;
  external set skipQuadTree(bool v);
  external num get sortDirection;
  external set sortDirection(num v);
  external Point accelerationFromRotation(num rotation,
      [num speed, Point point]);
  external num accelerateToObject(dynamic displayObject, dynamic destination,
      [num speed, num xSpeedMax, num ySpeedMax]);
  external num accelerateToPointer(dynamic displayObject,
      [Pointer pointer, num speed, num xSpeedMax, num ySpeedMax]);
  external num accelerateToXY(dynamic displayObject, num x, num y,
      [num speed, num xSpeedMax, num ySpeedMax]);
  external num angleBetween(dynamic source, dynamic target, [bool world]);
  external num angleToPointer(dynamic displayObject,
      [Pointer pointer, bool world]);
  external num angleToXY(dynamic displayObject, num x, num y, [bool world]);
  external bool collide(dynamic object1,
      [dynamic object2,
      Function collideCallback,
      Function processCallback,
      dynamic callbackContext]);
  external num computeVelocity(
      num axis, Body body, num velocity, num acceleration, num drag,
      [num max]);
  external num distanceBetween(dynamic source, dynamic target, [bool world]);
  external num distanceToPointer(dynamic displayObject,
      [Pointer pointer, bool world]);
  external num distanceToXY(dynamic displayObject, num x, num y, [bool world]);
  external void enable(dynamic object, [bool children]);
  external void enableBody(dynamic object);
  external List<Sprite> getObjectsAtLocation(num x, num y, Group group,
      [void callback(dynamic callbackArg, dynamic object),
      dynamic callbackContext,
      dynamic callbackArg]);
  external num getOverlapX(Body body1, Body body2);
  external num getOverlapY(Body body1, Body body2);
  external bool intersects(Body body1, Body body2);
  external num moveToObject(dynamic displayObject, dynamic destination,
      [num speed, num maxTime]);
  external num moveToPointer(dynamic displayObject,
      [num speed, Pointer pointer, num maxTime]);
  external num moveToXY(dynamic displayObject, num x, num y,
      [num speed, num maxTime]);
  external bool overlap(dynamic object1, dynamic object2,
      [Function overlapCallback,
      Function processCallback,
      dynamic callbackContext]);
  external bool processTileSeparationX(Body body, num x);
  external void processTileSeparationY(Body body, num y);
  external void setBounds(num x, num y, num width, num height);
  external void setBoundsToWorld();
  external bool separate(Body body1, Body body2,
      [Function processCallback, dynamic callbackContext, bool overlapOnly]);
  external bool separateX(Body body1, Body body2, bool overlapOnly);
  external bool separateY(Body body1, Body body2, bool overlapOnly);
  external bool separateTile(num i, Body body, Tile tile);
  external void sort(Group group);
  external num tileCheckX(Body body, Tile tile);
  external num tileCheckY(Body body, Tile tile);
  external void updateMotion(Body body);
  external Point velocityFromAngle(num angle, [num speed, Point point]);
  external Point velocityFromRotation(num rotation, [num speed, Point point]);
}

// Module Arcade
@JS("Phaser.Physics.Arcade.Body")
class Body {
  // @Ignore
  Body.fakeConstructor$();
  external factory Body(Sprite sprite);
  external Point get acceleration;
  external set acceleration(Point v);
  external bool get allowGravity;
  external set allowGravity(bool v);
  external bool get allowRotation;
  external set allowRotation(bool v);
  external num get angle;
  external set angle(num v);
  external num get angularAcceleration;
  external set angularAcceleration(num v);
  external num get angularDrag;
  external set angularDrag(num v);
  external num get angularVelocity;
  external set angularVelocity(num v);
  external FaceChoices get blocked;
  external set blocked(FaceChoices v);
  external num get bottom;
  external set bottom(num v);
  external Point get bounce;
  external set bounce(Point v);
  external Point get center;
  external set center(Point v);
  external FaceChoices get checkCollision;
  external set checkCollision(FaceChoices v);
  external bool get collideWorldBounds;
  external set collideWorldBounds(bool v);
  external bool get customSeparateX;
  external set customSeparateX(bool v);
  external bool get customSeparateY;
  external set customSeparateY(bool v);
  external Point get deltaMax;
  external set deltaMax(Point v);
  external bool get dirty;
  external set dirty(bool v);
  external Point get drag;
  external set drag(Point v);
  external bool get embedded;
  external set embedded(bool v);
  external bool get enable;
  external set enable(bool v);
  external num get facing;
  external set facing(num v);
  external Point get friction;
  external set friction(Point v);
  external Game get game;
  external set game(Game v);
  external Point get gravity;
  external set gravity(Point v);
  external num get halfWidth;
  external set halfWidth(num v);
  external num get halfHeight;
  external set halfHeight(num v);
  external num get height;
  external set height(num v);
  external bool get immovable;
  external set immovable(bool v);
  external bool get isCircle;
  external set isCircle(bool v);
  external bool get isMoving;
  external set isMoving(bool v);
  external num get mass;
  external set mass(num v);
  external num get maxAngular;
  external set maxAngular(num v);
  external Point get maxVelocity;
  external set maxVelocity(Point v);
  external bool get moves;
  external set moves(bool v);
  external dynamic get movementCallback;
  external set movementCallback(dynamic v);
  external dynamic get movementCallbackContext;
  external set movementCallbackContext(dynamic v);
  external Point get newVelocity;
  external set newVelocity(Point v);
  external Point get offset;
  external set offset(Point v);
  external Signal get onCollide;
  external set onCollide(Signal v);
  external Signal get onMoveComplete;
  external set onMoveComplete(Signal v);
  external Signal get onOverlap;
  external set onOverlap(Signal v);
  external Signal get onWorldBounds;
  external set onWorldBounds(Signal v);
  external num get overlapX;
  external set overlapX(num v);
  external num get overlapY;
  external set overlapY(num v);
  external num get phase;
  external set phase(num v);
  external Point get position;
  external set position(Point v);
  external num get preRotation;
  external set preRotation(num v);
  external Point get prev;
  external set prev(Point v);
  external num get radius;
  external set radius(num v);
  external num get right;
  external set right(num v);
  external num get rotation;
  external set rotation(num v);
  external bool get skipQuadTree;
  external set skipQuadTree(bool v);
  external num get sourceWidth;
  external set sourceWidth(num v);
  external num get sourceHeight;
  external set sourceHeight(num v);
  external num get speed;
  external set speed(num v);
  external Sprite get sprite;
  external set sprite(Sprite v);
  external bool get stopVelocityOnCollide;
  external set stopVelocityOnCollide(bool v);
  external bool get syncBounds;
  external set syncBounds(bool v);
  external Point get tilePadding;
  external set tilePadding(Point v);
  external FaceChoices get touching;
  external set touching(FaceChoices v);
  external num get type;
  external set type(num v);
  external FaceChoices get wasTouching;
  external set wasTouching(FaceChoices v);
  external num get width;
  external set width(num v);
  external Point get worldBounce;
  external set worldBounce(Point v);
  external Point get velocity;
  external set velocity(Point v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external void checkWorldBounds();
  external num deltaX();
  external num deltaY();
  external num deltaZ();
  external num deltaAbsX();
  external num deltaAbsY();
  external void destroy();
  external dynamic getBounds(dynamic obj);
  external bool hitTest(num x, num y);
  external bool moveFrom(num duration, [num speed, num direction]);
  external bool moveTo(num duration, num distance, [num direction]);
  external bool onFloor();
  external bool onWall();
  external void preUpdate();
  external void postUpdate();
  external void render(dynamic context, Body body, [String color, bool filled]);
  external void renderBodyInfo(Debug debug, Body body);
  external void reset(num x, num y);
  external void setCircle(num radius, [num offsetX, num offsetY]);
  external void setSize(num width, num height, [num offsetX, num offsetY]);
  external bool updateBounds();
}

@JS("Phaser.Physics.Arcade.FaceChoices")
class FaceChoices {
  // @Ignore
  FaceChoices.fakeConstructor$();
  external bool get none;
  external set none(bool v);
  external bool get any;
  external set any(bool v);
  external bool get up;
  external set up(bool v);
  external bool get down;
  external set down(bool v);
  external bool get left;
  external set left(bool v);
  external bool get right;
  external set right(bool v);
}

// End module Arcade
@JS("Phaser.Physics.Ninja")
class Ninja {
  // @Ignore
  Ninja.fakeConstructor$();
  external factory Ninja(Game game);
  external Game get game;
  external set game(Game v);
  external num get gravity;
  external set gravity(num v);
  external Rectangle get bounds;
  external set bounds(Rectangle v);
  external num get maxObjects;
  external set maxObjects(num v);
  external num get maxLevels;
  external set maxLevels(num v);
  external QuadTree get quadTree;
  external set quadTree(QuadTree v);
  external Time get time;
  external set time(Time v);
  external void clearTilemapLayerBodies(Tilemap map, dynamic layer);
  external bool collide(dynamic object1, dynamic object2,
      [Function collideCallback,
      Function processCallback,
      dynamic callbackContext]);
  external List<Ninja_Tile> convertTilemap(
      Tilemap map, dynamic layer, dynamic slopeMap);
  external void enableAABB(dynamic object, [bool children]);
  external void enableCircle(dynamic object, num radius, [bool children]);
  external void enableTile(dynamic object, num id, [bool children]);
  external void enable(dynamic object,
      [num type, num id, num radius, bool children]);
  external void enableBody(dynamic object, [num type, num id, num radius]);
  external bool overlap(dynamic object1, dynamic object2,
      [Function overlapCallback,
      Function processCallback,
      dynamic callbackContext]);
  external bool separate(Ninja_Body body1, Ninja_Body body2,
      [Function processCallback, dynamic callbackContext, bool overlapOnly]);
  external void setBounds(num x, num y, num width, num height);
  external void setBoundsToWorld();
}

// Module Ninja
@JS("Phaser.Physics.Ninja.Body")
class Ninja_Body {
  // @Ignore
  Ninja_Body.fakeConstructor$();
  external factory Ninja_Body(Ninja system, Sprite sprite,
      [num type, num id, num radius, num x, num y, num width, num height]);
  external AABB get aabb;
  external set aabb(AABB v);
  external num get angle;
  external set angle(num v);
  external num get bottom;
  external set bottom(num v);
  external num get bounce;
  external set bounce(num v);
  external FaceChoices get checkCollision;
  external set checkCollision(FaceChoices v);
  external Ninja_Circle get circle;
  external set circle(Ninja_Circle v);
  external bool get collideWorldBounds;
  external set collideWorldBounds(bool v);
  external num get drag;
  external set drag(num v);
  external num get facing;
  external set facing(num v);
  external num get friction;
  external set friction(num v);
  external Game get game;
  external set game(Game v);
  external num get gravityScale;
  external set gravityScale(num v);
  external num get height;
  external set height(num v);
  external bool get immovable;
  external set immovable(bool v);
  external num get maxSpeed;
  external set maxSpeed(num v);
  external num get right;
  external set right(num v);
  external Sprite get sprite;
  external set sprite(Sprite v);
  external Ninja get system;
  external set system(Ninja v);
  external Ninja_Tile get tile;
  external set tile(Ninja_Tile v);
  external FaceChoices get touching;
  external set touching(FaceChoices v);
  external num get type;
  external set type(num v);
  external dynamic get shape;
  external set shape(dynamic v);
  external num get speed;
  external set speed(num v);
  external Point get velocity;
  external set velocity(Point v);
  external FaceChoices get wasTouching;
  external set wasTouching(FaceChoices v);
  external num get width;
  external set width(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num deltaAbsX();
  external num deltaAbsY();
  external num deltaX();
  external num deltaY();
  external void destroy();
  external void setZeroVelocity();
  external void moveTo(num speed, num angle);
  external void moveFrom(num speed, num angle);
  external void moveLeft(num speed);
  external void moveRight(num speed);
  external void moveUp(num speed);
  external void moveDown(num speed);
  external void poseUpdate();
  external void preUpdate();
  external void render(dynamic context, Ninja_Body body,
      [String color, bool filled]);
  external void reset();
}

@JS("Phaser.Physics.Ninja.AABB")
class AABB {
  // @Ignore
  AABB.fakeConstructor$();
  external factory AABB(Ninja_Body body, num x, num y, num width, num height);
  external static num get COL_NONE;
  external static set COL_NONE(num v);
  external static num get COL_AXIS;
  external static set COL_AXIS(num v);
  external static num get COL_OTHER;
  external static set COL_OTHER(num v);
  external dynamic get aabbTileProjections;
  external set aabbTileProjections(dynamic v);
  external Ninja_Body get body;
  external set body(Ninja_Body v);
  external num get height;
  external set height(num v);
  external Point get oldPos;
  external set oldPos(Point v);
  external Point get pos;
  external set pos(Point v);
  external Ninja get system;
  external set system(Ninja v);
  external num get width;
  external set width(num v);
  external Point get velocity;
  external set velocity(Point v);
  external num get xw;
  external set xw(num v);
  external num get yw;
  external set yw(num v);
  external void collideWorldBounds();
  external bool collideAABBVsAABB(AABB aabb);
  external bool collideAABBVsTile(Ninja_Tile tile);
  external void destroy();
  external void integrate();
  external void render(
      dynamic context, num xOffset, num yOffset, String color, bool filled);
  external void reportCollision(num px, num py, num dx, num dy);
  external void reportCollisionVsWorld(
      num px, num py, num dx, num dy, dynamic obj);
  external void reportCollisionVsBody(
      num px, num py, num dx, num dy, dynamic obj);
  external bool resolveTile(num x, num y, AABB body, Ninja_Tile tile);
  external void reverse();
}

@JS("Phaser.Physics.Ninja.Circle")
class Ninja_Circle {
  // @Ignore
  Ninja_Circle.fakeConstructor$();
  external factory Ninja_Circle(Ninja_Body body, num x, num y, num radius);
  external num get COL_NONE;
  external set COL_NONE(num v);
  external num get COL_AXIS;
  external set COL_AXIS(num v);
  external num get COL_OTHER;
  external set COL_OTHER(num v);
  external Ninja_Body get body;
  external set body(Ninja_Body v);
  external dynamic /*JSMap of <num,(x: number, y: number, oH: number, oV: number, obj: Phaser.Physics.Ninja.Circle, t: Phaser.Physics.Ninja.Tile) => number>*/ get circleTileProjections;
  external set circleTileProjections(
      dynamic /*JSMap of <num,(x: number, y: number, oH: number, oV: number, obj: Phaser.Physics.Ninja.Circle, t: Phaser.Physics.Ninja.Tile) => number>*/ v);
  external Point get oldPos;
  external set oldPos(Point v);
  external num get height;
  external set height(num v);
  external Point get pos;
  external set pos(Point v);
  external num get radius;
  external set radius(num v);
  external Ninja get system;
  external set system(Ninja v);
  external num get type;
  external set type(num v);
  external Point get velocity;
  external set velocity(Point v);
  external num get width;
  external set width(num v);
  external num get xw;
  external set xw(num v);
  external num get yw;
  external set yw(num v);
  external bool collideCircleVsTile(Ninja_Tile tile);
  external void collideWorldBounds();
  external void destroy();
  external num distance(num dest, [bool round]);
  external void integrate();
  external void render(
      dynamic context, num xOffset, num yOffset, String color, bool filled);
  external void reportCollisionVsWorld(
      num px, num py, num dx, num dy, dynamic obj);
  external void reportCollisionVsBody(
      num px, num py, num dx, num dy, dynamic obj);
  external bool resolveCircleTile(
      num x, num y, num oH, num oV, Ninja_Circle obj, Ninja_Tile t);
}

@JS("Phaser.Physics.Ninja.TileType")
class TileType {
  external static num get TYPE_EMPTY;
  external static num get TYPE_FULL;
  external static num get TYPE_45DEG;
  external static num get TYPE_CONCAVE;
  external static num get TYPE_CONVEX;
  external static num get TYPE_22DEGs;
  external static num get TYPE_22DEGb;
  external static num get TYPE_67DEGs;
  external static num get TYPE_67DEGb;
  external static num get TYPE_HALF;
}

@JS("Phaser.Physics.Ninja.Tile")
class Ninja_Tile {
  // @Ignore
  Ninja_Tile.fakeConstructor$();
  external factory Ninja_Tile(
      Ninja_Body body, num x, num y, num width, num height,
      [num type]);
  external Ninja_Body get body;
  external set body(Ninja_Body v);
  external num get bottom;
  external set bottom(num v);
  external bool get flipped;
  external set flipped(bool v);
  external num get height;
  external set height(num v);
  external num get id;
  external set id(num v);
  external Point get oldpos;
  external set oldpos(Point v);
  external Point get pos;
  external set pos(Point v);
  external num get right;
  external set right(num v);
  external num get rotation;
  external set rotation(num v);
  external Ninja get system;
  external set system(Ninja v);
  external num /*enum Phaser.Physics.Ninja.TileType*/ get type;
  external set type(num /*enum Phaser.Physics.Ninja.TileType*/ v);
  external Point get velocity;
  external set velocity(Point v);
  external num get width;
  external set width(num v);
  external num get xw;
  external set xw(num v);
  external num get yw;
  external set yw(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external void clear();
  external void collideWorldBounds();
  external void destroy();
  external void integrate();
  external void reportCollisionVsWorld(
      num px, num py, num dx, num dy, dynamic obj);
  external num setType(num id);
}

// End module Ninja
@JS("Phaser.Physics.P2")
class P2 {
  // @Ignore
  P2.fakeConstructor$();
  external factory P2(Game game, [dynamic config]);
  external bool get applyDamping;
  external set applyDamping(bool v);
  external bool get applyGravity;
  external set applyGravity(bool v);
  external bool get applySpringForces;
  external set applySpringForces(bool v);
  external List<P2_Body> get boundsCollidesWith;
  external set boundsCollidesWith(List<P2_Body> v);
  external CollisionGroup get boundsCollisionGroup;
  external set boundsCollisionGroup(CollisionGroup v);
  external dynamic get config;
  external set config(dynamic v);
  external dynamic get callbackContext;
  external set callbackContext(dynamic v);
  external List<CollisionGroup> get collisionGroups;
  external set collisionGroups(List<CollisionGroup> v);
  external ContactMaterial get contactMaterial;
  external set contactMaterial(ContactMaterial v);
  external bool get emitImpactEvent;
  external set emitImpactEvent(bool v);
  external CollisionGroup get everythingCollisionGroup;
  external set everythingCollisionGroup(CollisionGroup v);
  external num get frameRate;
  external set frameRate(num v);
  external num get friction;
  external set friction(num v);
  external Game get game;
  external set game(Game v);
  external InversePointProxy get gravity;
  external set gravity(InversePointProxy v);
  external List<Material> get materials;
  external set materials(List<Material> v);
  external CollisionGroup get nothingCollisionGroup;
  external set nothingCollisionGroup(CollisionGroup v);
  external Signal get onBodyAdded;
  external set onBodyAdded(Signal v);
  external Signal get onBodyRemoved;
  external set onBodyRemoved(Signal v);
  external Signal get onBeginContact;
  external set onBeginContact(Signal v);
  external Signal get onConstraintAdded;
  external set onConstraintAdded(Signal v);
  external Signal get onConstraintRemoved;
  external set onConstraintRemoved(Signal v);
  external Signal get onContactMaterialAdded;
  external set onContactMaterialAdded(Signal v);
  external Signal get onContactMaterialRemoved;
  external set onContactMaterialRemoved(Signal v);
  external Signal get onEndContact;
  external set onEndContact(Signal v);
  external Signal get onSpringAdded;
  external set onSpringAdded(Signal v);
  external Signal get onSpringRemoved;
  external set onSpringRemoved(Signal v);
  external bool get paused;
  external set paused(bool v);
  external Function get postBroaddphaseCallback;
  external set postBroaddphaseCallback(Function v);
  external num get restitution;
  external set restitution(num v);
  external bool get solveConstraints;
  external set solveConstraints(bool v);
  external dynamic get time;
  external set time(dynamic v);
  external num get total;
  external set total(num v);
  external bool get useElapsedTime;
  external set useElapsedTime(bool v);
  external dynamic
      /*{
                left?: Phaser.Physics.P2.Body;
                right?: Phaser.Physics.P2.Body;
                top?: Phaser.Physics.P2.Body;
                bottom?: Phaser.Physics.P2.Body;
            }*/
      get walls;
  external set walls(
      dynamic /*{
                left?: Phaser.Physics.P2.Body;
                right?: Phaser.Physics.P2.Body;
                top?: Phaser.Physics.P2.Body;
                bottom?: Phaser.Physics.P2.Body;
            }*/
      v);
  external p2.World get world;
  external set world(p2.World v);
  external bool addBody(P2_Body body);
  external ContactMaterial addContactMaterial(ContactMaterial material);
  external dynamic/*=T*/ addConstraint/*<T>*/(dynamic/*=T*/ constraint);
  external Spring addSpring(Spring spring);
  external void beginContactHandler(dynamic event);
  external void clear();
  external void clearTilemapLayerBodies(Tilemap map, [dynamic layer]);
  external List<P2_Body> convertCollisionObjects(Tilemap map,
      [dynamic layer, bool addToWorld]);
  external List<P2_Body> convertTilemap(Tilemap map,
      [dynamic layer, bool addToWorld, bool optimize]);
  /*external P2_Body createBody(num x, num y, num mass,
    [bool addToWorld, p2.BodyOptions options, List<List<num>> data]);*/
  /*external P2_Body createBody(num x, num y, num mass,
    [bool addToWorld, p2.BodyOptions options, List<num> data]);*/
  external P2_Body createBody(num x, num y, num mass,
      [bool addToWorld,
      p2.BodyOptions options,
      List<dynamic> /*List<List<num>>|List<num>*/ data]);
  /*external CollisionGroup createCollisionGroup([Group group]);*/
  /*external CollisionGroup createCollisionGroup([Sprite group]);*/
  external CollisionGroup createCollisionGroup(
      [dynamic /*Group|Sprite*/ group]);
  external ContactMaterial createContactMaterial(
      Material materialA, Material materialB,
      [p2.ContactMaterialOptions options]);
  external DistanceConstraint createDistanceConstraint(
      dynamic bodyA, dynamic bodyB, num distance,
      [List<num> localAnchorA, List<num> localAnchorB, num maxForce]);
  external GearConstraint createGearConstraint(dynamic bodyA, dynamic bodyB,
      [num angle, num ratio]);
  external LockConstraint createLockConstraint(dynamic bodyA, dynamic bodyB,
      [List<num> offset, num angle, num maxForce]);
  external Material createMaterial([String name, P2_Body body]);
  /*external P2_Body createParticle(num x, num y, num mass,
    [bool addToWorld, p2.BodyOptions options, List<List<num>> data]);*/
  /*external P2_Body createParticle(num x, num y, num mass,
    [bool addToWorld, p2.BodyOptions options, List<num> data]);*/
  external P2_Body createParticle(num x, num y, num mass,
      [bool addToWorld,
      p2.BodyOptions options,
      List<dynamic> /*List<List<num>>|List<num>*/ data]);
  external PrismaticConstraint createPrismaticConstraint(
      dynamic body, dynamic bodyB,
      [bool lockRotation,
      List<num> anchorA,
      List<num> anchorB,
      Float32List axis,
      num maxForce]);
  external RevoluteConstraint createRevoluteConstraint(
      dynamic bodyA, List<num> pivotA, dynamic bodyB, List<num> pivotB,
      [num maxForce, List<num> worldPivot]);
  external p2.RotationalSpring createRotationalSpring(
      dynamic bodyA, dynamic bodyB,
      [num restAngle, num stiffness, num damping]);
  external Spring createSpring(dynamic bodyA, dynamic bodyB,
      [num restLength,
      num stiffness,
      num damping,
      List<num> worldA,
      List<num> worldB,
      List<num> localA,
      List<num> localB]);
  external void destroy();
  external void enable(dynamic object, [bool debug, bool children]);
  external void enableBody(dynamic object, bool debug);
  external void endContactHandler(dynamic event);
  external List<P2_Body> getBodies();
  external P2_Body getBody(dynamic object);
  external List<p2.Constraint> getConstraints();
  external List<Spring> getSprings();
  external ContactMaterial getContactMaterial(
      Material materialA, Material materialB);
  external List<P2_Body> hitTest(Point worldPoint,
      [List<dynamic> bodies, num precision, bool filterStatic]);
  external num mpx(num v);
  external num mpxi(num v);
  external void pause();
  external void preUpdate();
  external num pxm(num v);
  external num pxmi(num v);
  external P2_Body removeBody(P2_Body body);
  external void removeBodyNextStep(P2_Body body);
  external dynamic/*=T*/ removeConstraint/*<T>*/(dynamic/*=T*/ constraint);
  external ContactMaterial removeContactMaterial(ContactMaterial material);
  external Spring removeSpring(Spring spring);
  external void reset();
  external void resume();
  external void setBounds(num x, num y, num width, num height,
      [bool left, bool right, bool top, bool bottom, bool setCollisionGroup]);
  external void setBoundsToWorld(
      [bool left, bool right, bool top, bool bottom, bool setCollisionGroup]);
  external void setCollisionGroup(dynamic object, CollisionGroup group);
  external void setImpactEvents(bool state);
  external void setMaterial(Material material, [List<P2_Body> bodies]);
  external void setPostBroadphaseCallback(Function callback, dynamic context);
  external void setWorldMaterial(Material material,
      [bool left, bool right, bool top, bool bottom]);
  external dynamic toJSON();
  external void update();
  external void updateBoundsCollisionGroup([bool setCollisionGroup]);
}

// Module P2
@JS("Phaser.Physics.P2.Body")
class P2_Body {
  // @Ignore
  P2_Body.fakeConstructor$();
  external static num get DYNAMIC;
  external static set DYNAMIC(num v);
  external static num get STATIC;
  external static set STATIC(num v);
  external static num get KINEMATIC;
  external static set KINEMATIC(num v);
  external factory P2_Body(Game game, [Sprite sprite, num x, num y, num mass]);
  external bool get allowSleep;
  external set allowSleep(bool v);
  external num get angle;
  external set angle(num v);
  external num get angularDamping;
  external set angularDamping(num v);
  external num get angularForce;
  external set angularForce(num v);
  external num get angularVelocity;
  external set angularVelocity(num v);
  external List<CollisionGroup> get collidesWith;
  external set collidesWith(List<CollisionGroup> v);
  external bool get collideWorldBounds;
  external set collideWorldBounds(bool v);
  external num get damping;
  external set damping(num v);
  external p2.Body get data;
  external set data(p2.Body v);
  external bool get debug;
  external set debug(bool v);
  external BodyDebug get debugBody;
  external set debugBody(BodyDebug v);
  external bool get JS$dynamic;
  external set JS$dynamic(bool v);
  external bool get fixedRotation;
  external set fixedRotation(bool v);
  external InversePointProxy get force;
  external set force(InversePointProxy v);
  external bool get kinematic;
  external set kinematic(bool v);
  external Game get game;
  external set game(Game v);
  external Point get gravity;
  external set gravity(Point v);
  external num get id;
  external set id(num v);
  external num get inertia;
  external set inertia(num v);
  external num get mass;
  external set mass(num v);
  external num get motionState;
  external set motionState(num v);
  external Point get offset;
  external set offset(Point v);
  external Signal get onBeginContact;
  external set onBeginContact(Signal v);
  external Signal get onEndContact;
  external set onEndContact(Signal v);
  external num get rotation;
  external set rotation(num v);
  external bool get removeNextStep;
  external set removeNextStep(bool v);
  external Sprite get sprite;
  external set sprite(Sprite v);
  external num get sleepSpeedLimit;
  external set sleepSpeedLimit(num v);
  external bool get JS$static;
  external set JS$static(bool v);
  external num get type;
  external set type(num v);
  external InversePointProxy get velocity;
  external set velocity(InversePointProxy v);
  external P2 get world;
  external set world(P2 v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external void addToWorld();
  external p2.Capsule addCapsule(num length, num radius,
      [num offsetX, num offsetY, num rotation]);
  external p2.Circle addCircle(num radius,
      [num offsetX, num offsetY, num rotation]);
  external List<p2.Shape> addFixture(String fixtureData);
  external p2.Line addLine(num length,
      [num offsetX, num offsetY, num rotation]);
  external p2.Particle addParticle([num offsetX, num offsetY, num rotation]);
  external bool addPolygon(
      dynamic /*{ optimalDecomp?: boolean; skipSimpleCheck?: boolean; removeCollinearPoints?: boolean; }*/ options,
      List<List<num>> points);
  external FixtureList addPhaserPolygon(String key, String object);
  external p2.Plane addPlane([num offsetX, num offsetY, num rotation]);
  external p2.Rectangle addRectangle(num width, num height,
      [num offsetX, num offsetY, num rotation]);
  external p2.Shape addShape(p2.Shape shape,
      [num offsetX, num offsetY, num rotation]);
  external void adjustCenterOfMass();
  external void applyDamping(num dt);
  external void applyForce(List<num> force, num worldX, num worldY);
  external void applyImpulse(List<num> impulse, num worldX, num worldY);
  external void applyImpulseLocal(List<num> impulse, num localX, num localY);
  external void clearCollision(
      [bool clearGroup, bool cleanMask, p2.Shape shape]);
  external void clearShapes();
  external void collides(dynamic group,
      [Function callback, dynamic callbackContext, p2.Shape shape]);
  external void createBodyCallback(
      dynamic object, Function callback, dynamic callbackContext);
  external void createGroupCallback(
      CollisionGroup group, Function callback, dynamic callbackContext);
  external void destroy();
  external num getCollisionMask();
  external List<num> getVelocityAtPoint(
      List<num> result, List<num> relativePoint);
  external bool loadPolygon(String key, String object);
  external void moveBackward(num speed);
  external void moveDown(num speed);
  external void moveForward(num speed);
  external void moveLeft(num speed);
  external void moveRight(num speed);
  external void moveUp(num speed);
  external void preUpdate();
  external void postUpdate();
  external void removeCollisionGroup(dynamic group,
      [bool clearCallback, p2.Shape shape]);
  external void removeFromWorld();
  external bool removeShape(p2.Shape shape);
  external void reverse(num speed);
  external void rotateLeft(num speed);
  external void rotateRight(num speed);
  external void reset(num x, num y, [bool resetDamping, bool resetMass]);
  external void shapeChanged();
  external p2.Circle setCircle(num radius,
      [num offsetX, num offsetY, num rotation]);
  external void setCollisionGroup(CollisionGroup group, [p2.Shape shape]);
  external p2.Rectangle setRectangle(
      [num width, num height, num offsetX, num offsetY, num rotation]);
  external p2.Rectangle setRectangleFromSprite(dynamic sprite);
  external void setMaterial(Material material, [p2.Shape shape]);
  external void setZeroDamping();
  external void setZeroForce();
  external void setZeroRotation();
  external void setZeroVelocity();
  external void toLocalFrame(List<num> out, List<num> worldPoint);
  external void thrust(num speed);
  external void thrustLeft(num speed);
  external void thrustRight(num speed);
  external void toWorldFrame(List<num> out, List<num> localPoint);
  external void updateCollisionMask([p2.Shape shape]);
}

@JS("Phaser.Physics.P2.BodyDebug")
class BodyDebug extends Group {
  // @Ignore
  BodyDebug.fakeConstructor$() : super.fakeConstructor$();
  external factory BodyDebug(Game game, P2_Body body,
      dynamic /*{ pixelsPerLengthUnit?: number; debugPolygons?: boolean; lineWidth?: number; alpha?: number; }*/ settings);
  external P2_Body get body;
  external set body(P2_Body v);
  external Graphics get canvas;
  external set canvas(Graphics v);
  external num get ppu;
  external set ppu(num v);
  external void updateSpriteTransform();
  external void draw();
}

@JS("Phaser.Physics.P2.CollisionGroup")
class CollisionGroup {
  // @Ignore
  CollisionGroup.fakeConstructor$();
  external factory CollisionGroup(num bitmask);
  external num get mask;
  external set mask(num v);
}

@JS("Phaser.Physics.P2.ContactMaterial")
class ContactMaterial extends ContactMaterial {
  // @Ignore
  ContactMaterial.fakeConstructor$() : super.fakeConstructor$();
}

@JS("Phaser.Physics.P2.DistanceConstraint")
class DistanceConstraint extends DistanceConstraint {
  // @Ignore
  DistanceConstraint.fakeConstructor$() : super.fakeConstructor$();
  external factory DistanceConstraint(
      P2 world, P2_Body bodyA, P2_Body bodyB, num distance, num maxForce);
  external Game get game;
  external set game(Game v);
  external P2 get world;
  external set world(P2 v);
}

@JS("Phaser.Physics.P2.FixtureList")
class FixtureList {
  // @Ignore
  FixtureList.fakeConstructor$();
  external factory FixtureList(List<dynamic> list);
  external List<dynamic> flatten(List<dynamic> array);
  external List<dynamic> getFixtures(String keys);
  external List<dynamic> getFixtureByKey(String key);
  external List<dynamic> getGroup(num groupID);
  external void init();
  external void parse();
  external void setCategory(num bit, String fictureKey);
  external void setMask(num bit, String fixtureKey);
  external void setMaterial(dynamic material, String fixtureKey);
  external void setSensor(bool value, String fixtureKey);
}

@JS("Phaser.Physics.P2.GearConstraint")
class GearConstraint extends GearConstraint {
  // @Ignore
  GearConstraint.fakeConstructor$() : super.fakeConstructor$();
  external factory GearConstraint(P2 world, P2_Body bodyA, P2_Body bodyB,
      [num angle, num ratio]);
  external Game get game;
  external set game(Game v);
  external P2 get world;
  external set world(P2 v);
}

@JS("Phaser.Physics.P2.InversePointProxy")
class InversePointProxy {
  // @Ignore
  InversePointProxy.fakeConstructor$();
  external factory InversePointProxy(P2 world, dynamic destination);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get mx;
  external set mx(num v);
  external num get my;
  external set my(num v);
}

@JS("Phaser.Physics.P2.LockConstraint")
class LockConstraint extends LockConstraint {
  // @Ignore
  LockConstraint.fakeConstructor$() : super.fakeConstructor$();
  external factory LockConstraint(P2 world, P2_Body bodyA, P2_Body bodyB,
      [List<num> offset, num angle, num maxForce]);
  external Game get game;
  external set game(Game v);
  external P2 get world;
  external set world(P2 v);
}

@JS("Phaser.Physics.P2.Material")
class Material extends Material {
  // @Ignore
  Material.fakeConstructor$() : super.fakeConstructor$();
  external factory Material(String name);
  external String get name;
  external set name(String v);
}

@JS("Phaser.Physics.P2.PointProxy")
class PointProxy {
  // @Ignore
  PointProxy.fakeConstructor$();
  external factory PointProxy(P2 world, dynamic destination);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get mx;
  external set mx(num v);
  external num get my;
  external set my(num v);
}

@JS("Phaser.Physics.P2.PrismaticConstraint")
class PrismaticConstraint extends PrismaticConstraint {
  // @Ignore
  PrismaticConstraint.fakeConstructor$() : super.fakeConstructor$();
  external factory PrismaticConstraint(P2 world,
      [P2_Body bodyA,
      P2_Body bodyB,
      bool lockRotation,
      List<num> anchorA,
      List<num> anchorB,
      List<num> axis,
      num maxForce]);
  external Game get game;
  external set game(Game v);
  external P2 get world;
  external set world(P2 v);
}

@JS("Phaser.Physics.P2.RevoluteConstraint")
class RevoluteConstraint extends RevoluteConstraint {
  // @Ignore
  RevoluteConstraint.fakeConstructor$() : super.fakeConstructor$();
  external factory RevoluteConstraint(P2 world, P2_Body bodyA, List<num> pivotA,
      P2_Body bodyB, List<num> pivotB,
      [num maxForce]);
  external Game get game;
  external set game(Game v);
  external P2 get world;
  external set world(P2 v);
}

@JS("Phaser.Physics.P2.Spring")
class Spring {
  // @Ignore
  Spring.fakeConstructor$();
  external factory Spring(P2 world, P2_Body bodyA, P2_Body bodyB,
      [num restLength,
      num stiffness,
      num damping,
      List<num> worldA,
      List<num> worldB,
      List<num> localA,
      List<num> localB]);
  external p2.LinearSpring get data;
  external set data(p2.LinearSpring v);
  external Game get game;
  external set game(Game v);
  external P2 get world;
  external set world(P2 v);
}

// End module P2

// End module Physics
@JS("Phaser.Plugin")
class Plugin implements IStateCycle {
  // @Ignore
  Plugin.fakeConstructor$();
  external factory Plugin(Game game, PluginManager parent);
  external bool get active;
  external set active(bool v);
  external Game get game;
  external set game(Game v);
  external bool get hasPostRender;
  external set hasPostRender(bool v);
  external bool get hasPostUpdate;
  external set hasPostUpdate(bool v);
  external bool get hasPreUpdate;
  external set hasPreUpdate(bool v);
  external bool get hasRender;
  external set hasRender(bool v);
  external bool get hasUpdate;
  external set hasUpdate(bool v);
  external PIXI.DisplayObject get parent;
  external set parent(PIXI.DisplayObject v);
  external bool get visible;
  external set visible(bool v);
  external void destroy();
  external void postRender();
  external void preUpdate();
  external void render();
  external void update();
}

// Module Plugin
@JS("Phaser.Plugin.SaveCPU")
class SaveCPU extends Plugin {
  // @Ignore
  SaveCPU.fakeConstructor$() : super.fakeConstructor$();
  external num get renderOnFPS;
  external set renderOnFPS(num v);
  external bool get renderOnPointerChange;
  external set renderOnPointerChange(bool v);
  external void forceRender();
}

@JS("Phaser.Plugin.AStar")
class AStar extends Plugin {
  // @Ignore
  AStar.fakeConstructor$() : super.fakeConstructor$();
  external static String get VERSION;
  external static set VERSION(String v);
  external static num get COST_ORTHAGONAL;
  external static set COST_ORTHAGONAL(num v);
  external static num get COST_DIAGAONAL;
  external static set COST_DIAGAONAL(num v);
  external static String get DISTANCE_MANHATTEN;
  external static set DISTANCE_MANHATTEN(String v);
  external static String get DISTANCE_EUCLIDIAN;
  external static set DISTANCE_EUCLIDIAN(String v);
  external factory AStar(PIXI.DisplayObject parent);
  external PIXI.DisplayObject get parent;
  external set parent(PIXI.DisplayObject v);
  external String get version;
  external set version(String v);
  external AStarPath findPath(Point startPoint, Point goalPoint);
  external bool isWalkable(num x, num y);
  external AStar setAStarMap(Tilemap map, String layerName, String tilesetName);
}

// Module AStar
@JS("Phaser.Plugin.AStar.AStarNode")
class AStarNode {
  // @Ignore
  AStarNode.fakeConstructor$();
  external factory AStarNode(num x, num y, bool isWalkable);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get g;
  external set g(num v);
  external num get h;
  external set h(num v);
  external num get f;
  external set f(num v);
  external AStarNode get parent;
  external set parent(AStarNode v);
  external num get travelCost;
  external set travelCost(num v);
  external bool get walkable;
  external set walkable(bool v);
}

@JS("Phaser.Plugin.AStar.AStarPath")
class AStarPath {
  // @Ignore
  AStarPath.fakeConstructor$();
  external factory AStarPath(
      List<AStarNode> nodes, AStarNode start, AStarNode goal);
  external List<AStarNode> get nodes;
  external set nodes(List<AStarNode> v);
  external AStarNode get start;
  external set start(AStarNode v);
  external AStarNode get goal;
  external set goal(AStarNode v);
  external List<AStarNode> get visited;
  external set visited(List<AStarNode> v);
}

// End module AStar
@JS("Phaser.Plugin.ColorHarmony")
class ColorHarmony extends Plugin {
  // @Ignore
  ColorHarmony.fakeConstructor$() : super.fakeConstructor$();
  external dynamic getAnalogousHarmony(num color, [num threshold]);
  external num getComplementHarmony(num color);
  external dynamic getSplitComplementHarmony(num color, num threshold);
  external dynamic getTriadicHarmony(num color);
}

@JS("Phaser.Plugin.CSS3Filters")
class CSS3Filters extends Plugin {
  // @Ignore
  CSS3Filters.fakeConstructor$() : super.fakeConstructor$();
  external factory CSS3Filters(PIXI.DisplayObject parent);
  external num get blur;
  external set blur(num v);
  external num get brightness;
  external set brightness(num v);
  external num get contrast;
  external set contrast(num v);
  external num get grayscale;
  external set grayscale(num v);
  external num get hueRotate;
  external set hueRotate(num v);
  external num get invert;
  external set invert(num v);
  external num get opacity;
  external set opacity(num v);
  external num get saturate;
  external set saturate(num v);
  external num get sepia;
  external set sepia(num v);
}

@JS("Phaser.Plugin.TilemapWalker")
class TilemapWalker extends Plugin {
  // @Ignore
  TilemapWalker.fakeConstructor$() : super.fakeConstructor$();
  external factory TilemapWalker(Game game, Tilemap map,
      [dynamic layer, num x, num y]);
  external bool get collides;
  external set collides(bool v);
  external Game get game;
  external set game(Game v);
  external bool get history;
  external set history(bool v);
  external num get facing;
  external set facing(num v);
  external Tilemap get map;
  external set map(Tilemap v);
  external Point get location;
  external set location(Point v);
  external num get locationLayer;
  external set locationLayer(num v);
  external bool checkTile(num x, num y);
  external Tile getTileFromLocation(num x, num y);
  external List<dynamic> getTiles(num width, num height, [bool center]);
  external Tile getTileBehind([num distance]);
  external Tile getTileBehindLeft([num distance]);
  external Tile getTileBehindRight([num distance]);
  external Tile getTileAhead([num distance]);
  external Tile getTileAheadLeft([num distance]);
  external Tile getTileAheadRight([num distance]);
  external Tile getTileLeft(num distance);
  external Tile getTileRight(num distance);
  external bool moveForward();
  external bool moveBackward();
  external bool moveLeft();
  external bool moveRight();
  external void putTile(num index);
  external bool setLocation(num x, num y, [dynamic layer]);
  external void turnLeft();
  external void turnRight();
  external bool updateLocation(num x, num y);
}

@JS("Phaser.Plugin.SamplePlugin")
class SamplePlugin extends Plugin {
  // @Ignore
  SamplePlugin.fakeConstructor$() : super.fakeConstructor$();
  external factory SamplePlugin(Game game, PIXI.DisplayObject parent);
  external void addSprite(Sprite sprite);
  external void update();
}

@JS("Phaser.Plugin.VirtualJoystick")
class VirtualJoystick extends Plugin {
  // @Ignore
  VirtualJoystick.fakeConstructor$() : super.fakeConstructor$();
  external factory VirtualJoystick(Game game, dynamic parent);
  external num get angle;
  external set angle(num v);
  external Sprite get base;
  external set base(Sprite v);
  external BitmapData get baseBMD;
  external set baseBMD(BitmapData v);
  external Circle get baseCircle;
  external set baseCircle(Circle v);
  external num get deltaX;
  external set deltaX(num v);
  external num get deltaY;
  external set deltaY(num v);
  external num get distance;
  external set distance(num v);
  external num get force;
  external set force(num v);
  external bool get isDragging;
  external set isDragging(bool v);
  external num get limit;
  external set limit(num v);
  external Point get limitPoint;
  external set limitPoint(Point v);
  external Point get location;
  external set location(Point v);
  external Sprite get nub;
  external set nub(Sprite v);
  external BitmapData get nubBMD;
  external set nubBMD(BitmapData v);
  external num get speed;
  external set speed(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external void init(num x, num y, [num diameter, num limit]);
  external void move(Pointer pointer, num x, num y);
  external void render();
  external Sprite setVelocity(Sprite sprite, [num minSpeed, num maxSpeed]);
  external void startDrag();
  external void stopDrag(Sprite nub, Pointer pointer);
  external void update();
}

@JS("Phaser.Plugin.Webcam")
class Webcam extends Plugin {
  // @Ignore
  Webcam.fakeConstructor$() : super.fakeConstructor$();
  external factory Webcam(Game game, PIXI.DisplayObject parent);
  external bool get active;
  external set active(bool v);
  external dynamic get context;
  external set context(dynamic v);
  external dynamic get stream;
  external set stream(dynamic v);
  external VideoElement get video;
  external set video(VideoElement v);
  external VoidFunc1<dynamic> get connectCallback;
  external set connectCallback(VoidFunc1<dynamic> v);
  external VoidFunc1<dynamic> get errorCallback;
  external set errorCallback(VoidFunc1<dynamic> v);
  external VoidFunc3<dynamic, num, num> get grab;
  external set grab(VoidFunc3<dynamic, num, num> v);
  external void start(num width, num height, dynamic context);
  external void stop();
  external void update();
}

@JS("Phaser.Plugin.Juicy")
class Juicy extends Plugin {
  // @Ignore
  Juicy.fakeConstructor$() : super.fakeConstructor$();
  external factory Juicy(Game game);
  external ScreenFlash createScreenFlash([String color]);
  external Trail createTrail([num length, num color]);
  external void overScale(Sprite object, [num scale, Point initialScale]);
  external void jelly(Sprite object,
      [num strength, num delay, Point initialScale]);
  external void mouseStretch(Sprite object, [num strength, Point initialScale]);
  external void update();
  external void shake([num duration, num strength]);
}

// Module Juicy
@JS("Phaser.Plugin.Juicy.Trail")
class Trail {
  // @Ignore
  Trail.fakeConstructor$();
  external factory Trail(Game game, [num trailLength, num color]);
  external Sprite get target;
  external set target(Sprite v);
  external num get trailLength;
  external set trailLength(num v);
  external num get trailWidth;
  external set trailWidth(num v);
  external bool get trailScaling;
  external set trailScaling(bool v);
  external num get trailColor;
  external set trailColor(num v);
  external void update();
  external void addSegment(num x, num y);
  external void redrawSegments(num offsetX, num offsetY);
}

@JS("Phaser.Plugin.Juicy.ScreenFlash")
class ScreenFlash {
  // @Ignore
  ScreenFlash.fakeConstructor$();
  external factory ScreenFlash(Game game, [String color]);
  external void flash([num maxAlpha, num duration]);
}

// End module Juicy

// End module Plugin
@anonymous
@JS()
abstract class PluginConstructorOf<T> {
  // Constructors on anonymous interfaces are not yet supported.
  /*external factory PluginConstructorOf([dynamic parameters1, dynamic parameters2, dynamic parameters3, dynamic parameters4, dynamic parameters5]);*/
}

@JS("Phaser.PluginManager")
class PluginManager implements IStateCycle {
  // @Ignore
  PluginManager.fakeConstructor$();
  external factory PluginManager(Game game);
  external Game get game;
  external set game(Game v);
  external List<Plugin> get plugins;
  external set plugins(List<Plugin> v);
  external dynamic/*=T*/ add/*<T extends Plugin>*/(
      PluginConstructorOf<dynamic/*=T*/ > plugin,
      [dynamic parameters1,
      dynamic parameters2,
      dynamic parameters3,
      dynamic parameters4,
      dynamic parameters5]);
  external void destroy();
  external void postRender();
  external void postUpdate();
  external void preUpdate();
  external void remove(Plugin plugin, [bool destroy]);
  external void removeAll();
  external void render();
  external void update();
}

@JS("Phaser.Point")
class Point extends Point {
  // @Ignore
  Point.fakeConstructor$() : super.fakeConstructor$();
  external factory Point([num x, num y]);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get type;
  external set type(num v);
  /*external static Point add(Point a, Point b, [Point out]);*/
  /*external Point add(num x, num y);*/
  external Point add(dynamic /*Point|num*/ a_x, dynamic /*Point|num*/ b_y,
      [Point out]);
  /*external static Point subtract(Point a, Point b, [Point out]);*/
  /*external Point subtract(num x, num y);*/
  external Point subtract(dynamic /*Point|num*/ a_x, dynamic /*Point|num*/ b_y,
      [Point out]);
  /*external static Point multiply(Point a, Point b, [Point out]);*/
  /*external Point multiply(num x, num y);*/
  external Point multiply(dynamic /*Point|num*/ a_x, dynamic /*Point|num*/ b_y,
      [Point out]);
  /*external static Point divide(Point a, Point b, [Point out]);*/
  /*external Point divide(num x, num y);*/
  external Point divide(dynamic /*Point|num*/ a_x, dynamic /*Point|num*/ b_y,
      [Point out]);
  /*external static bool equals(Point a, Point b);*/
  /*external bool equals(Point a);*/
  external bool equals(Point a, [Point b]);
  /*external static num angle(Point a, Point b);*/
  /*external num angle(Point a, [bool asDegrees]);*/
  external num angle(Point a, [dynamic /*Point|bool*/ b_asDegrees]);
  /*external static num angleSq(Point a, Point b);*/
  /*external num angleSq(Point a);*/
  external num angleSq(Point a, [Point b]);
  external static Point negative(Point a, [Point out]);
  external static Point multiplyAdd(Point a, Point b, num scale, [Point out]);
  external static Point interpolate(Point a, Point b, num alpha, [Point out]);
  external static Point parse(dynamic obj, [String xProp, String yProp]);
  /*external static Point perp(Point a, [Point out]);*/
  /*external Point perp();*/
  external Point perp([Point a, Point out]);
  /*external static Point rperp(Point a, [Point out]);*/
  /*external Point rperp();*/
  external Point rperp([Point a, Point out]);
  /*external static num distance(dynamic a, dynamic b, [bool round]);*/
  /*external num distance(Point dest, [bool round]);*/
  external num distance(dynamic /*dynamic|Point*/ a_dest,
      [dynamic /*dynamic|bool*/ b_round, bool round]);
  external static Point project(Point a, Point b, [Point out]);
  external static Point projectUnit(Point a, Point b, [Point out]);
  /*external static Point normalRightHand(Point a, [Point out]);*/
  /*external Point normalRightHand();*/
  external Point normalRightHand([Point a, Point out]);
  /*external static Point normalize(Point a, [Point out]);*/
  /*external Point normalize();*/
  external Point normalize([Point a, Point out]);
  /*external static Point rotate(Point a, num x, num y, num angle, [bool asDegrees, num distance]);*/
  /*external Point rotate(num x, num y, num angle, [bool asDegrees, num distance]);*/
  external Point rotate(dynamic /*Point|num*/ a_x, num x_y, num y_angle,
      [dynamic /*num|bool*/ angle_asDegrees,
      dynamic /*bool|num*/ asDegrees_distance,
      num distance]);
  external static Point centroid(List<Point> points, [Point out]);
  external Point clamp(num min, num max);
  external Point clampX(num min, num max);
  external Point clampY(num min, num max);
  external Point clone([Point output]);
  external Point copyFrom(Point source);
  external dynamic/*=T*/ copyTo/*<T>*/(dynamic/*=T*/ dest);
  external Point ceil();
  external num cross(Point a);
  external num dot(Point a);
  external Point floor();
  external num getMagnitude();
  external num getMagnitudeSq();
  external Point invert();
  external bool isZero();
  external Point JS$set(num x, [num y]);
  external Point setMagnitude(num magnitude);
  external Point setTo(num x, [num y]);
  external String toString();
}

@JS("Phaser.Pointer")
class Pointer {
  // @Ignore
  Pointer.fakeConstructor$();
  external factory Pointer(Game game, num id, [num pointerMode]);
  external static num get NO_BUTTON;
  external static set NO_BUTTON(num v);
  external static num get LEFT_BUTTON;
  external static set LEFT_BUTTON(num v);
  external static num get RIGHT_BUTTON;
  external static set RIGHT_BUTTON(num v);
  external static num get MIDDLE_BUTTON;
  external static set MIDDLE_BUTTON(num v);
  external static num get BACK_BUTTON;
  external static set BACK_BUTTON(num v);
  external static num get FORWARD_BUTTON;
  external static set FORWARD_BUTTON(num v);
  external static num get ERASER_BUTTON;
  external static set ERASER_BUTTON(num v);
  external bool get active;
  external set active(bool v);
  external DeviceButton get backButton;
  external set backButton(DeviceButton v);
  external dynamic get button;
  external set button(dynamic v);
  external Circle get circle;
  external set circle(Circle v);
  external num get clientX;
  external set clientX(num v);
  external num get clientY;
  external set clientY(num v);
  external bool get dirty;
  external set dirty(bool v);
  external num get duration;
  external set duration(num v);
  external DeviceButton get eraserButton;
  external set eraserButton(DeviceButton v);
  external bool get exists;
  external set exists(bool v);
  external bool get forceOut;
  external set forceOut(bool v);
  external DeviceButton get forwardButton;
  external set forwardButton(DeviceButton v);
  external Game get game;
  external set game(Game v);
  external dynamic /*bool|num*/ get justReleasePreventsOver;
  external set justReleasePreventsOver(dynamic /*bool|num*/ v);
  external num get id;
  external set id(num v);
  external num get identifier;
  external set identifier(num v);
  external List<InputHandler> get interactiveCandidates;
  external set interactiveCandidates(List<InputHandler> v);
  external bool get isDown;
  external set isDown(bool v);
  external bool get isMouse;
  external set isMouse(bool v);
  external bool get isUp;
  external set isUp(bool v);
  external DeviceButton get leftButton;
  external set leftButton(DeviceButton v);
  external DeviceButton get middleButton;
  external set middleButton(DeviceButton v);
  external num get movementX;
  external set movementX(num v);
  external num get movementY;
  external set movementY(num v);
  external num get msSinceLastClick;
  external set msSinceLastClick(num v);
  external num get pageX;
  external set pageX(num v);
  external num get pageY;
  external set pageY(num v);
  external num get pointerId;
  external set pointerId(num v);
  external num get pointerMode;
  external set pointerMode(num v);
  external Point get position;
  external set position(Point v);
  external Point get positionDown;
  external set positionDown(Point v);
  external Point get positionUp;
  external set positionUp(Point v);
  external num get previousTapTime;
  external set previousTapTime(num v);
  external num get rawMovementX;
  external set rawMovementX(num v);
  external num get rawMovementY;
  external set rawMovementY(num v);
  external DeviceButton get rightButton;
  external set rightButton(DeviceButton v);
  external num get screenX;
  external set screenX(num v);
  external num get screenY;
  external set screenY(num v);
  external dynamic get target;
  external set target(dynamic v);
  external dynamic get targetObject;
  external set targetObject(dynamic v);
  external num get timeDown;
  external set timeDown(num v);
  external num get timeUp;
  external set timeUp(num v);
  external num get totalTouches;
  external set totalTouches(num v);
  external num get type;
  external set type(num v);
  external bool get withinGame;
  external set withinGame(bool v);
  external num get worldX;
  external set worldX(num v);
  external num get worldY;
  external set worldY(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external void addClickTrampoline(
      String name, Function callback, dynamic callbackContext,
      [dynamic callbackArgs1,
      dynamic callbackArgs2,
      dynamic callbackArgs3,
      dynamic callbackArgs4,
      dynamic callbackArgs5]);
  external bool justPressed([num duration]);
  external bool justReleased([num duration]);
  external void leave(dynamic event);
  external void move(dynamic event, [bool fromClick]);
  external void reset();
  external void resetButtons();
  external void resetMovement();
  external void start(dynamic event);
  external void stop(dynamic event);
  external void swapTarget(InputHandler newTarget, [bool silent]);
  external void update();
  external void updateButtons(MouseEvent event);
}

@JS("Phaser.Polygon")
class Polygon {
  // @Ignore
  Polygon.fakeConstructor$();
  /*external factory Polygon(List<Point>|List<num> points);*/
  /*external factory Polygon([Point points1, Point points2, Point points3, Point points4, Point points5]);*/
  /*external factory Polygon([num points1, num points2, num points3, num points4, num points5]);*/
  external factory Polygon(List<dynamic> /*List<Point>|List<num>*/ points);
  external num get area;
  external set area(num v);
  external bool get flattened;
  external set flattened(bool v);
  external List<dynamic> /*List<num>|List<Point>*/ get points;
  external set points(List<dynamic> /*List<num>|List<Point>*/ v);
  external num get type;
  external set type(num v);
  external Polygon clone(Polygon output);
  external bool contains(num x, num y);
  external Polygon flatten();
  /*external void setTo(List<Point>|List<num> points);*/
  /*external void setTo(
    [Point points1,
    Point points2,
    Point points3,
    Point points4,
    Point points5]);*/
  /*external void setTo(
    [num points1, num points2, num points3, num points4, num points5]);*/
  external void setTo(List<dynamic> /*List<Point>|List<num>*/ points);
  external List<num> toNumberArray([List<num> output]);
}

@JS("Phaser.QuadTree")
class QuadTree {
  // @Ignore
  QuadTree.fakeConstructor$();
  external factory QuadTree(num x, num y, num width, num height,
      [num maxObject, num maxLevels, num level]);
  external dynamic
      /*{
            x: number;
            y: number;
            width: number;
            height: number;
            subWidth: number;
            subHeight: number;
            right: number;
            bottom: number;
        }*/
      get bounds;
  external set bounds(
      dynamic /*{
            x: number;
            y: number;
            width: number;
            height: number;
            subWidth: number;
            subHeight: number;
            right: number;
            bottom: number;
        }*/
      v);
  external num get level;
  external set level(num v);
  external num get maxObjects;
  external set maxObjects(num v);
  external num get maxLevels;
  external set maxLevels(num v);
  external List<dynamic> get objects;
  external set objects(List<dynamic> v);
  external List<dynamic> get nodes;
  external set nodes(List<dynamic> v);
  external void clear();
  external num getIndex(dynamic rect);
  external void insert(dynamic body);
  external void populate(Group group);
  external void populateHandler(Sprite sprite);
  external void reset(num x, num y, num width, num height,
      [num maxObject, num maxLevels, num level]);
  external List<dynamic> retrieve(dynamic source);
  external void split();
}

@JS("Phaser.RandomDataGenerator")
class RandomDataGenerator {
  // @Ignore
  RandomDataGenerator.fakeConstructor$();
  external factory RandomDataGenerator(
      [dynamic /*List<dynamic>|String*/ seeds]);
  external num angle();
  external num between(num min, num max);
  external num frac();
  external num integer();
  external num integerInRange(num min, num max);
  external num normal();
  external dynamic/*=T*/ pick/*<T>*/(List<dynamic/*=T*/ > ary);
  external num real();
  external num realInRange(num min, num max);
  external num sign();
  external void sow(List<dynamic> seeds);
  external String state([String state]);
  external num timestamp(num min, num max);
  external num uuid();
  external dynamic/*=T*/ weightedPick/*<T>*/(List<dynamic/*=T*/ > ary);
}

@JS("Phaser.Rectangle")
class Rectangle {
  // @Ignore
  Rectangle.fakeConstructor$();
  external factory Rectangle(num x, num y, num width, num height);
  external num get bottom;
  external set bottom(num v);
  external Point get bottomRight;
  external set bottomRight(Point v);
  external Point get bottomLeft;
  external set bottomLeft(Point v);
  external num get centerX;
  external set centerX(num v);
  external num get centerY;
  external set centerY(num v);
  external bool get empty;
  external set empty(bool v);
  external num get halfHeight;
  external set halfHeight(num v);
  external num get halfWidth;
  external set halfWidth(num v);
  external num get height;
  external set height(num v);
  external num get left;
  external set left(num v);
  external num get perimeter;
  external set perimeter(num v);
  external num get randomX;
  external set randomX(num v);
  external num get randomY;
  external set randomY(num v);
  external num get right;
  external set right(num v);
  external num get top;
  external set top(num v);
  external Point get topLeft;
  external set topLeft(Point v);
  external Point get topRight;
  external set topRight(Point v);
  external num get type;
  external set type(num v);
  external num get volume;
  external set volume(num v);
  external num get width;
  external set width(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external static Rectangle aabb(List<Point> points, [Rectangle out]);
  /*external static Rectangle clone(Rectangle a, [Rectangle output]);*/
  /*external Rectangle clone(Rectangle output);*/
  external Rectangle clone(Rectangle a_output, [Rectangle output]);
  /*external static bool contains(Rectangle a, num x, num y);*/
  /*external bool contains(num x, num y);*/
  external bool contains(dynamic /*Rectangle|num*/ a_x, num x_y, [num y]);
  external static bool containsPoint(Rectangle a, Point point);
  external static bool containsRaw(
      num rx, num ry, num rw, num rh, num x, num y);
  /*external static bool containsRect(Rectangle a, Rectangle b);*/
  /*external bool containsRect(Rectangle b);*/
  external bool containsRect(Rectangle a_b, [Rectangle b]);
  /*external static bool equals(Rectangle a, Rectangle b);*/
  /*external bool equals(Rectangle b);*/
  external bool equals(Rectangle a_b, [Rectangle b]);
  /*external static Rectangle inflate(Rectangle a, num dx, num dy);*/
  /*external Rectangle inflate(num dx, num dy);*/
  external Rectangle inflate(dynamic /*Rectangle|num*/ a_dx, num dx_dy,
      [num dy]);
  external static Rectangle inflatePoint(Rectangle a, Point point);
  /*external static Rectangle intersection(Rectangle a, Rectangle b, [Rectangle out]);*/
  /*external Rectangle intersection(Rectangle b, Rectangle out);*/
  external Rectangle intersection(Rectangle a_b, Rectangle b_out,
      [Rectangle out]);
  /*external static bool intersects(Rectangle a, Rectangle b);*/
  /*external bool intersects(Rectangle b, num tolerance);*/
  external bool intersects(
      Rectangle a_b, dynamic /*Rectangle|num*/ b_tolerance);
  /*external static bool intersectsRaw(num left, num right, num top, num bottom, num tolerance);*/
  /*external bool intersectsRaw(
    num left, num right, num top, num bottom, num tolerance);*/
  external bool intersectsRaw(
      num left, num right, num top, num bottom, num tolerance);
  /*external static Point size(Rectangle a, [Point output]);*/
  /*external Point size([Point output]);*/
  external Point size([dynamic /*Rectangle|Point*/ a_output, Point output]);
  /*external static Rectangle union(Rectangle a, Rectangle b, [Rectangle out]);*/
  /*external Rectangle union(Rectangle b, [Rectangle out]);*/
  external Rectangle union(Rectangle a_b, [Rectangle b_out, Rectangle out]);
  external void ceil();
  external void ceilAll();
  external Rectangle centerOn(num x, num y);
  external Rectangle copyFrom(dynamic source);
  external dynamic copyTo(dynamic dest);
  external void floor();
  external void floorAll();
  external Point getPoint(num position, Point out);
  external Rectangle offset(num dx, num dy);
  external Rectangle offsetPoint(Point point);
  external Point random([Point out]);
  external Rectangle resize(num width, num height);
  external Rectangle setTo(num x, num y, num width, num height);
  external Rectangle scale(num x, [num y]);
  external String toString();
}

@JS("Phaser.RenderTexture")
class RenderTexture extends RenderTexture {
  // @Ignore
  RenderTexture.fakeConstructor$() : super.fakeConstructor$();
  external factory RenderTexture(Game game,
      [num width, num height, String key, num scaleMode, num resolution]);
  external PIXI.Rectangle get crop;
  external set crop(PIXI.Rectangle v);
  external Game get game;
  external set game(Game v);
  external String get key;
  external set key(String v);
  external num get type;
  external set type(num v);
  external void render(PIXI.DisplayObject displayObject,
      [Matrix matrix, bool clear]);
  external void renderXY(PIXI.DisplayObject displayObject, num x, num y,
      [bool clear]);
  external void renderRawXY(PIXI.DisplayObject displayObject, num x, num y,
      [bool clear]);
}

@JS("Phaser.RequestAnimationFrame")
class RequestAnimationFrame {
  // @Ignore
  RequestAnimationFrame.fakeConstructor$();
  external factory RequestAnimationFrame(Game game, [bool forceSetTimeOut]);
  external bool get forceSetTimeOut;
  external set forceSetTimeOut(bool v);
  external Game get game;
  external set game(Game v);
  external bool get isRunning;
  external set isRunning(bool v);
  external bool isRAF();
  external bool isSetTimeOut();
  external bool start();
  external void stop();
  external void updateRAF(num rafTime);
  external void updateSetTimeout(num time);
}

@JS("Phaser.RetroFont")
class RetroFont extends RenderTexture {
  // @Ignore
  RetroFont.fakeConstructor$() : super.fakeConstructor$();
  external factory RetroFont(Game game, String key, num characterWidth,
      num characterHeight, String chars,
      [num charsPerRow, num xSpacing, num ySpacing, num xOffset, num yOffset]);
  external static String get ALIGN_CENTER;
  external static set ALIGN_CENTER(String v);
  external static String get ALIGN_LEFT;
  external static set ALIGN_LEFT(String v);
  external static String get ALIGN_RIGHT;
  external static set ALIGN_RIGHT(String v);
  external static String get TEXT_SET1;
  external static set TEXT_SET1(String v);
  external static String get TEXT_SET2;
  external static set TEXT_SET2(String v);
  external static String get TEXT_SET3;
  external static set TEXT_SET3(String v);
  external static String get TEXT_SET4;
  external static set TEXT_SET4(String v);
  external static String get TEXT_SET5;
  external static set TEXT_SET5(String v);
  external static String get TEXT_SET6;
  external static set TEXT_SET6(String v);
  external static String get TEXT_SET7;
  external static set TEXT_SET7(String v);
  external static String get TEXT_SET8;
  external static set TEXT_SET8(String v);
  external static String get TEXT_SET9;
  external static set TEXT_SET9(String v);
  external static String get TEXT_SET10;
  external static set TEXT_SET10(String v);
  external static String get TEXT_SET11;
  external static set TEXT_SET11(String v);
  external String get align;
  external set align(String v);
  external bool get autoUpperCase;
  external set autoUpperCase(bool v);
  external num get characterHeight;
  external set characterHeight(num v);
  external num get characterPerRow;
  external set characterPerRow(num v);
  external num get characterSpacingX;
  external set characterSpacingX(num v);
  external num get characterSpacingY;
  external set characterSpacingY(num v);
  external num get characterWidth;
  external set characterWidth(num v);
  external num get customSpacingX;
  external set customSpacingX(num v);
  external num get customSpacingY;
  external set customSpacingY(num v);
  external num get fixedWidth;
  external set fixedWidth(num v);
  external Image get fontSet;
  external set fontSet(Image v);
  external FrameData get frameData;
  external set frameData(FrameData v);
  external bool get multiLine;
  external set multiLine(bool v);
  external num get offsetX;
  external set offsetX(num v);
  external num get offsetY;
  external set offsetY(num v);
  external bool get smoothed;
  external set smoothed(bool v);
  external Image get stamp;
  external set stamp(Image v);
  external String get text;
  external set text(String v);
  external void buildRetroFontText();
  external num getLongestLine();
  external void pasteLine(String line, num x, num y, num customSpacingX);
  external String removeUnsupportedCharacters([bool stripCR]);
  external void setFixedWidth(num width, [String lineAlignment]);
  external void setText(String content,
      [bool multiLine,
      num characterSpacing,
      num lineSpacing,
      String lineAlignment,
      bool allowLowerCase]);
  external void updateOffset([num x, num y]);
}

@JS("Phaser.Rope")
class Rope extends Rope {
  // @Ignore
  Rope.fakeConstructor$() : super.fakeConstructor$();
  external factory Rope(Game game, num x, num y,
      dynamic /*String|RenderTexture|BitmapData|PIXI.Texture|Video*/ key,
      [dynamic /*String|num*/ frame, List<Point> points]);
  external num get angle;
  external set angle(num v);
  external AnimationManager get animations;
  external set animations(AnimationManager v);
  external bool get alive;
  external set alive(bool v);
  external bool get autoCull;
  external set autoCull(bool v);
  external dynamic /*Body|P2_Body|Ninja_Body|dynamic*/ get body;
  external set body(dynamic /*Body|P2_Body|Ninja_Body|dynamic*/ v);
  external num get bottom;
  external set bottom(num v);
  external Point get cameraOffset;
  external set cameraOffset(Point v);
  external bool get checkWorldBounds;
  external set checkWorldBounds(bool v);
  external Rectangle get cropRect;
  external set cropRect(Rectangle v);
  external dynamic get components;
  external set components(dynamic v);
  external bool get customRender;
  external set customRender(bool v);
  external bool get debug;
  external set debug(bool v);
  external num get deltaX;
  external set deltaX(num v);
  external num get deltaY;
  external set deltaY(num v);
  external num get deltaZ;
  external set deltaZ(num v);
  external bool get destroyPhase;
  external set destroyPhase(bool v);
  external bool get exists;
  external set exists(bool v);
  external Events get events;
  external set events(Events v);
  external bool get fixedToCamera;
  external set fixedToCamera(bool v);
  external dynamic /*String|num*/ get frame;
  external set frame(dynamic /*String|num*/ v);
  external String get frameName;
  external set frameName(String v);
  external bool get fresh;
  external set fresh(bool v);
  external Game get game;
  external set game(Game v);
  external bool get inCamera;
  external set inCamera(bool v);
  external InputHandler get input;
  external set input(InputHandler v);
  external bool get inputEnabled;
  external set inputEnabled(bool v);
  external bool get inWorld;
  external set inWorld(bool v);
  external num get left;
  external set left(num v);
  external num get lifespan;
  external set lifespan(num v);
  external dynamic /*String|RenderTexture|BitmapData|PIXI.Texture|Video*/ get key;
  external set key(
      dynamic /*String|RenderTexture|BitmapData|PIXI.Texture|Video*/ v);
  external String get name;
  external set name(String v);
  external num get offsetX;
  external set offsetX(num v);
  external num get offsetY;
  external set offsetY(num v);
  external bool get outOfBoundsKill;
  external set outOfBoundsKill(bool v);
  external bool overlap(
      dynamic /*Sprite|Image|TileSprite|Button|PIXI.DisplayObject*/ displayObject);
  external bool get pendingDestroy;
  external set pendingDestroy(bool v);
  external List<Point> get points;
  external set points(List<Point> v);
  external Point get position;
  external set position(Point v);
  external Point get previousPosition;
  external set previousPosition(Point v);
  external num get previousRotation;
  external set previousRotation(num v);
  external num get right;
  external set right(num v);
  external num get renderOrderID;
  external set renderOrderID(num v);
  external List<Rectangle> get segments;
  external set segments(List<Rectangle> v);
  external bool get smoothed;
  external set smoothed(bool v);
  external num get top;
  external set top(num v);
  external num get type;
  external set type(num v);
  external Function get transformCallback;
  external set transformCallback(Function v);
  external dynamic get transformCallbackContext;
  external set transformCallbackContext(dynamic v);
  external Point get scaleMin;
  external set scaleMin(Point v);
  external Point get scaleMax;
  external set scaleMax(Point v);
  external Function get updateAnimation;
  external set updateAnimation(Function v);
  external Point get world;
  external set world(Point v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get z;
  external set z(num v);
  external Rope bringToTop();
  external void checkTransform(PIXI.Matrix wt);
  external void crop(Rectangle rect, [bool copy]);
  external void destroy([bool destroyChildren]);
  external Rope kill();
  external void loadTexture(
      dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ key,
      [dynamic /*String|num*/ frame,
      bool stopAnimation]);
  external Rope moveUp();
  external Rope moveDown();
  external Animation play(String name,
      [num frameRate, bool loop, bool killOnComplete]);
  external void preUpdate();
  external void postUpdate();
  external Rope reset(num x, num y, [num health]);
  external void resizeFrame(dynamic parent, num width, num height);
  external void resetFrame();
  external Rope revive([num health]);
  external Rope sendToBack();
  external void setFrame(Frame frame);
  external void setScaleMinMax([num minX, num minY, num maxX, num maxY]);
  external void updateCrop();
  external void update();
}

@JS("Phaser.RoundedRectangle")
class RoundedRectangle extends RoundedRectangle {
  // @Ignore
  RoundedRectangle.fakeConstructor$() : super.fakeConstructor$();
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external num get radius;
  external set radius(num v);
  external num get type;
  external set type(num v);
  external RoundedRectangle clone();
  external bool contains(num x, num y);
}

@JS("Phaser.Signal")
class Signal {
  // @Ignore
  Signal.fakeConstructor$();
  external bool get active;
  external set active(bool v);
  external Function get boundDispatch;
  external set boundDispatch(Function v);
  external bool get memorize;
  external set memorize(bool v);
  external SignalBinding add(Function listener,
      [dynamic listenerContext,
      num priority,
      dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external SignalBinding addOnce(Function listener,
      [dynamic listenerContext,
      num priority,
      dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external void dispatch(
      [dynamic params1,
      dynamic params2,
      dynamic params3,
      dynamic params4,
      dynamic params5]);
  external void dispose();
  external void forget();
  external num getNumListeners();
  external void halt();
  external bool has(Function listener, [dynamic context]);
  external Function remove(Function listener, [dynamic context]);
  external void removeAll([dynamic context]);
  external String toString();
  external void validateListener(Function listener, String fnName);
}

@JS("Phaser.SignalBinding")
class SignalBinding {
  // @Ignore
  SignalBinding.fakeConstructor$();
  external factory SignalBinding(Signal signal, Function listener, bool isOnce,
      [dynamic listenerContext,
      num priority,
      dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external bool get active;
  external set active(bool v);
  external num get callCount;
  external set callCount(num v);
  external dynamic get context;
  external set context(dynamic v);
  external List<dynamic> get params;
  external set params(List<dynamic> v);
  external void execute([List<dynamic> paramsArr]);
  external Function detach();
  external bool isBound();
  external bool isOnce();
  external Function getListener();
  external Signal getSignal();
  external String toString();
}

@JS("Phaser.SinglePad")
class SinglePad {
  // @Ignore
  SinglePad.fakeConstructor$();
  external factory SinglePad(Game game, dynamic padParent);
  external dynamic get callbackContext;
  external set callbackContext(dynamic v);
  external bool get connected;
  external set connected(bool v);
  external num get deadZone;
  external set deadZone(num v);
  external Game get game;
  external set game(Game v);
  external num get index;
  external set index(num v);
  external Function get onAxisCallback;
  external set onAxisCallback(Function v);
  external Function get onConnectCallback;
  external set onConnectCallback(Function v);
  external Function get onDisconnectCallback;
  external set onDisconnectCallback(Function v);
  external Function get onDownCallback;
  external set onDownCallback(Function v);
  external Function get onFloatCallback;
  external set onFloatCallback(Function v);
  external Function get onUpCallback;
  external set onUpCallback(Function v);
  external num axis(num axisCode);
  external void addCallbacks(dynamic context, dynamic callbacks);
  external num buttonValue(num buttonCode);
  external void connect(dynamic rawPad);
  external void destroy();
  external void disconnect();
  external DeviceButton getButton(num buttonCode);
  external bool isDown(num buttonCode);
  external bool isUp(num buttonCode);
  external bool justPressed(num buttonCode, [num duration]);
  external bool justReleased(num buttonCode, [num duration]);
  external void pollStatus();
  external void processAxisChange(dynamic axisState);
  external void processButtonDown(num buttonCode, dynamic value);
  external void processButtonFloat(num buttonCode, dynamic value);
  external void processButtonUp(num buttonCode, dynamic value);
  external void reset();
}

@JS("Phaser.Sound")
class Sound {
  // @Ignore
  Sound.fakeConstructor$();
  external factory Sound(Game game, String key,
      [num volume, bool loop, bool connect]);
  external bool get autoplay;
  external set autoplay(bool v);
  external bool get allowMultiple;
  external set allowMultiple(bool v);
  external dynamic get context;
  external set context(dynamic v);
  external String get currentMarker;
  external set currentMarker(String v);
  external num get currentTime;
  external set currentTime(num v);
  /*external void destroy([bool remove]);*/
  /*external void destroy();*/
  external void destroy([bool remove]);
  external num get duration;
  external set duration(num v);
  external num get durationMS;
  external set durationMS(num v);
  external dynamic get externalNode;
  external set externalNode(dynamic v);
  external Tween get fadeTween;
  external set fadeTween(Tween v);
  external Game get game;
  external set game(Game v);
  external dynamic get gainNode;
  external set gainNode(dynamic v);
  external bool get isDecoded;
  external set isDecoded(bool v);
  external bool get isDecoding;
  external set isDecoding(bool v);
  external bool get isPlaying;
  external set isPlaying(bool v);
  external String get key;
  external set key(String v);
  external bool get loop;
  external set loop(bool v);
  external dynamic get markers;
  external set markers(dynamic v);
  external dynamic get masterGainNode;
  external set masterGainNode(dynamic v);
  external bool get mute;
  external set mute(bool v);
  external String get name;
  external set name(String v);
  external Signal get onDecoded;
  external set onDecoded(Signal v);
  external VoidFunc0 get onEndedHandler;
  external set onEndedHandler(VoidFunc0 v);
  external Signal get onFadeComplete;
  external set onFadeComplete(Signal v);
  external Signal get onLoop;
  external set onLoop(Signal v);
  external Signal get onMarkerComplete;
  external set onMarkerComplete(Signal v);
  external Signal get onMute;
  external set onMute(Signal v);
  external Signal get onPause;
  external set onPause(Signal v);
  external Signal get onPlay;
  external set onPlay(Signal v);
  external Signal get onResume;
  external set onResume(Signal v);
  external Signal get onStop;
  external set onStop(Signal v);
  external bool get override;
  external set override(bool v);
  external bool get paused;
  external set paused(bool v);
  external num get pausedPosition;
  external set pausedPosition(num v);
  external num get pausedTime;
  external set pausedTime(num v);
  external bool get pendingPlayback;
  external set pendingPlayback(bool v);
  external num get position;
  external set position(num v);
  external num get startTime;
  external set startTime(num v);
  external num get stopTime;
  external set stopTime(num v);
  external num get totalDuration;
  external set totalDuration(num v);
  external bool get usingAudioTag;
  external set usingAudioTag(bool v);
  external bool get usingWebAudio;
  external set usingWebAudio(bool v);
  external num get volume;
  external set volume(num v);
  external void addMarker(String name, num start, num duration,
      [num volume, bool loop]);
  external void fadeIn([num duration, bool loop, String marker]);
  external void fadeOut([num duration]);
  external void fadeTo([num duration, num volume]);
  external Sound loopFull([num volume]);
  external void pause();
  external Sound play(
      [String marker, num position, num volume, bool loop, bool forceRestart]);
  external void removeMarker(String name);
  external void restart(String marker, num position, [num volume, bool loop]);
  external void resume();
  external void soundHasUnlocked(String key);
  external void stop();
  external void update();
}

@JS("Phaser.SoundManager")
class SoundManager {
  // @Ignore
  SoundManager.fakeConstructor$();
  external factory SoundManager(Game game);
  external num get channels;
  external set channels(num v);
  external bool get connectToMaster;
  external set connectToMaster(bool v);
  external dynamic get context;
  external set context(dynamic v);
  external Game get game;
  external set game(Game v);
  external bool get mute;
  external set mute(bool v);
  external bool get muteOnPause;
  external set muteOnPause(bool v);
  external bool get noAudio;
  external set noAudio(bool v);
  external Signal get onSoundDecode;
  external set onSoundDecode(Signal v);
  external Signal get onVolumeChange;
  external set onVolumeChange(Signal v);
  external Signal get onMute;
  external set onMute(Signal v);
  external Signal get onUnMute;
  external set onUnMute(Signal v);
  external bool get touchLocked;
  external set touchLocked(bool v);
  external bool get usingAudioTag;
  external set usingAudioTag(bool v);
  external bool get usingWebAudio;
  external set usingWebAudio(bool v);
  external num get volume;
  external set volume(num v);
  external Sound add(String key, [num volume, bool loop, bool connect]);
  external AudioSprite addSprite(String key);
  external void boot();
  external void decode(String key, [Sound sound]);
  external void destroy();
  external void pauseAll();
  external Sound play(String key, [num volume, bool loop]);
  external bool remove(Sound sound);
  external num removeByKey(String key);
  external void resumeAll();
  external void setDecodedCallback(
      List<dynamic> /*List<String>|List<Sound>*/ files,
      Function callback,
      dynamic callbackContext);
  external void setTouchLock();
  external void stopAll();
  external bool unlock();
  external void update();
}

@JS("Phaser.Sprite")
class Sprite extends Sprite {
  // @Ignore
  Sprite.fakeConstructor$() : super.fakeConstructor$();
  external factory Sprite(Game game, num x, num y,
      [dynamic /*String|RenderTexture|BitmapData|PIXI.Texture*/ key,
      dynamic /*String|num*/ frame]);
  external bool get alive;
  external set alive(bool v);
  external Point get anchor;
  external set anchor(Point v);
  external num get angle;
  external set angle(num v);
  external AnimationManager get animations;
  external set animations(AnimationManager v);
  external bool get autoCull;
  external set autoCull(bool v);
  external dynamic /*Body|P2_Body|Ninja_Body|dynamic*/ get body;
  external set body(dynamic /*Body|P2_Body|Ninja_Body|dynamic*/ v);
  external num get bottom;
  external set bottom(num v);
  external Point get cameraOffset;
  external set cameraOffset(Point v);
  external num get centerX;
  external set centerX(num v);
  external num get centerY;
  external set centerY(num v);
  external bool get checkWorldBounds;
  external set checkWorldBounds(bool v);
  external dynamic get components;
  external set components(dynamic v);
  external Rectangle get cropRect;
  external set cropRect(Rectangle v);
  external bool get customRender;
  external set customRender(bool v);
  external dynamic get data;
  external set data(dynamic v);
  external bool get debug;
  external set debug(bool v);
  external num get deltaX;
  external set deltaX(num v);
  external num get deltaY;
  external set deltaY(num v);
  external num get deltaZ;
  external set deltaZ(num v);
  external bool get destroyPhase;
  external set destroyPhase(bool v);
  external Events get events;
  external set events(Events v);
  external bool get exists;
  external set exists(bool v);
  external bool get fixedToCamera;
  external set fixedToCamera(bool v);
  external dynamic /*String|num*/ get frame;
  external set frame(dynamic /*String|num*/ v);
  external String get frameName;
  external set frameName(String v);
  external bool get fresh;
  external set fresh(bool v);
  external Game get game;
  external set game(Game v);
  external num get health;
  external set health(num v);
  external bool get inCamera;
  external set inCamera(bool v);
  external InputHandler get input;
  external set input(InputHandler v);
  external bool get inputEnabled;
  external set inputEnabled(bool v);
  external bool get inWorld;
  external set inWorld(bool v);
  external dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ get key;
  external set key(
      dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ v);
  external num get left;
  external set left(num v);
  external num get lifespan;
  external set lifespan(num v);
  external num get maxHealth;
  external set maxHealth(num v);
  external String get name;
  external set name(String v);
  external num get offsetX;
  external set offsetX(num v);
  external num get offsetY;
  external set offsetY(num v);
  external bool get outOfBoundsKill;
  external set outOfBoundsKill(bool v);
  external bool get pendingDestroy;
  external set pendingDestroy(bool v);
  external Point get previousPosition;
  external set previousPosition(Point v);
  external num get previousRotation;
  external set previousRotation(num v);
  external Point get position;
  external set position(Point v);
  external bool get physicsEnabled;
  external set physicsEnabled(bool v);
  external num get physicsType;
  external set physicsType(num v);
  external num get renderOrderID;
  external set renderOrderID(num v);
  external num get right;
  external set right(num v);
  external Point get scale;
  external set scale(Point v);
  external Point get scaleMin;
  external set scaleMin(Point v);
  external Point get scaleMax;
  external set scaleMax(Point v);
  external bool get smoothed;
  external set smoothed(bool v);
  external num get top;
  external set top(num v);
  external num get type;
  external set type(num v);
  external CanvasElement get tintedTexture;
  external set tintedTexture(CanvasElement v);
  external Function get transformCallback;
  external set transformCallback(Function v);
  external dynamic get transformCallbackContext;
  external set transformCallbackContext(dynamic v);
  external Point get world;
  external set world(Point v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get z;
  external set z(num v);
  external dynamic alignIn(
      dynamic /*Rectangle|Sprite|Image|Text|BitmapText|Button|Graphics|TileSprite*/ container,
      [num position,
      num offsetX,
      num offsetY]);
  external dynamic alignTo(
      dynamic /*Rectangle|Sprite|Image|Text|BitmapText|Button|Graphics|TileSprite*/ container,
      [num position,
      num offsetX,
      num offsetY]);
  external Sprite bringToTop();
  external void crop(Rectangle rect, bool copy);
  external void checkTransform(PIXI.Matrix wt);
  external Sprite damage(num amount);
  external void destroy([bool destroyChildren]);
  external void drawPolygon();
  external Sprite heal(num amount);
  external Sprite kill();
  external void loadTexture(
      dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ key,
      [dynamic /*String|num*/ frame,
      bool stopAnimation]);
  external Sprite moveUp();
  external Sprite moveDown();
  external bool overlap(
      dynamic /*Sprite|Image|TileSprite|Button|PIXI.DisplayObject*/ displayObject);
  external Animation play(String name,
      [num frameRate, bool loop, bool killOnComplete]);
  external void postUpdate();
  external void preUpdate();
  external Sprite reset(num x, num y, [num health]);
  external void resetFrame();
  external void resizeFrame(dynamic parent, num width, num height);
  external Sprite revive([num health]);
  external Sprite sendToBack();
  external void setFrame(Frame frame);
  external void setScaleMinMax([num minX, num minY, num maxX, num maxY]);
  external void update();
  external void updateCrop();
}

@JS("Phaser.SpriteBatch")
class SpriteBatch extends Group {
  // @Ignore
  SpriteBatch.fakeConstructor$() : super.fakeConstructor$();
  external factory SpriteBatch(Game game, PIXI.DisplayObjectContainer parent,
      [String name, bool addedToStage]);
  external num get type;
  external set type(num v);
}

@JS("Phaser.Stage")
class Stage extends DisplayObjectContainer {
  // @Ignore
  Stage.fakeConstructor$() : super.fakeConstructor$();
  external factory Stage(Game game);
  external Game get game;
  external set game(Game v);
  external String get name;
  external set name(String v);
  external bool get disableVisibilityChange;
  external set disableVisibilityChange(bool v);
  external bool get exists;
  external set exists(bool v);
  external num get currentRenderOrderID;
  external set currentRenderOrderID(num v);
  external dynamic get backgroundColor;
  external set backgroundColor(dynamic v);
  external bool get smoothed;
  external set smoothed(bool v);
  external void parseConfig(dynamic config);
  external void preUpdate();
  external void update();
  external void postUpdate();
  external void updateTransform();
  external void checkVisibility();
  external void visibilityChange(Event event);
  external void setBackgroundColor(dynamic /*num|String*/ backgroundColor);
  external void destroy();
}

typedef dynamic ResizeCallback(ScaleManager scale, Rectangle parentBounds);

@JS("Phaser.ScaleManager")
class ScaleManager {
  // @Ignore
  ScaleManager.fakeConstructor$();
  external factory ScaleManager(
      Game game, dynamic /*num|String*/ width, dynamic /*num|String*/ height);
  external static num get EXACT_FIT;
  external static set EXACT_FIT(num v);
  external static num get NO_SCALE;
  external static set NO_SCALE(num v);
  external static num get SHOW_ALL;
  external static set SHOW_ALL(num v);
  external static num get RESIZE;
  external static set RESIZE(num v);
  external static num get USER_SCALE;
  external static set USER_SCALE(num v);
  external num get aspectRatio;
  external set aspectRatio(num v);
  external Rectangle get bounds;
  external set bounds(Rectangle v);
  external HtmlElement get boundingParent;
  external set boundingParent(HtmlElement v);
  external dynamic
      /*{
            canExpandParent: boolean;
            clickTrampoline: string;
            forceMinimumDocumentHeight: boolean;
            noMargins: boolean;
            scrollTo: Point;
            supportsFullScreen: boolean;
        }*/
      get compatibility;
  external set compatibility(
      dynamic /*{
            canExpandParent: boolean;
            clickTrampoline: string;
            forceMinimumDocumentHeight: boolean;
            noMargins: boolean;
            scrollTo: Point;
            supportsFullScreen: boolean;
        }*/
      v);
  external num get currentScaleMode;
  external set currentScaleMode(num v);
  external DOM get dom;
  external set dom(DOM v);
  external Signal get enterIncorrectOrientation;
  external set enterIncorrectOrientation(Signal v);
  external dynamic get event;
  external set event(dynamic v);
  external bool get forceLandscape;
  external set forceLandscape(bool v);
  external bool get forcePortrait;
  external set forcePortrait(bool v);
  external num get fullScreenScaleMode;
  external set fullScreenScaleMode(num v);
  external HtmlElement get fullScreenTarget;
  external set fullScreenTarget(HtmlElement v);
  external Game get game;
  external set game(Game v);
  external FlexGrid get grid;
  external set grid(FlexGrid v);
  external bool get hasPhaserSetFullScreen;
  external set hasPhaserSetFullScreen(bool v);
  external num get height;
  external set height(num v);
  external bool get incorrectOrientation;
  external set incorrectOrientation(bool v);
  external bool get isFullScreen;
  external set isFullScreen(bool v);
  external bool get isGameLandscape;
  external set isGameLandscape(bool v);
  external bool get isGamePortrait;
  external set isGamePortrait(bool v);
  external bool get isPortrait;
  external set isPortrait(bool v);
  external bool get isLandscape;
  external set isLandscape(bool v);
  external Signal get leaveIncorrectOrientation;
  external set leaveIncorrectOrientation(Signal v);
  external dynamic /*{ left: number; top: number; right: number; bottom: number; x: number; y: number; }*/ get margin;
  external set margin(
      dynamic /*{ left: number; top: number; right: number; bottom: number; x: number; y: number; }*/ v);
  external num get maxHeight;
  external set maxHeight(num v);
  external num get maxWidth;
  external set maxWidth(num v);
  external num get minHeight;
  external set minHeight(num v);
  external num get minWidth;
  external set minWidth(num v);
  external Point get offset;
  external set offset(Point v);
  external Signal get onFullScreenInit;
  external set onFullScreenInit(Signal v);
  external Signal get onFullScreenChange;
  external set onFullScreenChange(Signal v);
  external Signal get onFullScreenError;
  external set onFullScreenError(Signal v);
  external Signal get onOrientationChange;
  external set onOrientationChange(Signal v);
  external Signal get onSizeChange;
  external set onSizeChange(Signal v);
  external bool get pageAlignHorizontally;
  external set pageAlignHorizontally(bool v);
  external bool get pageAlignVertically;
  external set pageAlignVertically(bool v);
  external HtmlElement get parentNode;
  external set parentNode(HtmlElement v);
  external bool get parentIsWindow;
  external set parentIsWindow(bool v);
  external Point get parentScaleFactor;
  external set parentScaleFactor(Point v);
  external Point get scaleFactor;
  external set scaleFactor(Point v);
  external Point get scaleFactorInversed;
  external set scaleFactorInversed(Point v);
  external num get scaleMode;
  external set scaleMode(num v);
  external String get screenOrientation;
  external set screenOrientation(String v);
  external num get sourceAspectRatio;
  external set sourceAspectRatio(num v);
  external num get trackParentInterval;
  external set trackParentInterval(num v);
  external num get width;
  external set width(num v);
  external dynamic
      /*{
            bottom: string;
            right: string;
        }*/
      get windowConstraints;
  external set windowConstraints(
      dynamic /*{
            bottom: string;
            right: string;
        }*/
      v);
  external void boot();
  external DivElement createFullScreenTarget();
  external void destroy();
  external void forceOrientation(bool forceLandscape, [bool forcePortrait]);
  external Rectangle getParentBounds([Rectangle target]);
  external void parseConfig(dynamic config);
  external void preUpdate();
  external void pauseUpdate();
  external void refresh();
  external void setGameSize(num width, num height);
  external void setResizeCallback(ResizeCallback callback, dynamic context);
  external void setUserScale(num hScale, num vScale, [num hTrim, num vTrim]);
  external void setMinMax(num minWidth, num minHeight,
      [num maxWidth, num maxHeight]);
  /*external void setupScale(num width, num height);*/
  /*external void setupScale(String width, String height);*/
  external void setupScale(
      dynamic /*num|String*/ width, dynamic /*num|String*/ height);
  /*external Sprite scaleSprite(Sprite sprite,
    [num width, num height, bool letterBox]);*/
  /*external Sprite scaleSprite(Image sprite,
    [num width, num height, bool letterBox]);*/
  external Sprite scaleSprite(dynamic /*Sprite|Image*/ sprite,
      [num width, num height, bool letterBox]);
  external bool startFullScreen([bool antialias, bool allowTrampoline]);
  external bool stopFullScreen();
}

@JS("Phaser.DOM")
class DOM {
  // @Ignore
  DOM.fakeConstructor$();
  external static Rectangle get visualBounds;
  external static set visualBounds(Rectangle v);
  external static Rectangle get layoutBounds;
  external static set layoutBounds(Rectangle v);
  external static Rectangle get documentBounds;
  external static set documentBounds(Rectangle v);
  external static dynamic calibrate(dynamic coords, [num cushion]);
  external static num getAspectRatio(dynamic object);
  external static String getScreenOrientation([String primaryFallback]);
  external static dynamic getBounds(dynamic element, [num cushion]);
  external static Point getOffset(dynamic element, [Point point]);
  external static bool inLayoutViewport(dynamic element, [num cushion]);
}

@JS("Phaser.State")
class State {
  // @Ignore
  State.fakeConstructor$();
  external GameObjectFactory get add;
  external set add(GameObjectFactory v);
  external Cache get cache;
  external set cache(Cache v);
  external Camera get camera;
  external set camera(Camera v);
  external Game get game;
  external set game(Game v);
  external Input get input;
  external set input(Input v);
  external String get key;
  external set key(String v);
  external Loader get load;
  external set load(Loader v);
  external GameObjectCreator get make;
  external set make(GameObjectCreator v);
  external Particles get particles;
  external set particles(Particles v);
  external Physics get physics;
  external set physics(Physics v);
  external RandomDataGenerator get rnd;
  external set rnd(RandomDataGenerator v);
  external ScaleManager get scale;
  external set scale(ScaleManager v);
  external SoundManager get sound;
  external set sound(SoundManager v);
  external Stage get stage;
  external set stage(Stage v);
  external Time get time;
  external set time(Time v);
  external TweenManager get tweens;
  external set tweens(TweenManager v);
  external World get world;
  external set world(World v);
  external void create();
  external void init(
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external void loadRender();
  external void loadUpdate();
  external void paused();
  external void pauseUpdate();
  external void preload();
  external void preRender();
  external void render();
  external void resize();
  external void resumed();
  external void shutdown();
  external void update();
}

@anonymous
@JS()
abstract class IStateCycle {
  external void preUpdate();
  external void update();
  external void render();
  external void postRender();
  external void destroy();
}

@JS("Phaser.StateManager")
class StateManager {
  // @Ignore
  StateManager.fakeConstructor$();
  external factory StateManager(Game game, [State pendingState]);
  external bool get created;
  external set created(bool v);
  external String get current;
  external set current(String v);
  external Game get game;
  external set game(Game v);
  external Function get onCreateCallback;
  external set onCreateCallback(Function v);
  external Function get onInitCallback;
  external set onInitCallback(Function v);
  external Function get onLoadRenderCallback;
  external set onLoadRenderCallback(Function v);
  external Function get onLoadUpdateCallback;
  external set onLoadUpdateCallback(Function v);
  external Function get onPausedCallback;
  external set onPausedCallback(Function v);
  external Function get onPauseUpdateCallback;
  external set onPauseUpdateCallback(Function v);
  external Function get onPreloadCallback;
  external set onPreloadCallback(Function v);
  external Function get onPreRenderCallback;
  external set onPreRenderCallback(Function v);
  external Function get onRenderCallback;
  external set onRenderCallback(Function v);
  external Function get onResumedCallback;
  external set onResumedCallback(Function v);
  external Function get onResizeCallback;
  external set onResizeCallback(Function v);
  external Function get onShutDownCallback;
  external set onShutDownCallback(Function v);
  external Function get onUpdateCallback;
  external set onUpdateCallback(Function v);
  external dynamic get states;
  external set states(dynamic v);
  external Signal get onStateChange;
  external set onStateChange(Signal v);
  external void add(String key, dynamic state, [bool autoStart]);
  external bool checkState(String key);
  external void clearCurrentState();
  external void destroy();
  external State getCurrentState();
  external void link(String key);
  external void loadComplete();
  external void preRender(num elapsedTime);
  external void preUpdate();
  external void render();
  external void remove(String key);
  external void resume();
  external void restart(
      [bool clearWorld,
      bool clearCache,
      dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external void resize(num width, num height);
  external void start(String key,
      [bool clearWorld,
      bool clearCache,
      dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external void update();
  external void unlink(String key);
}

@anonymous
@JS()
abstract class PhaserTextStyle {
  external String get font;
  external set font(String v);
  external dynamic get fill;
  external set fill(dynamic v);
  external String get align;
  external set align(String v);
  external String get stroke;
  external set stroke(String v);
  external num get strokeThickness;
  external set strokeThickness(num v);
  external bool get wordWrap;
  external set wordWrap(bool v);
  external num get wordWrapWidth;
  external set wordWrapWidth(num v);
  external num get maxLines;
  external set maxLines(num v);
  external num get shadowOffsetX;
  external set shadowOffsetX(num v);
  external num get shadowOffsetY;
  external set shadowOffsetY(num v);
  external String get shadowColor;
  external set shadowColor(String v);
  external num get shadowBlur;
  external set shadowBlur(num v);
  external String get valign;
  external set valign(String v);
  external num get tab;
  external set tab(num v);
  external num get tabs;
  external set tabs(num v);
  external num get fontSize;
  external set fontSize(num v);
  external String get fontStyle;
  external set fontStyle(String v);
  external String get fontVariant;
  external set fontVariant(String v);
  external dynamic /*String|num*/ get fontWeight;
  external set fontWeight(dynamic /*String|num*/ v);
  external String get backgroundColor;
  external set backgroundColor(String v);
  external String get boundsAlignH;
  external set boundsAlignH(String v);
  external String get boundsAlignV;
  external set boundsAlignV(String v);
  external factory PhaserTextStyle(
      {String font,
      dynamic fill,
      String align,
      String stroke,
      num strokeThickness,
      bool wordWrap,
      num wordWrapWidth,
      num maxLines,
      num shadowOffsetX,
      num shadowOffsetY,
      String shadowColor,
      num shadowBlur,
      String valign,
      num tab,
      num tabs,
      num fontSize,
      String fontStyle,
      String fontVariant,
      dynamic /*String|num*/ fontWeight,
      String backgroundColor,
      String boundsAlignH,
      String boundsAlignV});
}

@JS("Phaser.Text")
class Text extends Sprite {
  // @Ignore
  Text.fakeConstructor$() : super.fakeConstructor$();
  external factory Text(Game game, num x, num y, String text,
      [PhaserTextStyle style]);
  external static dynamic get fontPropertiesCanvas;
  external static set fontPropertiesCanvas(dynamic v);
  external static dynamic get fontPropertiesContext;
  external static set fontPropertiesContext(dynamic v);
  external static dynamic get fontPropertiesCache;
  external static set fontPropertiesCache(dynamic v);
  external String get align;
  external set align(String v);
  external num get angle;
  external set angle(num v);
  external bool get autoRound;
  external set autoRound(bool v);
  external String get boundsAlignH;
  external set boundsAlignH(String v);
  external String get boundsAlignV;
  external set boundsAlignV(String v);
  external Point get cameraOffset;
  external set cameraOffset(Point v);
  external CanvasElement get canvas;
  external set canvas(CanvasElement v);
  external List<String> get colors;
  external set colors(List<String> v);
  external CanvasRenderingContext2D get context;
  external set context(CanvasRenderingContext2D v);
  external String get cssFont;
  external set cssFont(String v);
  external bool get destroyPhase;
  external set destroyPhase(bool v);
  external Events get events;
  external set events(Events v);
  external bool get exists;
  external set exists(bool v);
  external dynamic get fill;
  external set fill(dynamic v);
  external bool get fixedToCamera;
  external set fixedToCamera(bool v);
  external String get font;
  external set font(String v);
  external dynamic /*num|String*/ get fontSize;
  external set fontSize(dynamic /*num|String*/ v);
  external String get fontStyle;
  external set fontStyle(String v);
  external List<String> get fontStyles;
  external set fontStyles(List<String> v);
  external String get fontVariant;
  external set fontVariant(String v);
  external dynamic /*String|num*/ get fontWeight;
  external set fontWeight(dynamic /*String|num*/ v);
  external List<dynamic /*String|num*/ > get fontWeights;
  external set fontWeights(List<dynamic /*String|num*/ > v);
  external Game get game;
  external set game(Game v);
  external InputHandler get input;
  external set input(InputHandler v);
  external bool get inputEnabled;
  external set inputEnabled(bool v);
  external num get lineSpacing;
  external set lineSpacing(num v);
  external String get name;
  external set name(String v);
  external Point get padding;
  external set padding(Point v);
  external bool get pendingDestroy;
  external set pendingDestroy(bool v);
  external num get physicsType;
  external set physicsType(num v);
  external Point get position;
  external set position(Point v);
  external Point get previousPosition;
  external set previousPosition(Point v);
  external num get previousRotation;
  external set previousRotation(num v);
  external num get renderOrderID;
  external set renderOrderID(num v);
  external num get resolution;
  external set resolution(num v);
  external num get shadowBlur;
  external set shadowBlur(num v);
  external String get shadowColor;
  external set shadowColor(String v);
  external bool get shadowFill;
  external set shadowFill(bool v);
  external num get shadowOffsetX;
  external set shadowOffsetX(num v);
  external num get shadowOffsetY;
  external set shadowOffsetY(num v);
  external bool get shadowStroke;
  external set shadowStroke(bool v);
  external String get stroke;
  external set stroke(String v);
  external List<String> get strokeColors;
  external set strokeColors(List<String> v);
  external num get strokeThickness;
  external set strokeThickness(num v);
  external Point get scale;
  external set scale(Point v);
  external num get tab;
  external set tab(num v);
  external dynamic /*num|List<num>*/ get tabs;
  external set tabs(dynamic /*num|List<num>*/ v);
  external String get text;
  external set text(String v);
  external Rectangle get textBounds;
  external set textBounds(Rectangle v);
  external num get type;
  external set type(num v);
  external bool get useAdvancedWrap;
  external set useAdvancedWrap(bool v);
  external Point get world;
  external set world(Point v);
  external bool get wordWrap;
  external set wordWrap(bool v);
  external num get wordWrapWidth;
  external set wordWrapWidth(num v);
  external num get z;
  external set z(num v);
  external Text addColor(String color, num position);
  external Text addFontStyle(String style, num position);
  external Text addFontWeight(String weight, num position);
  external Text addStrokeColor(String color, num position);
  external dynamic alignIn(
      dynamic /*Rectangle|Sprite|Image|Text|BitmapText|Button|Graphics|TileSprite*/ container,
      [num position,
      num offsetX,
      num offsetY]);
  external dynamic alignTo(
      dynamic /*Rectangle|Sprite|Image|Text|BitmapText|Button|Graphics|TileSprite*/ container,
      [num position,
      num offsetX,
      num offsetY]);
  external Text clearColors();
  external Text clearFontValues();
  external String componentsToFont(dynamic components);
  external void destroy([bool destroyChildren]);
  external dynamic fontToComponents(String font);
  external void postUpdate();
  external Text parseList(List<dynamic> list);
  external List<String> precalculateWordWrap(String text);
  external void preUpdate();
  external void renderTabLine(String line, num x, num y, [bool fill]);
  external Text setShadow(
      [num x,
      num y,
      dynamic color,
      num blur,
      bool shadowStroke,
      bool shadowFill]);
  external Text setStyle([PhaserTextStyle style, bool update]);
  external Text setText(String text, [bool immediate]);
  external Text setTextBounds([num x, num y, num width, num height]);
  external void update();
  external void updateFont(dynamic components);
  external void updateLine(String text, [num x, num y]);
  external void updateShadow([bool state]);
  external void updateTexture();
}

@JS("Phaser.Tile")
class Tile {
  // @Ignore
  Tile.fakeConstructor$();
  external factory Tile(
      dynamic layer, num index, num x, num y, num width, num height);
  external num get alpha;
  external set alpha(num v);
  external num get bottom;
  external set bottom(num v);
  external Function get callback;
  external set callback(Function v);
  external dynamic get callbackContext;
  external set callbackContext(dynamic v);
  external num get centerX;
  external set centerX(num v);
  external num get centerY;
  external set centerY(num v);
  external bool get canCollide;
  external set canCollide(bool v);
  external bool get collideDown;
  external set collideDown(bool v);
  external bool get collideLeft;
  external set collideLeft(bool v);
  external bool get collideNone;
  external set collideNone(bool v);
  external bool get collideRight;
  external set collideRight(bool v);
  external Function get collisionCallback;
  external set collisionCallback(Function v);
  external dynamic get collisionCallbackContext;
  external set collisionCallbackContext(dynamic v);
  external bool get collides;
  external set collides(bool v);
  external bool get collideUp;
  external set collideUp(bool v);
  external bool get faceBottom;
  external set faceBottom(bool v);
  external bool get faceLeft;
  external set faceLeft(bool v);
  external bool get faceRight;
  external set faceRight(bool v);
  external bool get faceTop;
  external set faceTop(bool v);
  external Game get game;
  external set game(Game v);
  external num get height;
  external set height(num v);
  external num get index;
  external set index(num v);
  external dynamic get layer;
  external set layer(dynamic v);
  external num get left;
  external set left(num v);
  external dynamic get properties;
  external set properties(dynamic v);
  external num get right;
  external set right(num v);
  external bool get scanned;
  external set scanned(bool v);
  external num get top;
  external set top(num v);
  external num get width;
  external set width(num v);
  external num get worldX;
  external set worldX(num v);
  external num get worldY;
  external set worldY(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external Tile copy(Tile tile);
  external bool containsPoint(num x, num y);
  external void destroy();
  external bool intersects(num x, num y, num right, num bottom);
  external bool isInterested(bool collides, bool faces);
  external void resetCollision();
  external void setCollision(bool left, bool right, bool up, bool down);
  external void setCollisionCallback(Function callback, dynamic context);
}

@JS("Phaser.Tilemap")
class Tilemap {
  // @Ignore
  Tilemap.fakeConstructor$();
  external factory Tilemap(Game game,
      [String key, num tileWidth, num tileHeight, num width, num height]);
  external static num get CSV;
  external static set CSV(num v);
  external static num get TILED_JSON;
  external static set TILED_JSON(num v);
  external static num get NORTH;
  external static set NORTH(num v);
  external static num get EAST;
  external static set EAST(num v);
  external static num get SOUTH;
  external static set SOUTH(num v);
  external static num get WEST;
  external static set WEST(num v);
  external List<dynamic> get collision;
  external set collision(List<dynamic> v);
  external List<dynamic> get collideIndexes;
  external set collideIndexes(List<dynamic> v);
  external num get currentLayer;
  external set currentLayer(num v);
  external List<dynamic> get debugMap;
  external set debugMap(List<dynamic> v);
  external bool get enableDebug;
  external set enableDebug(bool v);
  external num get format;
  external set format(num v);
  external Game get game;
  external set game(Game v);
  external num get height;
  external set height(num v);
  external num get heightInPixels;
  external set heightInPixels(num v);
  external List<dynamic> get images;
  external set images(List<dynamic> v);
  external List<ImageCollection> get imagecollections;
  external set imagecollections(List<ImageCollection> v);
  external String get key;
  external set key(String v);
  external List<TilemapLayer> get layer;
  external set layer(List<TilemapLayer> v);
  external List<dynamic> get layers;
  external set layers(List<dynamic> v);
  external List<dynamic> get objects;
  external set objects(List<dynamic> v);
  external String get orientation;
  external set orientation(String v);
  external dynamic get properties;
  external set properties(dynamic v);
  external num get rayStepRate;
  external set rayStepRate(num v);
  external num get tileHeight;
  external set tileHeight(num v);
  external List<Tile> get tiles;
  external set tiles(List<Tile> v);
  external List<Tileset> get tilesets;
  external set tilesets(List<Tileset> v);
  external num get tileWidth;
  external set tileWidth(num v);
  external num get version;
  external set version(num v);
  external num get width;
  external set width(num v);
  external num get widthInPixels;
  external set widthInPixels(num v);
  external Tileset addTilesetImage(String tileset,
      [dynamic /*String|BitmapData*/ key,
      num tileWidth,
      num tileHeight,
      num tileMargin,
      num tileSpacing,
      num gid]);
  external void calculateFaces(num layer);
  external List<Tile> copy(num x, num y, num width, num height,
      [dynamic layer]);
  external TilemapLayer create(
      String name, num width, num height, num tileWidth, num tileHeight,
      [Group group]);
  external TilemapLayer createBlankLayer(
      String name, num width, num height, num tileWidth, num tileHeight,
      [Group group]);
  external void createFromObjects(String name, num gid, String key,
      [dynamic frame,
      bool exists,
      bool autoCull,
      Group group,
      dynamic CustomClass,
      bool adjustY]);
  external num createFromTiles(dynamic tiles, dynamic replacements, String key,
      [dynamic layer, Group group, dynamic properties]);
  external TilemapLayer createLayer(dynamic layer,
      [num width, num height, Group group]);
  external void destroy();
  external void dump();
  external void fill(num index, num x, num y, num width, num height,
      [dynamic layer]);
  external void forEach(
      Function callback, dynamic context, num x, num y, num width, num height,
      [dynamic layer]);
  external num getImageIndex(String name);
  external num getIndex(List<dynamic> location, String name);
  external num getLayer(dynamic layer);
  external num getLayerIndex(String name);
  external num getObjectIndex(String name);
  external Tile getTile(num x, num y, [dynamic layer, bool nonNull]);
  external List<Tile> getRayCastTiles(
      dynamic /*TilemapLayer|TilemapLayerGL*/ layer, Line line,
      [num stepRate, bool collides, bool interestingFace]);
  external List<Tile> getTiles(dynamic /*TilemapLayer|TilemapLayerGL*/ layer,
      num x, num y, num width, num height,
      [bool collides, bool interestingFace]);
  external num getTileX(dynamic /*TilemapLayer|TilemapLayerGL*/ layer, num x);
  external Point getTileXY(
      dynamic /*TilemapLayer|TilemapLayerGL*/ layer, num x, num y, Point point);
  external num getTileY(dynamic /*TilemapLayer|TilemapLayerGL*/ layer, num y);
  external Tile getTileAbove(num layer, num x, num y);
  external Tile getTileBelow(num layer, num x, num y);
  external Tile getTileLeft(num layer, num x, num y);
  external Tile getTileRight(num layer, num x, num y);
  external num getTilesetIndex(String name);
  external Tile getTileWorldXY(num x, num y,
      [num tileWidth,
      num tileHeight,
      dynamic /*num|String|TilemapLayer*/ layer,
      bool nonNull]);
  external bool hasTile(num x, num y, TilemapLayer layer);
  external void paste(num x, num y, List<Tile> tileblock, [dynamic layer]);
  external Tile putTile(dynamic tile, num x, num y, [dynamic layer]);
  external void putTileWorldXY(
      dynamic tile, num x, num y, num tileWidth, num tileHeight,
      [dynamic layer]);
  external void random(num x, num y, num width, num height, [dynamic layer]);
  external void removeAllLayers();
  external Tile removeTile(num x, num y, [dynamic layer]);
  external Tile removeTileWorldXY(num x, num y, num tileWidth, num tileHeight,
      [dynamic layer]);
  external void replace(
      num source, num dest, num x, num y, num width, num height,
      [dynamic layer]);
  external Tile searchTileIndex(num index,
      [num skip, bool reverse, dynamic layer]);
  external void setCollision(dynamic indexes,
      [bool collides, dynamic layer, bool recalculate]);
  external void setCollisionBetween(num start, num stop,
      [bool collides, dynamic layer, bool recalculate]);
  external void setCollisionByExclusion(List<dynamic> indexes,
      [bool collides, dynamic layer, bool recalculate]);
  external void setCollisionByIndex(num index,
      [bool collides, num layer, bool recalculate]);
  external void setLayer(dynamic layer);
  external void setPreventRecalculate(bool value);
  external void setTileIndexCallback(
      dynamic indexes, Function callback, dynamic callbackContext,
      [dynamic layer]);
  external void setTileLocationCallback(num x, num y, num width, num height,
      Function callback, dynamic callbackContext,
      [dynamic layer]);
  external void setTileSize(num tileWidth, num tileHeight);
  external void shuffle(num x, num y, num width, num height, dynamic layer);
  external void swap(num tileA, num tileB, num x, num y, num width, num height,
      [dynamic layer]);
}

@JS("Phaser.TilemapLayer")
class TilemapLayer extends Sprite {
  // @Ignore
  TilemapLayer.fakeConstructor$() : super.fakeConstructor$();
  external factory TilemapLayer(Game game, Tilemap tilemap, num index,
      [num width, num height]);
  external Point get cameraOffset;
  external set cameraOffset(Point v);
  external CanvasElement get canvas;
  external set canvas(CanvasElement v);
  external num get collisionHeight;
  external set collisionHeight(num v);
  external num get collisionWidth;
  external set collisionWidth(num v);
  external CanvasRenderingContext2D get context;
  external set context(CanvasRenderingContext2D v);
  external dynamic get data;
  external set data(dynamic v);
  external bool get debug;
  external set debug(bool v);
  external num get debugAlpha;
  external set debugAlpha(num v);
  external String get debugCallbackColor;
  external set debugCallbackColor(String v);
  external String get debugColor;
  external set debugColor(String v);
  external dynamic /*{ missingImageFill: string; debuggedTileOverfill: string; forceFullRedraw: boolean; debugAlpha: number; facingEdgeStroke: string; collidingTileOverfill: string; }*/ get debugSettings;
  external set debugSettings(
      dynamic /*{ missingImageFill: string; debuggedTileOverfill: string; forceFullRedraw: boolean; debugAlpha: number; facingEdgeStroke: string; collidingTileOverfill: string; }*/ v);
  external bool get dirty;
  external set dirty(bool v);
  external bool get exists;
  external set exists(bool v);
  external bool get fixedToCamera;
  external set fixedToCamera(bool v);
  external Game get game;
  external set game(Game v);
  external num get index;
  external set index(num v);
  external TilemapLayer get layer;
  external set layer(TilemapLayer v);
  external Tilemap get map;
  external set map(Tilemap v);
  external String get name;
  external set name(String v);
  external num get physicsType;
  external set physicsType(num v);
  external dynamic /*{ enableScrollDelta: boolean; overdrawRatio: number; copyCanvas: any; }*/ get renderSettings;
  external set renderSettings(
      dynamic /*{ enableScrollDelta: boolean; overdrawRatio: number; copyCanvas: any; }*/ v);
  external num get scrollFactorX;
  external set scrollFactorX(num v);
  external num get scrollFactorY;
  external set scrollFactorY(num v);
  external num get scrollX;
  external set scrollX(num v);
  external num get scrollY;
  external set scrollY(num v);
  external num get type;
  external set type(num v);
  external bool get wrap;
  external set wrap(bool v);
  external void destroy();
  external void postUpdate();
  external void render();
  external void resize(num width, num height);
  external void resizeWorld();
  external void resetTilesetCache();
  external void setScale([num xScale, num yScale]);
  external void updateMax();
}

@JS("Phaser.TilemapLayerGL")
class TilemapLayerGL {
  // @Ignore
  TilemapLayerGL.fakeConstructor$();
  external factory TilemapLayerGL(Game game, Tilemap tilemap, num index,
      [num width, num height, Tileset tileset]);
  external num get collisionHeight;
  external set collisionHeight(num v);
  external num get collisionWidth;
  external set collisionWidth(num v);
  external dynamic get data;
  external set data(dynamic v);
  external bool get dirty;
  external set dirty(bool v);
  external bool get exists;
  external set exists(bool v);
  external bool get fixedToCamera;
  external set fixedToCamera(bool v);
  external Game get game;
  external set game(Game v);
  external num get index;
  external set index(num v);
  external TilemapLayer get layer;
  external set layer(TilemapLayer v);
  external Tilemap get map;
  external set map(Tilemap v);
  external String get name;
  external set name(String v);
  external num get physicsType;
  external set physicsType(num v);
  external num get scrollFactorX;
  external set scrollFactorX(num v);
  external num get scrollFactorY;
  external set scrollFactorY(num v);
  external num get scrollX;
  external set scrollX(num v);
  external num get scrollY;
  external set scrollY(num v);
  external num get type;
  external set type(num v);
  external bool get wrap;
  external set wrap(bool v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external void destroy();
  external void postUpdate();
  external void render();
  external void resize(num width, num height);
  external void resizeWorld();
  external void resetTilesetCache();
  external void setScale([num xScale, num yScale]);
  external void updateMax();
}

@JS("Phaser.TilemapParser")
class TilemapParser {
  // @Ignore
  TilemapParser.fakeConstructor$();
  external static bool get INSERT_NULL;
  external static set INSERT_NULL(bool v);
  external static dynamic getEmptyData(
      [num tileWidth, num tileHeight, num width, num height]);
  external static dynamic parse(Game game, String key,
      [num tileWidth, num tileHeight, num width, num height]);
  external static dynamic parseCSV(String key, String data,
      [num tileWidth, num tileHeight]);
  external static dynamic parseJSON(dynamic json);
}

@JS("Phaser.Tileset")
class Tileset {
  // @Ignore
  Tileset.fakeConstructor$();
  external factory Tileset(String name, num firstgid,
      [num width, num height, num margin, num spacing, dynamic properties]);
  external num get columns;
  external set columns(num v);
  external num get firstgid;
  external set firstgid(num v);
  external dynamic get image;
  external set image(dynamic v);
  external num get lastgid;
  external set lastgid(num v);
  external String get name;
  external set name(String v);
  external dynamic get properties;
  external set properties(dynamic v);
  external num get rows;
  external set rows(num v);
  external num get tileHeight;
  external set tileHeight(num v);
  external num get tileMargin;
  external set tileMargin(num v);
  external num get tileSpacing;
  external set tileSpacing(num v);
  external num get tileWidth;
  external set tileWidth(num v);
  external num get total;
  external set total(num v);
  external bool containsTileIndex(num tileIndex);
  external void draw(CanvasRenderingContext2D context, num x, num y, num index);
  external void drawGl(List<dynamic> glBatch, num x, num y, num index,
      num alpha, num flippedVal);
  external void setImage(dynamic image);
  external void setSpacing([num margin, num spacing]);
}

@JS("Phaser.TileSprite")
class TileSprite extends TilingSprite {
  // @Ignore
  TileSprite.fakeConstructor$() : super.fakeConstructor$();
  external factory TileSprite(Game game, num x, num y, num width, num height,
      [dynamic /*String|RenderTexture|BitmapData|PIXI.Texture*/ key,
      dynamic /*String|num*/ frame]);
  external bool get alive;
  external set alive(bool v);
  external num get angle;
  external set angle(num v);
  external AnimationManager get animations;
  external set animations(AnimationManager v);
  external bool get autoCull;
  external set autoCull(bool v);
  external dynamic /*Body|P2_Body|Ninja_Body|dynamic*/ get body;
  external set body(dynamic /*Body|P2_Body|Ninja_Body|dynamic*/ v);
  external num get bottom;
  external set bottom(num v);
  external Point get cameraOffset;
  external set cameraOffset(Point v);
  external bool get checkWorldBounds;
  external set checkWorldBounds(bool v);
  external dynamic get components;
  external set components(dynamic v);
  external bool get customRender;
  external set customRender(bool v);
  external dynamic get data;
  external set data(dynamic v);
  external bool get debug;
  external set debug(bool v);
  external bool get destroyPhase;
  external set destroyPhase(bool v);
  external Events get events;
  external set events(Events v);
  external bool get exists;
  external set exists(bool v);
  external bool get fixedToCamera;
  external set fixedToCamera(bool v);
  external dynamic /*String|num*/ get frame;
  external set frame(dynamic /*String|num*/ v);
  external String get frameName;
  external set frameName(String v);
  external bool get fresh;
  external set fresh(bool v);
  external Game get game;
  external set game(Game v);
  external bool get inCamera;
  external set inCamera(bool v);
  external InputHandler get input;
  external set input(InputHandler v);
  external bool get inputEnabled;
  external set inputEnabled(bool v);
  external bool get inWorld;
  external set inWorld(bool v);
  external dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ get key;
  external set key(
      dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ v);
  external num get left;
  external set left(num v);
  external String get name;
  external set name(String v);
  external num get offsetX;
  external set offsetX(num v);
  external num get offsetY;
  external set offsetY(num v);
  external bool get outOfBoundsKill;
  external set outOfBoundsKill(bool v);
  external bool get pendingDestroy;
  external set pendingDestroy(bool v);
  external num get physicsType;
  external set physicsType(num v);
  external Point get position;
  external set position(Point v);
  external bool get smoothed;
  external set smoothed(bool v);
  external Point get previousPosition;
  external set previousPosition(Point v);
  external num get previousRoation;
  external set previousRoation(num v);
  external num get right;
  external set right(num v);
  external num get top;
  external set top(num v);
  external num get renderOrderID;
  external set renderOrderID(num v);
  external num get type;
  external set type(num v);
  external Point get world;
  external set world(Point v);
  external num get z;
  external set z(num v);
  external dynamic alignIn(
      dynamic /*Rectangle|Sprite|Image|Text|BitmapText|Button|Graphics|TileSprite*/ container,
      [num position,
      num offsetX,
      num offsetY]);
  external dynamic alignTo(
      dynamic /*Rectangle|Sprite|Image|Text|BitmapText|Button|Graphics|TileSprite*/ container,
      [num position,
      num offsetX,
      num offsetY]);
  external void autoScroll(num x, num y);
  external void destroy([bool destroyChildren]);
  external void loadTexture(
      dynamic /*String|RenderTexture|BitmapData|Video|PIXI.Texture*/ key,
      [dynamic /*String|num*/ frame,
      bool stopAnimation]);
  external Animation play(String name,
      [num frameRate, bool loop, bool killOnComplete]);
  external void postUpdate();
  external void preUpdate();
  external bool overlap(
      dynamic /*Sprite|Image|TileSprite|Button|PIXI.DisplayObject*/ displayObject);
  external TileSprite reset(num x, num y, [num health]);
  external void resizeFrame(dynamic parent, num width, num height);
  external void resetFrame();
  external void setFrame(Frame frame);
  external void stopScroll();
  external void update();
}

@JS("Phaser.Time")
class Time {
  // @Ignore
  Time.fakeConstructor$();
  external factory Time(Game game);
  external bool get advancedTiming;
  external set advancedTiming(bool v);
  external num get desiredFps;
  external set desiredFps(num v);
  external num get desiredFpsMult;
  external set desiredFpsMult(num v);
  external num get elapsed;
  external set elapsed(num v);
  external Timer get events;
  external set events(Timer v);
  external num get elapsedMS;
  external set elapsedMS(num v);
  external num get fps;
  external set fps(num v);
  external num get fpsMax;
  external set fpsMax(num v);
  external num get fpsMin;
  external set fpsMin(num v);
  external num get frames;
  external set frames(num v);
  external Game get game;
  external set game(Game v);
  external num get lastTime;
  external set lastTime(num v);
  external num get msMax;
  external set msMax(num v);
  external num get msMin;
  external set msMin(num v);
  external num get now;
  external set now(num v);
  external num get pausedTime;
  external set pausedTime(num v);
  external num get pauseDuration;
  external set pauseDuration(num v);
  external num get physicsElapsed;
  external set physicsElapsed(num v);
  external num get physicsElapsedMS;
  external set physicsElapsedMS(num v);
  external num get prevTime;
  external set prevTime(num v);
  external num get slowMotion;
  external set slowMotion(num v);
  external num get suggestedFps;
  external set suggestedFps(num v);
  external num get time;
  external set time(num v);
  external num get timeExpected;
  external set timeExpected(num v);
  external num get timeToCall;
  external set timeToCall(num v);
  external Timer add(Timer timer);
  external void boot();
  external Timer create([bool autoDestroy]);
  external num elapsedSecondsSince(num since);
  external num elapsedSince(num since);
  external void removeAll();
  external void reset();
  external num totalElapsedSeconds();
  external void update(num time);
}

@JS("Phaser.Timer")
class Timer {
  // @Ignore
  Timer.fakeConstructor$();
  external factory Timer(Game game, [bool autoDestroy]);
  external static num get HALF;
  external static set HALF(num v);
  external static num get MINUTE;
  external static set MINUTE(num v);
  external static num get QUARTER;
  external static set QUARTER(num v);
  external static num get SECOND;
  external static set SECOND(num v);
  external bool get autoDestroy;
  external set autoDestroy(bool v);
  external num get duration;
  external set duration(num v);
  external List<TimerEvent> get events;
  external set events(List<TimerEvent> v);
  external bool get expired;
  external set expired(bool v);
  external Game get game;
  external set game(Game v);
  external num get length;
  external set length(num v);
  external num get ms;
  external set ms(num v);
  external num get next;
  external set next(num v);
  external num get nextTick;
  external set nextTick(num v);
  external Signal get onComplete;
  external set onComplete(Signal v);
  external bool get running;
  external set running(bool v);
  external bool get paused;
  external set paused(bool v);
  external num get seconds;
  external set seconds(num v);
  external TimerEvent add(num delay, Function callback,
      [dynamic callbackContext,
      dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external void clearPendingEvents();
  external void destroy();
  external TimerEvent loop(num delay, Function callback,
      [dynamic callbackContext,
      dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external void order();
  external void pause();
  external bool remove(TimerEvent event);
  external void removeAll();
  external TimerEvent repeat(num delay, num repeatCount, Function callback,
      [dynamic callbackContext,
      dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external void resume();
  external num sortHandler(dynamic a, dynamic b);
  external void start([num startDelay]);
  external void stop([bool clearEvents]);
  external bool update(num time);
}

@JS("Phaser.TimerEvent")
class TimerEvent {
  // @Ignore
  TimerEvent.fakeConstructor$();
  external factory TimerEvent(Timer timer, num delay, num tick, num repeatCount,
      bool loop, Function callback, dynamic callbackContext,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external List<dynamic> get args;
  external set args(List<dynamic> v);
  external Function get callback;
  external set callback(Function v);
  external dynamic get callbackContext;
  external set callbackContext(dynamic v);
  external num get delay;
  external set delay(num v);
  external bool get loop;
  external set loop(bool v);
  external bool get pendingDelete;
  external set pendingDelete(bool v);
  external num get repeatCount;
  external set repeatCount(num v);
  external num get tick;
  external set tick(num v);
  external Timer get timer;
  external set timer(Timer v);
}

@JS("Phaser.Touch")
class Touch {
  // @Ignore
  Touch.fakeConstructor$();
  external factory Touch(Game game);
  external dynamic get callbackContext;
  external set callbackContext(dynamic v);
  external bool get enabled;
  external set enabled(bool v);
  external dynamic get event;
  external set event(dynamic v);
  external Game get game;
  external set game(Game v);
  external bool get preventDefault;
  external set preventDefault(bool v);
  external Function get touchCancelCallback;
  external set touchCancelCallback(Function v);
  external Function get touchEndCallback;
  external set touchEndCallback(Function v);
  external Function get touchEnterCallback;
  external set touchEnterCallback(Function v);
  external Function get touchLeaveCallback;
  external set touchLeaveCallback(Function v);
  external Function get touchMoveCallback;
  external set touchMoveCallback(Function v);
  external Function get touchStartCallback;
  external set touchStartCallback(Function v);
  external List<Function> get touchLockCallbacks;
  external set touchLockCallbacks(List<Function> v);
  external void addTouchLockCallback(Function callback,
      [dynamic context, Function onEnd]);
  external bool removeTouchLockCallback(Function callback, [dynamic context]);
  external void consumeTouchMove();
  external void onTouchCancel(dynamic event);
  external void onTouchEnd(dynamic event);
  external void onTouchEnter(dynamic event);
  external void onTouchLeave(dynamic event);
  external void onTouchMove(dynamic event);
  external void onTouchStart(dynamic event);
  external void start();
  external void stop();
}

@JS("Phaser.Tween")
class Tween {
  // @Ignore
  Tween.fakeConstructor$();
  external factory Tween(dynamic target, Game game, TweenManager manager);
  external Tween get chainedTween;
  external set chainedTween(Tween v);
  external num get current;
  external set current(num v);
  external bool get frameBased;
  external set frameBased(bool v);
  external Game get game;
  external set game(Game v);
  external bool get isRunning;
  external set isRunning(bool v);
  external bool get isPaused;
  external set isPaused(bool v);
  external TweenManager get manager;
  external set manager(TweenManager v);
  external Signal get onChildComplete;
  external set onChildComplete(Signal v);
  external Signal get onComplete;
  external set onComplete(Signal v);
  external Signal get onLoop;
  external set onLoop(Signal v);
  external Signal get onRepeat;
  external set onRepeat(Signal v);
  external Signal get onStart;
  external set onStart(Signal v);
  external bool get pendingDelete;
  external set pendingDelete(bool v);
  external dynamic get properties;
  external set properties(dynamic v);
  external num get repeatCounter;
  external set repeatCounter(num v);
  external bool get reverse;
  external set reverse(bool v);
  external dynamic get target;
  external set target(dynamic v);
  external List<TweenData> get timeline;
  external set timeline(List<TweenData> v);
  external num get timeScale;
  external set timeScale(num v);
  external num get totalDuration;
  external set totalDuration(num v);
  external Tween chain(
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external Tween delay(num duration, [num index]);
  /*external Tween easing(Function ease, [num index]);*/
  /*external Tween easing(String ease, [num index]);*/
  external Tween easing(dynamic /*Function|String*/ ease, [num index]);
  /*external Tween from(dynamic properties,
    [num duration,
    Function ease,
    bool autoStart,
    num delay,
    num repeat,
    bool yoyo]);*/
  /*external Tween from(dynamic properties,
    [num duration,
    String ease,
    bool autoStart,
    num delay,
    num repeat,
    bool yoyo]);*/
  external Tween from(dynamic properties,
      [num duration,
      dynamic /*Function|String*/ ease,
      bool autoStart,
      num delay,
      num repeat,
      bool yoyo]);
  external List<dynamic> generateData([num frameRate, dynamic data]);
  external Tween interpolation(Function interpolation,
      [dynamic context, num index]);
  external Tween loop([bool value]);
  external Tween onUpdateCallback(Function callback, [dynamic callbackContext]);
  external void pause();
  external Tween repeat(num total, [num repeatDelay, num index]);
  external Tween repeatDelay(num duration, [num index]);
  external Tween repeatAll([num total]);
  external void resume();
  external Tween start([num index]);
  external Tween stop([bool complete]);
  /*external Tween to(dynamic properties,
    [num duration,
    Function ease,
    bool autoStart,
    num delay,
    num repeat,
    bool yoyo]);*/
  /*external Tween to(dynamic properties,
    [num duration,
    String ease,
    bool autoStart,
    num delay,
    num repeat,
    bool yoyo]);*/
  external Tween to(dynamic properties,
      [num duration,
      dynamic /*Function|String*/ ease,
      bool autoStart,
      num delay,
      num repeat,
      bool yoyo]);
  external bool update(num time);
  external Tween updateTweenData(
      String property, dynamic /*num|Function*/ value,
      [num index]);
  external Tween yoyo(bool enable, [num yoyoDelay, num index]);
  external Tween yoyoDelay(num duration, [num index]);
}

@JS("Phaser.TweenData")
class TweenData {
  // @Ignore
  TweenData.fakeConstructor$();
  external factory TweenData(Tween parent);
  external static num get COMPLETE;
  external static set COMPLETE(num v);
  external static num get LOOPED;
  external static set LOOPED(num v);
  external static num get PENDING;
  external static set PENDING(num v);
  external static num get RUNNING;
  external static set RUNNING(num v);
  external num get delay;
  external set delay(num v);
  external num get dt;
  external set dt(num v);
  external num get duration;
  external set duration(num v);
  external Function get easingFunction;
  external set easingFunction(Function v);
  external Game get game;
  external set game(Game v);
  external bool get inReverse;
  external set inReverse(bool v);
  external bool get interpolate;
  external set interpolate(bool v);
  external Math get interpolateFunctionContext;
  external set interpolateFunctionContext(Math v);
  external Math get interpolationContext;
  external set interpolationContext(Math v);
  external Function get interpolationFunction;
  external set interpolationFunction(Function v);
  external bool get isRunning;
  external set isRunning(bool v);
  external bool get isFrom;
  external set isFrom(bool v);
  external Tween get parent;
  external set parent(Tween v);
  external num get percent;
  external set percent(num v);
  external num get repeatCounter;
  external set repeatCounter(num v);
  external num get startTime;
  external set startTime(num v);
  external num get value;
  external set value(num v);
  external bool get yoyo;
  external set yoyo(bool v);
  external num get yoyoDelay;
  external set yoyoDelay(num v);
  external TweenData from(dynamic properties,
      [num duration, Function ease, num delay, num repeat, bool yoyo]);
  external List<dynamic> generateData([num frameRate]);
  external num repeat();
  external TweenData start();
  external TweenData to(dynamic properties,
      [num duration, Function ease, num delay, num repeat, bool yoyo]);
  external num update(num time);
}

@JS("Phaser.TweenManager")
class TweenManager {
  // @Ignore
  TweenManager.fakeConstructor$();
  external factory TweenManager(Game game);
  external bool get frameBased;
  external set frameBased(bool v);
  external Game get game;
  external set game(Game v);
  external Tween add(Tween tween);
  external Tween create(dynamic object);
  external List<Tween> getAll();
  external bool isTweening(dynamic object);
  external Tween remove(Tween tween);
  external void removeAll();
  external void removeFrom(dynamic obj, [bool children]);
  external void resumeAll();
  external bool update();
  external void pauseAll();
}

@JS("Phaser.Utils")
class Utils {
  // @Ignore
  Utils.fakeConstructor$();
  external static dynamic getProperty(dynamic obj, String prop);
  external static dynamic setProperty(dynamic obj, String prop, dynamic value);
  external static bool chanceRoll(num chance);
  external static dynamic randomChoice(
      dynamic /*String|num*/ choice1, dynamic choice2);
  external static String reverseString(String string);
  external static num parseDimension(dynamic size, num dimension);
  external static String pad(String str, [num len, String pad, num dir]);
  external static bool isPlainObject(dynamic object);
  external static dynamic extend(bool deep, dynamic target,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external static void mixinPrototype(dynamic target, dynamic mixin,
      [bool replace]);
  external static dynamic/*=T*/ mixin/*<T>*/(dynamic/*=T*/ from, dynamic to);
}

// Module Utils
@JS("Phaser.Utils.Debug")
class Debug {
  // @Ignore
  Debug.fakeConstructor$();
  external factory Debug(Game game);
  external BitmapData get bmd;
  external set bmd(BitmapData v);
  external CanvasElement get canvas;
  external set canvas(CanvasElement v);
  external num get columnWidth;
  external set columnWidth(num v);
  external CanvasRenderingContext2D get context;
  external set context(CanvasRenderingContext2D v);
  external num get currentAlpha;
  external set currentAlpha(num v);
  external num get currentX;
  external set currentX(num v);
  external num get currentY;
  external set currentY(num v);
  external bool get dirty;
  external set dirty(bool v);
  external String get font;
  external set font(String v);
  external Game get game;
  external set game(Game v);
  external num get lineHeight;
  external set lineHeight(num v);
  external bool get renderShadow;
  external set renderShadow(bool v);
  external Image get sprite;
  external set sprite(Image v);
  external void AStar(AStar astar, num x, num y, bool showVisited);
  external void boot();
  external void body(Sprite sprite, [String color, bool filled]);
  external void bodyInfo(Sprite sprite, num x, num y, [String color]);
  external void box2dBody(Sprite body, [String color]);
  external void box2dWorld();
  external void cameraInfo(Camera camera, num x, num y, [String color]);
  external void destroy();
  external void geom(dynamic object,
      [String color, bool fiiled, num forceType]);
  external void inputInfo(num x, num y, [String color]);
  external void lineInfo(Line line, num x, num y, [String color]);
  external void key(Key key, [num x, num y, String color]);
  external void line(
      [String args1, String args2, String args3, String args4, String args5]);
  external void preUpdate();
  external void pixel(num x, num y, [String color, num size]);
  external void pointer(Pointer pointer,
      [bool hideIfUp, String downColor, String upColor, String color]);
  external void quadTree(QuadTree quadtree, [String color]);
  external void rectangle(Rectangle object, [String color, bool filled]);
  external void reset();
  external void ropeSegments(Rope rope, [num color, bool filled]);
  external void soundInfo(Sound sound, num x, num y, [String color]);
  external void spriteBounds(dynamic sprite, [String color, bool filled]);
  external void spriteCoords(dynamic sprite, num x, num y, [String color]);
  external void spriteInfo(Sprite sprite, num x, num y, [String color]);
  external void spriteInputInfo(Sprite sprite, num x, num y, [String color]);
  external void start([num x, num y, String color, num columnWidth]);
  external void stop();
  external void text(String text, num x, num y, [String color, String font]);
  external void timer(Timer timer, num x, num y, [String color]);
}

// End module Utils
@JS("Phaser.Weapon")
class Weapon extends Plugin {
  // @Ignore
  Weapon.fakeConstructor$() : super.fakeConstructor$();
  external factory Weapon(Game game, PluginManager parent);
  external static num get KILL_NEVER;
  external static set KILL_NEVER(num v);
  external static num get KILL_LIFESPAN;
  external static set KILL_LIFESPAN(num v);
  external static num get KILL_DISTANCE;
  external static set KILL_DISTANCE(num v);
  external static num get KILL_WEAPON_BOUNDS;
  external static set KILL_WEAPON_BOUNDS(num v);
  external static num get KILL_CAMERA_BOUNDS;
  external static set KILL_CAMERA_BOUNDS(num v);
  external static num get KILL_WORLD_BOUNDS;
  external static set KILL_WORLD_BOUNDS(num v);
  external static num get KILL_STATIC_BOUNDS;
  external static set KILL_STATIC_BOUNDS(num v);
  external bool get autoExpandBulletsGroup;
  external set autoExpandBulletsGroup(bool v);
  external bool get autofire;
  external set autofire(bool v);
  external Rectangle get bounds;
  external set bounds(Rectangle v);
  external num get bulletAngleOffset;
  external set bulletAngleOffset(num v);
  external num get bulletAngleVariance;
  external set bulletAngleVariance(num v);
  external String get bulletAnimation;
  external set bulletAnimation(String v);
  external dynamic get bulletClass;
  external set bulletClass(dynamic v);
  external bool get bulletCollideWorldBounds;
  external set bulletCollideWorldBounds(bool v);
  external String get bulletFrame;
  external set bulletFrame(String v);
  external bool get bulletFrameCycle;
  external set bulletFrameCycle(bool v);
  external bool get bulletFrameRandom;
  external set bulletFrameRandom(bool v);
  external List<dynamic> get bulletFrames;
  external set bulletFrames(List<dynamic> v);
  external Point get bulletGravity;
  external set bulletGravity(Point v);
  external bool get bulletInheritSpriteSpeed;
  external set bulletInheritSpriteSpeed(bool v);
  external String get bulletKey;
  external set bulletKey(String v);
  external num get bulletKillDistance;
  external set bulletKillDistance(num v);
  external num get bulletKillType;
  external set bulletKillType(num v);
  external num get bulletLifespan;
  external set bulletLifespan(num v);
  external bool get bulletRotateToVelocity;
  external set bulletRotateToVelocity(bool v);
  external Group get bullets;
  external set bullets(Group v);
  external num get bulletSpeed;
  external set bulletSpeed(num v);
  external num get bulletSpeedVariance;
  external set bulletSpeedVariance(num v);
  external bool get bulletWorldWrap;
  external set bulletWorldWrap(bool v);
  external num get bulletWorldWrapPadding;
  external set bulletWorldWrapPadding(num v);
  external num get fireAngle;
  external set fireAngle(num v);
  external Rectangle get fireFrom;
  external set fireFrom(Rectangle v);
  external num get fireLimit;
  external set fireLimit(num v);
  external num get fireRate;
  external set fireRate(num v);
  external num get fireRateVariance;
  external set fireRateVariance(num v);
  external Signal get onFire;
  external set onFire(Signal v);
  external Signal get onFireLimit;
  external set onFireLimit(Signal v);
  external Signal get onKill;
  external set onKill(Signal v);
  external num get shots;
  external set shots(num v);
  external Pointer get trackedPointer;
  external set trackedPointer(Pointer v);
  external dynamic get trackedSprite;
  external set trackedSprite(dynamic v);
  external Point get trackOffset;
  external set trackOffset(Point v);
  external bool get trackRotation;
  external set trackRotation(bool v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external Weapon addBulletAnimation(String name,
      [List<dynamic> /*List<num>|List<String>*/ frames,
      num frameRate,
      bool loop,
      bool useNumericIndex]);
  external Weapon createBullets(
      [num quantity, dynamic key, dynamic frame, Group group]);
  external void debug([num x, num y, bool debugBodies]);
  external void destroy();
  external Bullet fire([dynamic from, num x, num y]);
  external Bullet fireAtPointer(Pointer pointer);
  external Bullet fireAtSprite(Sprite sprite);
  external Bullet fireAtXY(num x, num y);
  external Weapon forEach(dynamic callback, dynamic callbackContext);
  external Weapon killAll();
  external Weapon pauseAll();
  external Weapon resetShots([num newLimit]);
  external Weapon resumeAll();
  external Weapon setBulletBodyOffset(num width, num height,
      [num offsetX, num offsetY]);
  external Weapon setBulletFrames(num min, num max, [bool cycle, bool random]);
  external Weapon trackPointer(Pointer pointer, [num offsetX, num offsetY]);
  external Weapon trackSprite(Sprite sprite,
      [num offsetX, num offsetY, bool trackRotation]);
}

@JS("Phaser.World")
class World extends Group {
  // @Ignore
  World.fakeConstructor$() : super.fakeConstructor$();
  external factory World(Game game);
  external Rectangle get bounds;
  external set bounds(Rectangle v);
  external Camera get camera;
  external set camera(Camera v);
  external num get centerX;
  external set centerX(num v);
  external num get centerY;
  external set centerY(num v);
  external Game get game;
  external set game(Game v);
  external num get height;
  external set height(num v);
  external bool get isPaused;
  external set isPaused(bool v);
  external num get randomX;
  external set randomX(num v);
  external num get randomY;
  external set randomY(num v);
  external dynamic
      /*{
            skipped: number;
            ignored: number;
            checked: number;
        }*/
      get stats;
  external set stats(
      dynamic /*{
            skipped: number;
            ignored: number;
            checked: number;
        }*/
      v);
  external num get width;
  external set width(num v);
  external void boot();
  external Sprite getObjectsUnderPointer(Pointer pointer, Group group,
      [Function callback, dynamic callbackContext]);
  external void resize(num width, num height);
  external void setBounds(num x, num y, num width, num height);
  external num sortLeftRight(Sprite a, Sprite b);
  external num sortRightLeft(Sprite a, Sprite b);
  external num sortTopBottom(Sprite a, Sprite b);
  external num sortBottomTop(Sprite a, Sprite b);
  /*external void sort(Group group, [num sortDirection]);*/
  /*external void sort([String key, num order]);*/
  external void sort(
      [dynamic /*Group|String*/ group_key, num sortDirection_order]);
  external void shutdown();
  external void wrap(dynamic sprite,
      [num padding, bool useBounds, bool horizontal, bool vertical]);
}

// End module Phaser

