@JS()
library pixi;

import "package:js/js.dart";
import "dart:web_gl" show RenderingContext, Framebuffer, Program, Buffer;
import "dart:html"
    show
        HttpRequest,
        CanvasElement,
        CanvasRenderingContext2D,
        ImageElement,
        HtmlElement,
        VideoElement;
import "package:func2/func.dart";
import "package:meta/meta.dart";
import "dart:typed_data" show ByteBuffer;
import "phaser.comments.dart" as Phaser;

/// Type definitions for PIXI with Phaser Deviations.

// Module PIXI
@JS("PIXI.game")
external Phaser.Game get game;
@JS("PIXI.game")
external set game(Phaser.Game v);
@JS("PIXI.WEBGL_RENDERER")
external num get WEBGL_RENDERER;
@JS("PIXI.WEBGL_RENDERER")
external set WEBGL_RENDERER(num v);
@JS("PIXI.CANVAS_RENDERER")
external num get CANVAS_RENDERER;
@JS("PIXI.CANVAS_RENDERER")
external set CANVAS_RENDERER(num v);
@JS("PIXI.VERSION")
external String get VERSION;
@JS("PIXI.VERSION")
external set VERSION(String v);

@JS("PIXI.blendModes")
class blendModes {
  external static num get NORMAL;
  external static num get ADD;
  external static num get MULTIPLY;
  external static num get SCREEN;
  external static num get OVERLAY;
  external static num get DARKEN;
  external static num get LIGHTEN;
  external static num get COLOR_DODGE;
  external static num get COLOR_BURN;
  external static num get HARD_LIGHT;
  external static num get SOFT_LIGHT;
  external static num get DIFFERENCE;
  external static num get EXCLUSION;
  external static num get HUE;
  external static num get SATURATION;
  external static num get COLOR;
  external static num get LUMINOSITY;
}

@JS("PIXI.scaleModes")
class scaleModes {
  external static num get DEFAULT;
  external static num get LINEAR;
  external static num get NEAREST;
}

@JS("PIXI.defaultRenderOptions")
external PixiRendererOptions get defaultRenderOptions;
@JS("PIXI.defaultRenderOptions")
external set defaultRenderOptions(PixiRendererOptions v);
@JS("PIXI.INTERACTION_REQUENCY")
external num get INTERACTION_REQUENCY;
@JS("PIXI.INTERACTION_REQUENCY")
external set INTERACTION_REQUENCY(num v);
@JS("PIXI.AUTO_PREVENT_DEFAULT")
external bool get AUTO_PREVENT_DEFAULT;
@JS("PIXI.AUTO_PREVENT_DEFAULT")
external set AUTO_PREVENT_DEFAULT(bool v);
@JS("PIXI.PI_2")
external num get PI_2;
@JS("PIXI.PI_2")
external set PI_2(num v);
@JS("PIXI.RAD_TO_DEG")
external num get RAD_TO_DEG;
@JS("PIXI.RAD_TO_DEG")
external set RAD_TO_DEG(num v);
@JS("PIXI.DEG_TO_RAD")
external num get DEG_TO_RAD;
@JS("PIXI.DEG_TO_RAD")
external set DEG_TO_RAD(num v);
@JS("PIXI.RETINA_PREFIX")
external String get RETINA_PREFIX;
@JS("PIXI.RETINA_PREFIX")
external set RETINA_PREFIX(String v);
@JS("PIXI.identityMatrix")
external Matrix get identityMatrix;
@JS("PIXI.identityMatrix")
external set identityMatrix(Matrix v);
@JS("PIXI.glContexts")
external List<RenderingContext> get glContexts;
@JS("PIXI.glContexts")
external set glContexts(List<RenderingContext> v);
@JS("PIXI.instances")
external List<dynamic> get instances;
@JS("PIXI.instances")
external set instances(List<dynamic> v);
@JS("PIXI.TextureSilentFail")
external bool get TextureSilentFail;
@JS("PIXI.TextureSilentFail")
external set TextureSilentFail(bool v);
@JS("PIXI.BitmapText")
external dynamic /*{ fonts: {} }*/ get BitmapText;
@JS("PIXI.BitmapText")
external set BitmapText(dynamic /*{ fonts: {} }*/ v);
@JS("PIXI.isPowerOfTwo")
external bool isPowerOfTwo(num width, num height);
@JS("PIXI.rgb2hex")
external String rgb2hex(List<num> rgb);
@JS("PIXI.hex2rgb")
external List<num> hex2rgb(String hex);
@JS("PIXI.autoDetectRenderer")
external PixiRenderer autoDetectRenderer(
    [num width, num height, PixiRendererOptions options]);
@JS("PIXI.autoDetectRecommendedRenderer")
external PixiRenderer autoDetectRecommendedRenderer(
    [num width, num height, PixiRendererOptions options]);
@JS("PIXI.canUseNewCanvasBlendModes")
external bool canUseNewCanvasBlendModes();
@JS("PIXI.getNextPowerOfTwo")
external num getNextPowerOfTwo(num value);
@JS("PIXI.AjaxRequest")
external HttpRequest AjaxRequest();
@JS("PIXI.CompileFragmentShader")
external dynamic CompileFragmentShader(
    RenderingContext gl, List<String> shaderSrc);
@JS("PIXI.CompileProgram")
external dynamic CompileProgram(
    RenderingContext gl, List<String> vertexSrc, List<String> fragmentSrc);
typedef void IEventCallback([IEvent e]);

@anonymous
@JS()
abstract class IEvent {
  external String get type;
  external set type(String v);
  external dynamic get content;
  external set content(dynamic v);
  external factory IEvent({String type, dynamic content});
}

@anonymous
@JS()
abstract class HitArea {
  external bool contains(num x, num y);
}

typedef void IInteractionDataCallback(InteractionData interactionData);

@anonymous
@JS()
abstract class PixiRenderer {
  external bool get autoResize;
  external set autoResize(bool v);
  external bool get clearBeforeRender;
  external set clearBeforeRender(bool v);
  external num get height;
  external set height(num v);
  external num get resolution;
  external set resolution(num v);
  external bool get transparent;
  external set transparent(bool v);
  external num get type;
  external set type(num v);
  external CanvasElement get view;
  external set view(CanvasElement v);
  external num get width;
  external set width(num v);
  external void destroy();
  external void render(DisplayObjectContainer stage);
  external void resize(num width, num height);
}

@anonymous
@JS()
abstract class PixiRendererOptions {
  external bool get autoResize;
  external set autoResize(bool v);
  external bool get antialias;
  external set antialias(bool v);
  external bool get clearBeforeRender;
  external set clearBeforeRender(bool v);
  external bool get preserveDrawingBuffer;
  external set preserveDrawingBuffer(bool v);
  external num get resolution;
  external set resolution(num v);
  external bool get transparent;
  external set transparent(bool v);
  external CanvasElement get view;
  external set view(CanvasElement v);
  external factory PixiRendererOptions(
      {bool autoResize,
      bool antialias,
      bool clearBeforeRender,
      bool preserveDrawingBuffer,
      num resolution,
      bool transparent,
      CanvasElement view});
}

@anonymous
@JS()
abstract class BitmapTextStyle {
  external String get font;
  external set font(String v);
  external String get align;
  external set align(String v);
  external String get tint;
  external set tint(String v);
  external factory BitmapTextStyle({String font, String align, String tint});
}

@anonymous
@JS()
abstract class TextStyle {
  external String get align;
  external set align(String v);
  external bool get dropShadow;
  external set dropShadow(bool v);
  external String get dropShadowColor;
  external set dropShadowColor(String v);
  external num get dropShadowAngle;
  external set dropShadowAngle(num v);
  external num get dropShadowDistance;
  external set dropShadowDistance(num v);
  external String get fill;
  external set fill(String v);
  external String get font;
  external set font(String v);
  external String get lineJoin;
  external set lineJoin(String v);
  external String get stroke;
  external set stroke(String v);
  external num get strokeThickness;
  external set strokeThickness(num v);
  external bool get wordWrap;
  external set wordWrap(bool v);
  external num get wordWrapWidth;
  external set wordWrapWidth(num v);
  external factory TextStyle(
      {String align,
      bool dropShadow,
      String dropShadowColor,
      num dropShadowAngle,
      num dropShadowDistance,
      String fill,
      String font,
      String lineJoin,
      String stroke,
      num strokeThickness,
      bool wordWrap,
      num wordWrapWidth});
}

@anonymous
@JS()
abstract class Loader {
  external void load();
}

@anonymous
@JS()
abstract class MaskData {
  external num get alpha;
  external set alpha(num v);
  external List<num> get worldTransform;
  external set worldTransform(List<num> v);
  external factory MaskData({num alpha, List<num> worldTransform});
}

@anonymous
@JS()
abstract class RenderSession {
  external CanvasRenderingContext2D get context;
  external set context(CanvasRenderingContext2D v);
  external CanvasMaskManager get maskManager;
  external set maskManager(CanvasMaskManager v);
  external num /*enum scaleModes*/ get scaleMode;
  external set scaleMode(num /*enum scaleModes*/ v);
  external String get smoothProperty;
  external set smoothProperty(String v);
  external bool get roundPixels;
  external set roundPixels(bool v);
  external factory RenderSession(
      {CanvasRenderingContext2D context,
      CanvasMaskManager maskManager,
      num /*enum scaleModes*/ scaleMode,
      String smoothProperty,
      bool roundPixels});
}

@anonymous
@JS()
abstract class ShaderAttribute {}

@anonymous
@JS()
abstract class FilterBlock {
  external bool get visible;
  external set visible(bool v);
  external bool get renderable;
  external set renderable(bool v);
  external factory FilterBlock({bool visible, bool renderable});
}

@JS("PIXI.AbstractFilter")
class AbstractFilter {
  // @Ignore
  AbstractFilter.fakeConstructor$();
  external factory AbstractFilter(
      dynamic /*String|List<String>*/ fragmentSrc, dynamic uniforms);
  external bool get dirty;
  external set dirty(bool v);
  external num get padding;
  external set padding(num v);
  external dynamic get uniforms;
  external set uniforms(dynamic v);
  external dynamic /*String|List<String>*/ get fragmentSrc;
  external set fragmentSrc(dynamic /*String|List<String>*/ v);
  external void apply(Framebuffer frameBuffer);
  external void syncUniforms();
}

@JS("PIXI.AlphaMaskFilter")
class AlphaMaskFilter extends AbstractFilter {
  // @Ignore
  AlphaMaskFilter.fakeConstructor$() : super.fakeConstructor$();
  external factory AlphaMaskFilter(Texture texture);
  external Texture get map;
  external set map(Texture v);
  external void onTextureLoaded();
}

@JS("PIXI.AsciiFilter")
class AsciiFilter extends AbstractFilter {
  // @Ignore
  AsciiFilter.fakeConstructor$() : super.fakeConstructor$();
  external num get size;
  external set size(num v);
}

@JS("PIXI.AssetLoader")
class AssetLoader implements Mixin {
  // @Ignore
  AssetLoader.fakeConstructor$();
  external List<String> get assetURLs;
  external set assetURLs(List<String> v);
  external bool get crossorigin;
  external set crossorigin(bool v);
  external dynamic /*JSMap of <String,Loader>*/ get loadersByType;
  external set loadersByType(dynamic /*JSMap of <String,Loader>*/ v);
  external factory AssetLoader(List<String> assetURLs, bool crossorigin);
  external List<Function> listeners(String eventName);
  external bool emit(String eventName, [dynamic data]);
  external bool dispatchEvent(String eventName, [dynamic data]);
  external Function on(String eventName, Function fn);
  external Function addEventListener(String eventName, Function fn);
  external Function once(String eventName, Function fn);
  external Function off(String eventName, Function fn);
  external void removeAllEventListeners(String eventName);
  external void load();
}

@JS("PIXI.AtlasLoader")
class AtlasLoader implements Mixin {
  // @Ignore
  AtlasLoader.fakeConstructor$();
  external String get url;
  external set url(String v);
  external String get baseUrl;
  external set baseUrl(String v);
  external bool get crossorigin;
  external set crossorigin(bool v);
  external bool get loaded;
  external set loaded(bool v);
  external factory AtlasLoader(String url, bool crossorigin);
  external List<Function> listeners(String eventName);
  external bool emit(String eventName, [dynamic data]);
  external bool dispatchEvent(String eventName, [dynamic data]);
  external Function on(String eventName, Function fn);
  external Function addEventListener(String eventName, Function fn);
  external Function once(String eventName, Function fn);
  external Function off(String eventName, Function fn);
  external void removeAllEventListeners(String eventName);
  external void load();
}

@JS("PIXI.BaseTexture")
class BaseTexture implements Mixin {
  // @Ignore
  BaseTexture.fakeConstructor$();
  external static BaseTexture fromCanvas(CanvasElement canvas,
      [num /*enum scaleModes*/ scaleMode]);
  /*external factory BaseTexture(ImageElement source, enum scaleModes scaleMode);*/
  /*external factory BaseTexture(CanvasElement source, enum scaleModes scaleMode);*/
  external factory BaseTexture(dynamic /*ImageElement|CanvasElement*/ source,
      num /*enum scaleModes*/ scaleMode);
  external num get height;
  external set height(num v);
  external bool get hasLoaded;
  external set hasLoaded(bool v);
  external bool get mipmap;
  external set mipmap(bool v);
  external bool get premultipliedAlpha;
  external set premultipliedAlpha(bool v);
  external num get resolution;
  external set resolution(num v);
  external num /*enum scaleModes*/ get scaleMode;
  external set scaleMode(num /*enum scaleModes*/ v);
  external bool get skipRender;
  external set skipRender(bool v);
  external ImageElement get source;
  external set source(ImageElement v);
  external num get width;
  external set width(num v);
  external List<Function> listeners(String eventName);
  external bool emit(String eventName, [dynamic data]);
  external bool dispatchEvent(String eventName, [dynamic data]);
  external Function on(String eventName, Function fn);
  external Function addEventListener(String eventName, Function fn);
  external Function once(String eventName, Function fn);
  external Function off(String eventName, Function fn);
  external void removeAllEventListeners(String eventName);
  external void forceLoaded(num width, num height);
  external void destroy();
  external void dirty();
  external void unloadFromGPU();
}

@JS("PIXI.BitmapFontLoader")
class BitmapFontLoader implements Mixin {
  // @Ignore
  BitmapFontLoader.fakeConstructor$();
  external factory BitmapFontLoader(String url, bool crossorigin);
  external String get baseUrl;
  external set baseUrl(String v);
  external bool get crossorigin;
  external set crossorigin(bool v);
  external Texture get texture;
  external set texture(Texture v);
  external String get url;
  external set url(String v);
  external List<Function> listeners(String eventName);
  external bool emit(String eventName, [dynamic data]);
  external bool dispatchEvent(String eventName, [dynamic data]);
  external Function on(String eventName, Function fn);
  external Function addEventListener(String eventName, Function fn);
  external Function once(String eventName, Function fn);
  external Function off(String eventName, Function fn);
  external void removeAllEventListeners(String eventName);
  external void load();
}

@JS("PIXI.BlurFilter")
class BlurFilter extends AbstractFilter {
  // @Ignore
  BlurFilter.fakeConstructor$() : super.fakeConstructor$();
  external num get blur;
  external set blur(num v);
  external num get blurX;
  external set blurX(num v);
  external num get blurY;
  external set blurY(num v);
}

@JS("PIXI.BlurXFilter")
class BlurXFilter extends AbstractFilter {
  // @Ignore
  BlurXFilter.fakeConstructor$() : super.fakeConstructor$();
  external num get blur;
  external set blur(num v);
}

@JS("PIXI.BlurYFilter")
class BlurYFilter extends AbstractFilter {
  // @Ignore
  BlurYFilter.fakeConstructor$() : super.fakeConstructor$();
  external num get blur;
  external set blur(num v);
}

@JS("PIXI.CanvasBuffer")
class CanvasBuffer {
  // @Ignore
  CanvasBuffer.fakeConstructor$();
  external factory CanvasBuffer(num width, num height);
  external CanvasElement get canvas;
  external set canvas(CanvasElement v);
  external CanvasRenderingContext2D get context;
  external set context(CanvasRenderingContext2D v);
  external num get height;
  external set height(num v);
  external num get width;
  external set width(num v);
  external void destroy();
  external void clear();
  external void resize(num width, num height);
}

@JS("PIXI.CanvasPool")
class CanvasPool {
  // @Ignore
  CanvasPool.fakeConstructor$();
  external static CanvasElement create(HtmlElement parent,
      [num width, num height]);
  external static CanvasElement getFirst();
  external static void remove(HtmlElement parent);
  external static CanvasElement removeByCanvas(CanvasElement canvas);
  external static num getTotal();
  external static num getFree();
}

@JS("PIXI.CanvasMaskManager")
class CanvasMaskManager {
  // @Ignore
  CanvasMaskManager.fakeConstructor$();
  external void pushMask(MaskData maskData, RenderSession renderSession);
  external void popMask(RenderSession renderSession);
}

@JS("PIXI.CanvasRenderer")
class CanvasRenderer implements PixiRenderer {
  // @Ignore
  CanvasRenderer.fakeConstructor$();
  external factory CanvasRenderer(Phaser.Game game);
  external Phaser.Game get game;
  external set game(Phaser.Game v);
  external num get type;
  external set type(num v);
  external num get resolution;
  external set resolution(num v);
  external bool get clearBeforeRender;
  external set clearBeforeRender(bool v);
  external bool get transparent;
  external set transparent(bool v);
  external bool get autoResize;
  external set autoResize(bool v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external CanvasElement get view;
  external set view(CanvasElement v);
  external CanvasRenderingContext2D get context;
  external set context(CanvasRenderingContext2D v);
  external bool get refresh;
  external set refresh(bool v);
  external num get count;
  external set count(num v);
  external CanvasMaskManager get maskManager;
  external set maskManager(CanvasMaskManager v);
  external RenderSession get renderSession;
  external set renderSession(RenderSession v);
  external void render(DisplayObjectContainer stage);
  external void resize(num width, num height);
  external void destroy([bool removeView]);
}

@JS("PIXI.CanvasTinter")
class CanvasTinter {
  // @Ignore
  CanvasTinter.fakeConstructor$();
  external static CanvasElement getTintedTexture(Sprite sprite, num color);
  external static void tintWithMultiply(
      Texture texture, num color, CanvasElement canvas);
  external static void tintWithOverlay(
      Texture texture, num color, CanvasElement canvas);
  external static void tintWithPerPixel(
      Texture texture, num color, CanvasElement canvas);
  external static bool get canUseMultiply;
  external static set canUseMultiply(bool v);
  external static dynamic get tintMethod;
  external static set tintMethod(dynamic v);
}

@JS("PIXI.Circle")
class Circle implements HitArea {
  // @Ignore
  Circle.fakeConstructor$();
  external factory Circle(num x, num y, num radius);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get radius;
  external set radius(num v);
  external Circle clone();
  external bool contains(num x, num y);
  external Rectangle getBounds();
}

@JS("PIXI.ColorMatrixFilter")
class ColorMatrixFilter extends AbstractFilter {
  // @Ignore
  ColorMatrixFilter.fakeConstructor$() : super.fakeConstructor$();
  external factory ColorMatrixFilter();
  external List<num> get matrix;
  external set matrix(List<num> v);
}

@JS("PIXI.ColorStepFilter")
class ColorStepFilter extends AbstractFilter {
  // @Ignore
  ColorStepFilter.fakeConstructor$() : super.fakeConstructor$();
  external num get step;
  external set step(num v);
}

@JS("PIXI.ConvolutionFilter")
class ConvolutionFilter extends AbstractFilter {
  // @Ignore
  ConvolutionFilter.fakeConstructor$() : super.fakeConstructor$();
  external factory ConvolutionFilter(List<num> matrix, num width, num height);
  external Matrix get matrix;
  external set matrix(Matrix v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
}

@JS("PIXI.CrossHatchFilter")
class CrossHatchFilter extends AbstractFilter {
  // @Ignore
  CrossHatchFilter.fakeConstructor$() : super.fakeConstructor$();
  external num get blur;
  external set blur(num v);
}

@JS("PIXI.DisplacementFilter")
class DisplacementFilter extends AbstractFilter {
  // @Ignore
  DisplacementFilter.fakeConstructor$() : super.fakeConstructor$();
  external factory DisplacementFilter(Texture texture);
  external Texture get map;
  external set map(Texture v);
  external Point get offset;
  external set offset(Point v);
  external Point get scale;
  external set scale(Point v);
}

@JS("PIXI.DotScreenFilter")
class DotScreenFilter extends AbstractFilter {
  // @Ignore
  DotScreenFilter.fakeConstructor$() : super.fakeConstructor$();
  external num get angle;
  external set angle(num v);
  external Point get scale;
  external set scale(Point v);
}

@JS("PIXI.DisplayObject")
class DisplayObject {
  // @Ignore
  DisplayObject.fakeConstructor$();
  external num get alpha;
  external set alpha(num v);
  external bool get buttonMode;
  external set buttonMode(bool v);
  external bool get cacheAsBitmap;
  external set cacheAsBitmap(bool v);
  external String get defaultCursor;
  external set defaultCursor(String v);
  external Rectangle get filterArea;
  external set filterArea(Rectangle v);
  external List<AbstractFilter> get filters;
  external set filters(List<AbstractFilter> v);
  external HitArea get hitArea;
  external set hitArea(HitArea v);
  external bool get interactive;
  external set interactive(bool v);
  external Graphics get mask;
  external set mask(Graphics v);
  external DisplayObjectContainer get parent;
  external set parent(DisplayObjectContainer v);
  external Point get pivot;
  external set pivot(Point v);
  external Point get position;
  external set position(Point v);
  external bool get renderable;
  external set renderable(bool v);
  external num get rotation;
  external set rotation(num v);
  external Point get scale;
  external set scale(Point v);
  external DisplayObjectContainer get stage;
  external set stage(DisplayObjectContainer v);
  external bool get visible;
  external set visible(bool v);
  external num get worldAlpha;
  external set worldAlpha(num v);
  external Point get worldPosition;
  external set worldPosition(Point v);
  external Point get worldScale;
  external set worldScale(Point v);
  external Matrix get worldTransform;
  external set worldTransform(Matrix v);
  external num get worldRotation;
  external set worldRotation(num v);
  external bool get worldVisible;
  external set worldVisible(bool v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external void click(InteractionData e);
  external void displayObjectUpdateTransform([DisplayObjectContainer parent]);
  external RenderTexture generateTexture(
      [num resolution, num scaleMode, dynamic /*PixiRenderer|num*/ renderer]);
  external void mousedown(InteractionData e);
  external void mouseout(InteractionData e);
  external void mouseover(InteractionData e);
  external void mouseup(InteractionData e);
  external void mousemove(InteractionData e);
  external void mouseupoutside(InteractionData e);
  external void rightclick(InteractionData e);
  external void rightdown(InteractionData e);
  external void rightup(InteractionData e);
  external void rightupoutside(InteractionData e);
  external void setStageReference(DisplayObjectContainer stage);
  external void tap(InteractionData e);
  external Point toGlobal(Point position);
  external Point toLocal(Point position, DisplayObject from);
  external void touchend(InteractionData e);
  external void touchendoutside(InteractionData e);
  external void touchstart(InteractionData e);
  external void touchmove(InteractionData e);
  external void updateTransform([DisplayObjectContainer parent]);
}

@JS("PIXI.DisplayObjectContainer")
class DisplayObjectContainer extends DisplayObject {
  // @Ignore
  DisplayObjectContainer.fakeConstructor$() : super.fakeConstructor$();
  external factory DisplayObjectContainer();
  external List<DisplayObject> get children;
  external set children(List<DisplayObject> v);
  external num get height;
  external set height(num v);
  external num get width;
  external set width(num v);
  external bool get ignoreChildInput;
  external set ignoreChildInput(bool v);
  external DisplayObject addChild(DisplayObject child);
  external DisplayObject addChildAt(DisplayObject child, num index);
  external Rectangle getBounds(
      [dynamic /*DisplayObject|Matrix*/ targetCoordinateSpace]);
  external DisplayObject getChildAt(num index);
  external num getChildIndex(DisplayObject child);
  external Rectangle getLocalBounds();
  external DisplayObject removeChild(DisplayObject child);
  external DisplayObject removeChildAt(num index);
  external List<DisplayObject> removeChildren([num beginIndex, num endIndex]);
  external void removeStageReference();
  external void setChildIndex(DisplayObject child, num index);
  external void swapChildren(DisplayObject child, DisplayObject child2);
  external bool contains(DisplayObject child);
}

@JS("PIXI.Ellipse")
class Ellipse implements HitArea {
  // @Ignore
  Ellipse.fakeConstructor$();
  external factory Ellipse(num x, num y, num width, num height);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external Ellipse clone();
  external bool contains(num x, num y);
  external Rectangle getBounds();
}

@JS("PIXI.Event")
class Event {
  // @Ignore
  Event.fakeConstructor$();
  external factory Event(dynamic target, String name, dynamic data);
  external dynamic get target;
  external set target(dynamic v);
  external String get type;
  external set type(String v);
  external dynamic get data;
  external set data(dynamic v);
  external num get timeStamp;
  external set timeStamp(num v);
  external void stopPropagation();
  external void preventDefault();
  external void stopImmediatePropagation();
}

@JS("PIXI.EventTarget")
class EventTarget {
  // @Ignore
  EventTarget.fakeConstructor$();
  external static void mixin(dynamic obj);
}

@JS("PIXI.FilterTexture")
class FilterTexture {
  // @Ignore
  FilterTexture.fakeConstructor$();
  external factory FilterTexture(RenderingContext gl, num width, num height,
      num /*enum scaleModes*/ scaleMode);
  external List<String> get fragmentSrc;
  external set fragmentSrc(List<String> v);
  external Framebuffer get frameBuffer;
  external set frameBuffer(Framebuffer v);
  external RenderingContext get gl;
  external set gl(RenderingContext v);
  external Program get program;
  external set program(Program v);
  external num get scaleMode;
  external set scaleMode(num v);
  external Texture get texture;
  external set texture(Texture v);
  external void clear();
  external void resize(num width, num height);
  external void destroy();
}

@JS("PIXI.GraphicsData")
class GraphicsData {
  // @Ignore
  GraphicsData.fakeConstructor$();
  external factory GraphicsData(
      [num lineWidth,
      num lineColor,
      num lineAlpha,
      num fillColor,
      num fillAlpha,
      bool fill,
      dynamic shape]);
  external num get lineWidth;
  external set lineWidth(num v);
  external num get lineColor;
  external set lineColor(num v);
  external num get lineAlpha;
  external set lineAlpha(num v);
  external num get fillColor;
  external set fillColor(num v);
  external num get fillAlpha;
  external set fillAlpha(num v);
  external bool get fill;
  external set fill(bool v);
  external dynamic get shape;
  external set shape(dynamic v);
  external num get type;
  external set type(num v);
}

@JS("PIXI.Graphics")
class Graphics extends DisplayObjectContainer {
  // @Ignore
  Graphics.fakeConstructor$() : super.fakeConstructor$();
  external static num get POLY;
  external static set POLY(num v);
  external static num get RECT;
  external static set RECT(num v);
  external static num get CIRC;
  external static set CIRC(num v);
  external static num get ELIP;
  external static set ELIP(num v);
  external static num get RREC;
  external static set RREC(num v);
  external num get blendMode;
  external set blendMode(num v);
  external num get boundsPadding;
  external set boundsPadding(num v);
  external num get fillAlpha;
  external set fillAlpha(num v);
  external bool get isMask;
  external set isMask(bool v);
  external num get lineWidth;
  external set lineWidth(num v);
  external num get lineColor;
  external set lineColor(num v);
  external num get tint;
  external set tint(num v);
  external num get worldAlpha;
  external set worldAlpha(num v);
  external Graphics arc(num cx, num cy, num radius, num startAngle,
      num endAngle, bool anticlockwise);
  external Graphics arcTo(num x1, num y1, num x2, num y2, num radius);
  external Graphics beginFill([num color, num alpha]);
  external Graphics bezierCurveTo(
      num cpX, num cpY, num cpX2, num cpY2, num toX, num toY);
  external Graphics clear();
  external void destroyCachedSprite();
  external Graphics drawCircle(num x, num y, num diameter);
  external Graphics drawEllipse(num x, num y, num width, num height);
  external Graphics drawPolygon(
      [dynamic path1,
      dynamic path2,
      dynamic path3,
      dynamic path4,
      dynamic path5]);
  external Graphics drawRect(num x, num y, num width, num height);
  external Graphics drawRoundedRect(
      num x, num y, num width, num height, num radius);
  /*external GraphicsData drawShape(Circle shape);*/
  /*external GraphicsData drawShape(Rectangle shape);*/
  /*external GraphicsData drawShape(Ellipse shape);*/
  /*external GraphicsData drawShape(Polygon shape);*/
  external GraphicsData drawShape(
      dynamic /*Circle|Rectangle|Ellipse|Polygon*/ shape);
  external Graphics endFill();
  external RenderTexture generateTexture(
      [num resolution, num scaleMode, covariant num padding]);
  external Graphics lineStyle([num lineWidth, num color, num alpha]);
  external Graphics lineTo(num x, num y);
  external Graphics moveTo(num x, num y);
  external Graphics quadraticCurveTo(num cpX, num cpY, num toX, num toY);
}

@JS("PIXI.GrayFilter")
class GrayFilter extends AbstractFilter {
  // @Ignore
  GrayFilter.fakeConstructor$() : super.fakeConstructor$();
  external num get gray;
  external set gray(num v);
}

@JS("PIXI.ImageLoader")
class ImageLoader implements Mixin {
  // @Ignore
  ImageLoader.fakeConstructor$();
  external factory ImageLoader(String url, [bool crossorigin]);
  external Texture get texture;
  external set texture(Texture v);
  external List<Function> listeners(String eventName);
  external bool emit(String eventName, [dynamic data]);
  external bool dispatchEvent(String eventName, [dynamic data]);
  external Function on(String eventName, Function fn);
  external Function addEventListener(String eventName, Function fn);
  external Function once(String eventName, Function fn);
  external Function off(String eventName, Function fn);
  external void removeAllEventListeners(String eventName);
  external void load();
  external void loadFramedSpriteSheet(
      num frameWidth, num frameHeight, String textureName);
}

@JS("PIXI.InteractionData")
class InteractionData {
  // @Ignore
  InteractionData.fakeConstructor$();
  external Point get global;
  external set global(Point v);
  external Sprite get target;
  external set target(Sprite v);
  external Event get originalEvent;
  external set originalEvent(Event v);
  external Point getLocalPosition(DisplayObject displayObject,
      [Point point, Point globalPos]);
}

@JS("PIXI.InteractionManager")
class InteractionManager {
  // @Ignore
  InteractionManager.fakeConstructor$();
  external String get currentCursorStyle;
  external set currentCursorStyle(String v);
  external num get last;
  external set last(num v);
  external InteractionData get mouse;
  external set mouse(InteractionData v);
  external bool get mouseOut;
  external set mouseOut(bool v);
  external bool get mouseoverEnabled;
  external set mouseoverEnabled(bool v);
  external Function get onMouseMove;
  external set onMouseMove(Function v);
  external Function get onMouseDown;
  external set onMouseDown(Function v);
  external Function get onMouseOut;
  external set onMouseOut(Function v);
  external Function get onMouseUp;
  external set onMouseUp(Function v);
  external Function get onTouchStart;
  external set onTouchStart(Function v);
  external Function get onTouchEnd;
  external set onTouchEnd(Function v);
  external Function get onTouchMove;
  external set onTouchMove(Function v);
  external List<InteractionData> get pool;
  external set pool(List<InteractionData> v);
  external num get resolution;
  external set resolution(num v);
  external DisplayObjectContainer get stage;
  external set stage(DisplayObjectContainer v);
  external dynamic /*JSMap of <String,InteractionData>*/ get touches;
  external set touches(dynamic /*JSMap of <String,InteractionData>*/ v);
  external factory InteractionManager(DisplayObjectContainer stage);
}

@JS("PIXI.InvertFilter")
class InvertFilter extends AbstractFilter {
  // @Ignore
  InvertFilter.fakeConstructor$() : super.fakeConstructor$();
  external num get invert;
  external set invert(num v);
}

@JS("PIXI.JsonLoader")
class JsonLoader implements Mixin {
  // @Ignore
  JsonLoader.fakeConstructor$();
  external factory JsonLoader(String url, [bool crossorigin]);
  external String get baseUrl;
  external set baseUrl(String v);
  external bool get crossorigin;
  external set crossorigin(bool v);
  external bool get loaded;
  external set loaded(bool v);
  external String get url;
  external set url(String v);
  external List<Function> listeners(String eventName);
  external bool emit(String eventName, [dynamic data]);
  external bool dispatchEvent(String eventName, [dynamic data]);
  external Function on(String eventName, Function fn);
  external Function addEventListener(String eventName, Function fn);
  external Function once(String eventName, Function fn);
  external Function off(String eventName, Function fn);
  external void removeAllEventListeners(String eventName);
  external void load();
}

@JS("PIXI.Matrix")
class Matrix {
  // @Ignore
  Matrix.fakeConstructor$();
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
  external Matrix append(Matrix matrix);
  external Point apply(Point pos, Point newPos);
  external Point applyInverse(Point pos, Point newPos);
  external List<num> determineMatrixArrayType();
  external Matrix identity();
  external Matrix rotate(num angle);
  external void fromArray(List<num> array);
  external Matrix translate(num x, num y);
  external List<num> toArray(bool transpose);
  external Matrix scale(num x, num y);
}

@anonymous
@JS()
abstract class Mixin {
  external List<Function> listeners(String eventName);
  external bool emit(String eventName, [dynamic data]);
  external bool dispatchEvent(String eventName, [dynamic data]);
  external Function on(String eventName, Function fn);
  external Function addEventListener(String eventName, Function fn);
  external Function once(String eventName, Function fn);
  external Function off(String eventName, Function fn);
  external void removeAllEventListeners(String eventName);
}

@JS("PIXI.NoiseFilter")
class NoiseFilter extends AbstractFilter {
  // @Ignore
  NoiseFilter.fakeConstructor$() : super.fakeConstructor$();
  external num get noise;
  external set noise(num v);
}

@JS("PIXI.NormalMapFilter")
class NormalMapFilter extends AbstractFilter {
  // @Ignore
  NormalMapFilter.fakeConstructor$() : super.fakeConstructor$();
  external Texture get map;
  external set map(Texture v);
  external Point get offset;
  external set offset(Point v);
  external Point get scale;
  external set scale(Point v);
}

@JS("PIXI.PixelateFilter")
class PixelateFilter extends AbstractFilter {
  // @Ignore
  PixelateFilter.fakeConstructor$() : super.fakeConstructor$();
  external num get size;
  external set size(num v);
}

@anonymous
@JS()
abstract class IPixiShader {
  external List<String> get fragmentSrc;
  external set fragmentSrc(List<String> v);
  external RenderingContext get gl;
  external set gl(RenderingContext v);
  external Program get program;
  external set program(Program v);
  external List<String> get vertexSrc;
  external set vertexSrc(List<String> v);
  external void destroy();
  external void init();
}

@JS("PIXI.PixiShader")
class PixiShader implements IPixiShader {
  // @Ignore
  PixiShader.fakeConstructor$();
  external factory PixiShader(RenderingContext gl);
  external List<ShaderAttribute> get attributes;
  external set attributes(List<ShaderAttribute> v);
  external List<String> get defaultVertexSrc;
  external set defaultVertexSrc(List<String> v);
  external bool get dirty;
  external set dirty(bool v);
  external bool get firstRun;
  external set firstRun(bool v);
  external num get textureCount;
  external set textureCount(num v);
  external List<String> get fragmentSrc;
  external set fragmentSrc(List<String> v);
  external RenderingContext get gl;
  external set gl(RenderingContext v);
  external Program get program;
  external set program(Program v);
  external List<String> get vertexSrc;
  external set vertexSrc(List<String> v);
  external void initSampler2D();
  external void initUniforms();
  external void syncUniforms();
  external void destroy();
  external void init();
}

@JS("PIXI.PixiFastShader")
class PixiFastShader implements IPixiShader {
  // @Ignore
  PixiFastShader.fakeConstructor$();
  external factory PixiFastShader(RenderingContext gl);
  external num get textureCount;
  external set textureCount(num v);
  external List<String> get fragmentSrc;
  external set fragmentSrc(List<String> v);
  external RenderingContext get gl;
  external set gl(RenderingContext v);
  external Program get program;
  external set program(Program v);
  external List<String> get vertexSrc;
  external set vertexSrc(List<String> v);
  external void destroy();
  external void init();
}

@JS("PIXI.PrimitiveShader")
class PrimitiveShader implements IPixiShader {
  // @Ignore
  PrimitiveShader.fakeConstructor$();
  external factory PrimitiveShader(RenderingContext gl);
  external List<String> get fragmentSrc;
  external set fragmentSrc(List<String> v);
  external RenderingContext get gl;
  external set gl(RenderingContext v);
  external Program get program;
  external set program(Program v);
  external List<String> get vertexSrc;
  external set vertexSrc(List<String> v);
  external void destroy();
  external void init();
}

@JS("PIXI.ComplexPrimitiveShader")
class ComplexPrimitiveShader implements IPixiShader {
  // @Ignore
  ComplexPrimitiveShader.fakeConstructor$();
  external factory ComplexPrimitiveShader(RenderingContext gl);
  external List<String> get fragmentSrc;
  external set fragmentSrc(List<String> v);
  external RenderingContext get gl;
  external set gl(RenderingContext v);
  external Program get program;
  external set program(Program v);
  external List<String> get vertexSrc;
  external set vertexSrc(List<String> v);
  external void destroy();
  external void init();
}

@JS("PIXI.StripShader")
class StripShader implements IPixiShader {
  // @Ignore
  StripShader.fakeConstructor$();
  external factory StripShader(RenderingContext gl);
  external List<String> get fragmentSrc;
  external set fragmentSrc(List<String> v);
  external RenderingContext get gl;
  external set gl(RenderingContext v);
  external Program get program;
  external set program(Program v);
  external List<String> get vertexSrc;
  external set vertexSrc(List<String> v);
  external void destroy();
  external void init();
}

@JS("PIXI.Point")
class Point {
  // @Ignore
  Point.fakeConstructor$();
  external factory Point([num x, num y]);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external Point clone();
  external void JS$set(num x, num y);
}

@JS("PIXI.Polygon")
class Polygon implements HitArea {
  // @Ignore
  Polygon.fakeConstructor$();
  /*external factory Polygon(List<Point> points);*/
  /*external factory Polygon(List<num> points);*/
  /*external factory Polygon([Point points1, Point points2, Point points3, Point points4, Point points5]);*/
  /*external factory Polygon([num points1, num points2, num points3, num points4, num points5]);*/
  external factory Polygon(List<dynamic> /*List<Point>|List<num>*/ points);
  external List<dynamic> get points;
  external set points(List<dynamic> v);
  external Polygon clone();
  external bool contains(num x, num y);
}

@JS("PIXI.Rectangle")
class Rectangle implements HitArea {
  // @Ignore
  Rectangle.fakeConstructor$();
  external factory Rectangle([num x, num y, num width, num height]);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external Rectangle clone();
  external bool contains(num x, num y);
}

@JS("PIXI.RGBSplitFilter")
class RGBSplitFilter extends AbstractFilter {
  // @Ignore
  RGBSplitFilter.fakeConstructor$() : super.fakeConstructor$();
  external Point get red;
  external set red(Point v);
  external Point get green;
  external set green(Point v);
  external Point get blue;
  external set blue(Point v);
}

@JS("PIXI.Rope")
class Rope extends Strip {
  // @Ignore
  Rope.fakeConstructor$() : super.fakeConstructor$();
  external List<Point> get points;
  external set points(List<Point> v);
  external List<num> get vertices;
  external set vertices(List<num> v);
  external factory Rope(Texture texture, List<Point> points);
  external void refresh();
  external void setTexture(Texture texture);
}

@JS("PIXI.RoundedRectangle")
class RoundedRectangle implements HitArea {
  // @Ignore
  RoundedRectangle.fakeConstructor$();
  external factory RoundedRectangle(
      [num x, num y, num width, num height, num radius]);
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
  external RoundedRectangle clone();
  external bool contains(num x, num y);
}

@JS("PIXI.SepiaFilter")
class SepiaFilter extends AbstractFilter {
  // @Ignore
  SepiaFilter.fakeConstructor$() : super.fakeConstructor$();
  external num get sepia;
  external set sepia(num v);
}

@JS("PIXI.SmartBlurFilter")
class SmartBlurFilter extends AbstractFilter {
  // @Ignore
  SmartBlurFilter.fakeConstructor$() : super.fakeConstructor$();
  external num get blur;
  external set blur(num v);
}

@JS("PIXI.SpineLoader")
class SpineLoader implements Mixin {
  // @Ignore
  SpineLoader.fakeConstructor$();
  external String get url;
  external set url(String v);
  external bool get crossorigin;
  external set crossorigin(bool v);
  external bool get loaded;
  external set loaded(bool v);
  external factory SpineLoader(String url, bool crossOrigin);
  external List<Function> listeners(String eventName);
  external bool emit(String eventName, [dynamic data]);
  external bool dispatchEvent(String eventName, [dynamic data]);
  external Function on(String eventName, Function fn);
  external Function addEventListener(String eventName, Function fn);
  external Function once(String eventName, Function fn);
  external Function off(String eventName, Function fn);
  external void removeAllEventListeners(String eventName);
  external void load();
}

@JS("PIXI.SpineTextureLoader")
class SpineTextureLoader {
  // @Ignore
  SpineTextureLoader.fakeConstructor$();
  external factory SpineTextureLoader(String basePath, bool crossorigin);
  external void load(AtlasPage page, String file);
  external void unload(BaseTexture texture);
}

@JS("PIXI.Sprite")
class Sprite extends DisplayObjectContainer {
  // @Ignore
  Sprite.fakeConstructor$() : super.fakeConstructor$();
  external factory Sprite(Texture texture);
  external Point get anchor;
  external set anchor(Point v);
  external num /*enum blendModes*/ get blendMode;
  external set blendMode(num /*enum blendModes*/ v);
  external bool get exists;
  external set exists(bool v);
  external IPixiShader get shader;
  external set shader(IPixiShader v);
  external Texture get texture;
  external set texture(Texture v);
  external num get tint;
  external set tint(num v);
  external void setTexture(Texture texture, [bool destroyBase]);
}

@JS("PIXI.SpriteBatch")
class SpriteBatch extends DisplayObjectContainer {
  // @Ignore
  SpriteBatch.fakeConstructor$() : super.fakeConstructor$();
  external factory SpriteBatch([Texture texture]);
  external bool get ready;
  external set ready(bool v);
  external Texture get textureThing;
  external set textureThing(Texture v);
  external void initWebGL(RenderingContext gl);
}

@JS("PIXI.SpriteSheetLoader")
class SpriteSheetLoader implements Mixin {
  // @Ignore
  SpriteSheetLoader.fakeConstructor$();
  external factory SpriteSheetLoader(String url, [bool crossorigin]);
  external String get baseUrl;
  external set baseUrl(String v);
  external bool get crossorigin;
  external set crossorigin(bool v);
  external dynamic get frames;
  external set frames(dynamic v);
  external Texture get texture;
  external set texture(Texture v);
  external String get url;
  external set url(String v);
  external List<Function> listeners(String eventName);
  external bool emit(String eventName, [dynamic data]);
  external bool dispatchEvent(String eventName, [dynamic data]);
  external Function on(String eventName, Function fn);
  external Function addEventListener(String eventName, Function fn);
  external Function once(String eventName, Function fn);
  external Function off(String eventName, Function fn);
  external void removeAllEventListeners(String eventName);
  external void load();
}

@JS("PIXI.Strip")
class Strip extends DisplayObjectContainer {
  // @Ignore
  Strip.fakeConstructor$() : super.fakeConstructor$();
  external static dynamic
      /*{

            TRIANGLE_STRIP: number;
            TRIANGLES: number;

        }*/
      get DrawModes;
  external static set DrawModes(
      dynamic
          /*{

            TRIANGLE_STRIP: number;
            TRIANGLES: number;

        }*/
          v);
  external factory Strip(Texture texture);
  external num get blendMode;
  external set blendMode(num v);
  external List<num> get colors;
  external set colors(List<num> v);
  external bool get dirty;
  external set dirty(bool v);
  external List<num> get indices;
  external set indices(List<num> v);
  external num get canvasPadding;
  external set canvasPadding(num v);
  external Texture get texture;
  external set texture(Texture v);
  external List<num> get uvs;
  external set uvs(List<num> v);
  external List<num> get vertices;
  external set vertices(List<num> v);
  external Rectangle getBounds([covariant Matrix matrix]);
}

@JS("PIXI.Texture")
class Texture implements Mixin {
  // @Ignore
  Texture.fakeConstructor$();
  external static Texture get emptyTexture;
  external static set emptyTexture(Texture v);
  external static Texture fromCanvas(CanvasElement canvas,
      [num /*enum scaleModes*/ scaleMode]);
  external factory Texture(BaseTexture baseTexture,
      [Rectangle frame, Rectangle crop, Rectangle trim]);
  external BaseTexture get baseTexture;
  external set baseTexture(BaseTexture v);
  external Rectangle get crop;
  external set crop(Rectangle v);
  external Rectangle get frame;
  external set frame(Rectangle v);
  external num get height;
  external set height(num v);
  external bool get noFrame;
  external set noFrame(bool v);
  external bool get requiresUpdate;
  external set requiresUpdate(bool v);
  external Point get trim;
  external set trim(Point v);
  external num get width;
  external set width(num v);
  external dynamic get scope;
  external set scope(dynamic v);
  external bool get valid;
  external set valid(bool v);
  external List<Function> listeners(String eventName);
  external bool emit(String eventName, [dynamic data]);
  external bool dispatchEvent(String eventName, [dynamic data]);
  external Function on(String eventName, Function fn);
  external Function addEventListener(String eventName, Function fn);
  external Function once(String eventName, Function fn);
  external Function off(String eventName, Function fn);
  external void removeAllEventListeners(String eventName);
  external void destroy(bool destroyBase);
  external void setFrame(Rectangle frame);
}

@JS("PIXI.TilingSprite")
class TilingSprite extends Sprite {
  // @Ignore
  TilingSprite.fakeConstructor$() : super.fakeConstructor$();
  external factory TilingSprite(Texture texture, num width, num height);
  external CanvasBuffer get canvasBuffer;
  external set canvasBuffer(CanvasBuffer v);
  external num get blendMode;
  external set blendMode(num v);
  external bool get refreshTexture;
  external set refreshTexture(bool v);
  external Texture get texture;
  external set texture(Texture v);
  external bool get textureDebug;
  external set textureDebug(bool v);
  external num get tint;
  external set tint(num v);
  external Point get tilePosition;
  external set tilePosition(Point v);
  external Texture get tilePattern;
  external set tilePattern(Texture v);
  external Point get tileScale;
  external set tileScale(Point v);
  external Point get tileScaleOffset;
  external set tileScaleOffset(Point v);
  external void destroy();
  external void generateTilingTexture([bool forcePowerOfTwo]);
  external void setTexture(Texture texture, [bool destroyBase]);
}

@JS("PIXI.TiltShiftFilter")
class TiltShiftFilter extends AbstractFilter {
  // @Ignore
  TiltShiftFilter.fakeConstructor$() : super.fakeConstructor$();
  external num get blur;
  external set blur(num v);
  external num get gradientBlur;
  external set gradientBlur(num v);
  external num get start;
  external set start(num v);
  external num get end;
  external set end(num v);
}

@JS("PIXI.TiltShiftXFilter")
class TiltShiftXFilter extends AbstractFilter {
  // @Ignore
  TiltShiftXFilter.fakeConstructor$() : super.fakeConstructor$();
  external num get blur;
  external set blur(num v);
  external num get gradientBlur;
  external set gradientBlur(num v);
  external num get start;
  external set start(num v);
  external num get end;
  external set end(num v);
  external void updateDelta();
}

@JS("PIXI.TiltShiftYFilter")
class TiltShiftYFilter extends AbstractFilter {
  // @Ignore
  TiltShiftYFilter.fakeConstructor$() : super.fakeConstructor$();
  external num get blur;
  external set blur(num v);
  external num get gradientBlur;
  external set gradientBlur(num v);
  external num get start;
  external set start(num v);
  external num get end;
  external set end(num v);
  external void updateDelta();
}

@JS("PIXI.TwistFilter")
class TwistFilter extends AbstractFilter {
  // @Ignore
  TwistFilter.fakeConstructor$() : super.fakeConstructor$();
  external num get angle;
  external set angle(num v);
  external Point get offset;
  external set offset(Point v);
  external num get radius;
  external set radius(num v);
}

@JS("PIXI.VideoTexture")
class VideoTexture extends BaseTexture {
  // @Ignore
  VideoTexture.fakeConstructor$() : super.fakeConstructor$();
  external static BaseTexture baseTextureFromVideo(
      VideoElement video, num scaleMode);
  external static Texture textureFromVideo(VideoElement video, num scaleMode);
  external static Texture fromUrl(String videoSrc,
      [num scaleMode, bool autoPlay, String type, bool loop]);
  external bool get controls;
  external set controls(bool v);
  external bool get autoUpdate;
  external set autoUpdate(bool v);
  external String get type;
  external set type(String v);
  external void changeSource(String src, String type, bool loop);
  external void play();
  external void stop();
  external void destroy();
  external void updateBound();
  external VoidFunc0 get onPlayStart;
  external set onPlayStart(VoidFunc0 v);
  external VoidFunc0 get onPlayStop;
  external set onPlayStop(VoidFunc0 v);
  external VoidFunc1<dynamic> get onCanPlay;
  external set onCanPlay(VoidFunc1<dynamic> v);
}

@JS("PIXI.WebGLBlendModeManager")
class WebGLBlendModeManager {
  // @Ignore
  WebGLBlendModeManager.fakeConstructor$();
  external num get currentBlendMode;
  external set currentBlendMode(num v);
  external void destroy();
  external bool setBlendMode(num blendMode);
  external void setContext(RenderingContext gl);
}

@JS("PIXI.WebGLFastSpriteBatch")
class WebGLFastSpriteBatch {
  // @Ignore
  WebGLFastSpriteBatch.fakeConstructor$();
  external factory WebGLFastSpriteBatch(CanvasRenderingContext2D gl);
  external num get currentBatchSize;
  external set currentBatchSize(num v);
  external BaseTexture get currentBaseTexture;
  external set currentBaseTexture(BaseTexture v);
  external num get currentBlendMode;
  external set currentBlendMode(num v);
  external RenderSession get renderSession;
  external set renderSession(RenderSession v);
  external bool get drawing;
  external set drawing(bool v);
  external dynamic get indexBuffer;
  external set indexBuffer(dynamic v);
  external List<num> get indices;
  external set indices(List<num> v);
  external num get lastIndexCount;
  external set lastIndexCount(num v);
  external Matrix get matrix;
  external set matrix(Matrix v);
  external num get maxSize;
  external set maxSize(num v);
  external IPixiShader get shader;
  external set shader(IPixiShader v);
  external num get size;
  external set size(num v);
  external dynamic get vertexBuffer;
  external set vertexBuffer(dynamic v);
  external List<num> get vertices;
  external set vertices(List<num> v);
  external num get vertSize;
  external set vertSize(num v);
  external void end();
  external void begin(SpriteBatch spriteBatch, RenderSession renderSession);
  external void destroy([bool removeView]);
  external void flush();
  external void render(SpriteBatch spriteBatch);
  external void renderSprite(Sprite sprite);
  external void setContext(RenderingContext gl);
  external void start();
  external void stop();
}

@JS("PIXI.WebGLFilterManager")
class WebGLFilterManager {
  // @Ignore
  WebGLFilterManager.fakeConstructor$();
  external List<AbstractFilter> get filterStack;
  external set filterStack(List<AbstractFilter> v);
  external bool get transparent;
  external set transparent(bool v);
  external num get offsetX;
  external set offsetX(num v);
  external num get offsetY;
  external set offsetY(num v);
  external void applyFilterPass(
      AbstractFilter filter, Texture filterArea, num width, num height);
  external void begin(RenderSession renderSession, ByteBuffer buffer);
  external void destroy();
  external void initShaderBuffers();
  external void popFilter();
  external void pushFilter(FilterBlock filterBlock);
  external void setContext(RenderingContext gl);
}

@JS("PIXI.WebGLGraphics")
class WebGLGraphics {
  // @Ignore
  WebGLGraphics.fakeConstructor$();
  external static List<dynamic> get graphicsDataPool;
  external static set graphicsDataPool(List<dynamic> v);
  external static void renderGraphics(
      Graphics graphics, RenderSession renderRession);
  external static void updateGraphics(Graphics graphics, RenderingContext gl);
  external static dynamic switchMode(RenderingContext webGL, num type);
  external static void buildRectangle(
      GraphicsData graphicsData, dynamic webGLData);
  external static void buildRoundedRectangle(
      GraphicsData graphicsData, dynamic webGLData);
  external static List<num> quadraticBezierCurve(
      num fromX, num fromY, num cpX, num cpY, num toX, num toY);
  external static void buildCircle(
      GraphicsData graphicsData, dynamic webGLData);
  external static void buildLine(GraphicsData graphicsData, dynamic webGLData);
  external static void buildComplexPoly(
      GraphicsData graphicsData, dynamic webGLData);
  external static bool buildPoly(GraphicsData graphicsData, dynamic webGLData);
  external void reset();
  external void upload();
}

@JS("PIXI.WebGLGraphicsData")
class WebGLGraphicsData {
  // @Ignore
  WebGLGraphicsData.fakeConstructor$();
  external factory WebGLGraphicsData(RenderingContext gl);
  external RenderingContext get gl;
  external set gl(RenderingContext v);
  external List<dynamic> get glPoints;
  external set glPoints(List<dynamic> v);
  external List<num> get color;
  external set color(List<num> v);
  external List<dynamic> get points;
  external set points(List<dynamic> v);
  external List<dynamic> get indices;
  external set indices(List<dynamic> v);
  external Buffer get buffer;
  external set buffer(Buffer v);
  external Buffer get indexBuffer;
  external set indexBuffer(Buffer v);
  external num get mode;
  external set mode(num v);
  external num get alpha;
  external set alpha(num v);
  external bool get dirty;
  external set dirty(bool v);
  external void reset();
  external void upload();
}

@JS("PIXI.WebGLMaskManager")
class WebGLMaskManager {
  // @Ignore
  WebGLMaskManager.fakeConstructor$();
  external void destroy();
  external void popMask(RenderSession renderSession);
  external void pushMask(List<dynamic> maskData, RenderSession renderSession);
  external void setContext(RenderingContext gl);
}

@JS("PIXI.WebGLRenderer")
class WebGLRenderer implements PixiRenderer {
  // @Ignore
  WebGLRenderer.fakeConstructor$();
  external static void createWebGLTexture(Texture texture, RenderingContext gl);
  external factory WebGLRenderer(Phaser.Game game);
  external Phaser.Game get game;
  external set game(Phaser.Game v);
  external num get type;
  external set type(num v);
  external num get resolution;
  external set resolution(num v);
  external bool get transparent;
  external set transparent(bool v);
  external bool get autoResize;
  external set autoResize(bool v);
  external bool get preserveDrawingBuffer;
  external set preserveDrawingBuffer(bool v);
  external bool get clearBeforeRender;
  external set clearBeforeRender(bool v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external CanvasElement get view;
  external set view(CanvasElement v);
  external Point get projection;
  external set projection(Point v);
  external Point get offset;
  external set offset(Point v);
  external WebGLShaderManager get shaderManager;
  external set shaderManager(WebGLShaderManager v);
  external WebGLSpriteBatch get spriteBatch;
  external set spriteBatch(WebGLSpriteBatch v);
  external WebGLMaskManager get maskManager;
  external set maskManager(WebGLMaskManager v);
  external WebGLFilterManager get filterManager;
  external set filterManager(WebGLFilterManager v);
  external WebGLStencilManager get stencilManager;
  external set stencilManager(WebGLStencilManager v);
  external WebGLBlendModeManager get blendModeManager;
  external set blendModeManager(WebGLBlendModeManager v);
  external RenderSession get renderSession;
  external set renderSession(RenderSession v);
  external void initContext();
  external void render(DisplayObjectContainer stage);
  external void renderDisplayObject(
      DisplayObject displayObject, Point projection, Buffer buffer);
  external void resize(num width, num height);
  external void updateTexture(Texture texture);
  external void destroy();
  external void mapBlendModes();
}

@JS("PIXI.WebGLShaderManager")
class WebGLShaderManager {
  // @Ignore
  WebGLShaderManager.fakeConstructor$();
  external num get maxAttibs;
  external set maxAttibs(num v);
  external List<dynamic> get attribState;
  external set attribState(List<dynamic> v);
  external List<dynamic> get stack;
  external set stack(List<dynamic> v);
  external List<dynamic> get tempAttribState;
  external set tempAttribState(List<dynamic> v);
  external void destroy();
  external void setAttribs(List<ShaderAttribute> attribs);
  external void setContext(RenderingContext gl);
  external bool setShader(IPixiShader shader);
}

@JS("PIXI.WebGLStencilManager")
class WebGLStencilManager {
  // @Ignore
  WebGLStencilManager.fakeConstructor$();
  external List<dynamic> get stencilStack;
  external set stencilStack(List<dynamic> v);
  external bool get reverse;
  external set reverse(bool v);
  external num get count;
  external set count(num v);
  external void bindGraphics(
      Graphics graphics, List<dynamic> webGLData, RenderSession renderSession);
  external void destroy();
  external void popStencil(
      Graphics graphics, List<dynamic> webGLData, RenderSession renderSession);
  external void pushStencil(
      Graphics graphics, List<dynamic> webGLData, RenderSession renderSession);
  external void setContext(RenderingContext gl);
}

@JS("PIXI.WebGLSpriteBatch")
class WebGLSpriteBatch {
  // @Ignore
  WebGLSpriteBatch.fakeConstructor$();
  external List<num> get blendModes;
  external set blendModes(List<num> v);
  external List<num> get colors;
  external set colors(List<num> v);
  external num get currentBatchSize;
  external set currentBatchSize(num v);
  external Texture get currentBaseTexture;
  external set currentBaseTexture(Texture v);
  external AbstractFilter get defaultShader;
  external set defaultShader(AbstractFilter v);
  external bool get dirty;
  external set dirty(bool v);
  external bool get drawing;
  external set drawing(bool v);
  external List<num> get indices;
  external set indices(List<num> v);
  external num get lastIndexCount;
  external set lastIndexCount(num v);
  external List<num> get positions;
  external set positions(List<num> v);
  external List<Texture> get textures;
  external set textures(List<Texture> v);
  external List<IPixiShader> get shaders;
  external set shaders(List<IPixiShader> v);
  external num get size;
  external set size(num v);
  external List<dynamic> get sprites;
  external set sprites(List<dynamic> v);
  external List<num> get vertices;
  external set vertices(List<num> v);
  external num get vertSize;
  external set vertSize(num v);
  external void begin(RenderSession renderSession);
  external void destroy();
  external void end();
  external void flush([IPixiShader shader]);
  external void render(Sprite sprite);
  external void renderBatch(Texture texture, num size, num startIndex);
  external void renderTilingSprite(TilingSprite sprite);
  external void setBlendMode(num /*enum blendModes*/ blendMode);
  external void setContext(RenderingContext gl);
  external void start();
  external void stop();
}

@JS("PIXI.RenderTexture")
class RenderTexture extends Texture {
  // @Ignore
  RenderTexture.fakeConstructor$() : super.fakeConstructor$();
  external factory RenderTexture(
      [num width,
      num height,
      PixiRenderer renderer,
      num /*enum scaleModes*/ scaleMode,
      num resolution]);
  external Rectangle get frame;
  external set frame(Rectangle v);
  external BaseTexture get baseTexture;
  external set baseTexture(BaseTexture v);
  external PixiRenderer get renderer;
  external set renderer(PixiRenderer v);
  external num get resolution;
  external set resolution(num v);
  external bool get valid;
  external set valid(bool v);
  external void clear();
  external String getBase64();
  external CanvasElement getCanvas();
  external ImageElement getImage();
  external void resize(num width, num height, bool updateBase);
  external void render(DisplayObject displayObject,
      [Matrix matrix, bool clear]);
}

/// SPINE
@JS("PIXI.BoneData")
class BoneData {
  // @Ignore
  BoneData.fakeConstructor$();
  external factory BoneData(String name, [dynamic parent]);
  external String get name;
  external set name(String v);
  external dynamic get parent;
  external set parent(dynamic v);
  external num get length;
  external set length(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get rotation;
  external set rotation(num v);
  external num get scaleX;
  external set scaleX(num v);
  external num get scaleY;
  external set scaleY(num v);
}

@JS("PIXI.SlotData")
class SlotData {
  // @Ignore
  SlotData.fakeConstructor$();
  external factory SlotData(String name, BoneData boneData);
  external String get name;
  external set name(String v);
  external BoneData get boneData;
  external set boneData(BoneData v);
  external num get r;
  external set r(num v);
  external num get g;
  external set g(num v);
  external num get b;
  external set b(num v);
  external num get a;
  external set a(num v);
  external String get attachmentName;
  external set attachmentName(String v);
}

@JS("PIXI.Bone")
class Bone {
  // @Ignore
  Bone.fakeConstructor$();
  external factory Bone(BoneData boneData, [dynamic parent]);
  external BoneData get data;
  external set data(BoneData v);
  external dynamic get parent;
  external set parent(dynamic v);
  external bool get yDown;
  external set yDown(bool v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get rotation;
  external set rotation(num v);
  external num get scaleX;
  external set scaleX(num v);
  external num get scaleY;
  external set scaleY(num v);
  external num get worldRotation;
  external set worldRotation(num v);
  external num get worldScaleX;
  external set worldScaleX(num v);
  external num get worldScaleY;
  external set worldScaleY(num v);
  external void updateWorldTransform(bool flipX, bool flip);
  external void setToSetupPose();
}

@JS("PIXI.Slot")
class Slot {
  // @Ignore
  Slot.fakeConstructor$();
  external factory Slot(SlotData slotData, Skeleton skeleton, Bone bone);
  external SlotData get data;
  external set data(SlotData v);
  external Skeleton get skeleton;
  external set skeleton(Skeleton v);
  external Bone get bone;
  external set bone(Bone v);
  external num get r;
  external set r(num v);
  external num get g;
  external set g(num v);
  external num get b;
  external set b(num v);
  external num get a;
  external set a(num v);
  external RegionAttachment get attachment;
  external set attachment(RegionAttachment v);
  external void setAttachment(RegionAttachment attachment);
  external void setAttachmentTime(num time);
  external num getAttachmentTime();
  external void setToSetupPose();
}

@JS("PIXI.Skin")
class Skin {
  // @Ignore
  Skin.fakeConstructor$();
  external factory Skin(String name);
  external String get name;
  external set name(String v);
  external dynamic get attachments;
  external set attachments(dynamic v);
  external void addAttachment(
      num slotIndex, String name, RegionAttachment attachment);
  external void getAttachment(num slotIndex, String name);
}

@JS("PIXI.Animation")
class Animation {
  // @Ignore
  Animation.fakeConstructor$();
  external factory Animation(
      String name, List<ISpineTimeline> timelines, num duration);
  external String get name;
  external set name(String v);
  external List<ISpineTimeline> get timelines;
  external set timelines(List<ISpineTimeline> v);
  external num get duration;
  external set duration(num v);
  external void apply(Skeleton skeleton, num time, bool loop);
  external void min(Skeleton skeleton, num time, bool loop, num alpha);
}

@JS("PIXI.Curves")
class Curves {
  // @Ignore
  Curves.fakeConstructor$();
  external factory Curves(num frameCount);
  external List<num> get curves;
  external set curves(List<num> v);
  external void setLinear(num frameIndex);
  external void setStepped(num frameIndex);
  external void setCurve(num frameIndex, num cx1, num cy1, num cx2, num cy2);
  external num getCurvePercent(num frameIndex, num percent);
}

@anonymous
@JS()
abstract class ISpineTimeline {
  external Curves get curves;
  external set curves(Curves v);
  external List<num> get frames;
  external set frames(List<num> v);
  external num getFrameCount();
  external void apply(Skeleton skeleton, num time, num alpha);
}

@JS("PIXI.RotateTimeline")
class RotateTimeline implements ISpineTimeline {
  // @Ignore
  RotateTimeline.fakeConstructor$();
  external factory RotateTimeline(num frameCount);
  external Curves get curves;
  external set curves(Curves v);
  external List<num> get frames;
  external set frames(List<num> v);
  external num get boneIndex;
  external set boneIndex(num v);
  external num getFrameCount();
  external void setFrame(num frameIndex, num time, num angle);
  external void apply(Skeleton skeleton, num time, num alpha);
}

@JS("PIXI.TranslateTimeline")
class TranslateTimeline implements ISpineTimeline {
  // @Ignore
  TranslateTimeline.fakeConstructor$();
  external factory TranslateTimeline(num frameCount);
  external Curves get curves;
  external set curves(Curves v);
  external List<num> get frames;
  external set frames(List<num> v);
  external num get boneIndex;
  external set boneIndex(num v);
  external num getFrameCount();
  external void setFrame(num frameIndex, num time, num x, num y);
  external void apply(Skeleton skeleton, num time, num alpha);
}

@JS("PIXI.ScaleTimeline")
class ScaleTimeline implements ISpineTimeline {
  // @Ignore
  ScaleTimeline.fakeConstructor$();
  external factory ScaleTimeline(num frameCount);
  external Curves get curves;
  external set curves(Curves v);
  external List<num> get frames;
  external set frames(List<num> v);
  external num get boneIndex;
  external set boneIndex(num v);
  external num getFrameCount();
  external void setFrame(num frameIndex, num time, num x, num y);
  external void apply(Skeleton skeleton, num time, num alpha);
}

@JS("PIXI.ColorTimeline")
class ColorTimeline implements ISpineTimeline {
  // @Ignore
  ColorTimeline.fakeConstructor$();
  external factory ColorTimeline(num frameCount);
  external Curves get curves;
  external set curves(Curves v);
  external List<num> get frames;
  external set frames(List<num> v);
  external num get boneIndex;
  external set boneIndex(num v);
  external num getFrameCount();
  external void setFrame(num frameIndex, num time, num r, num g, num b, num a);
  external void apply(Skeleton skeleton, num time, num alpha);
}

@JS("PIXI.AttachmentTimeline")
class AttachmentTimeline implements ISpineTimeline {
  // @Ignore
  AttachmentTimeline.fakeConstructor$();
  external factory AttachmentTimeline(num frameCount);
  external Curves get curves;
  external set curves(Curves v);
  external List<num> get frames;
  external set frames(List<num> v);
  external List<String> get attachmentNames;
  external set attachmentNames(List<String> v);
  external num get slotIndex;
  external set slotIndex(num v);
  external num getFrameCount();
  external void setFrame(num frameIndex, num time, String attachmentName);
  external void apply(Skeleton skeleton, num time, num alpha);
}

@JS("PIXI.SkeletonData")
class SkeletonData {
  // @Ignore
  SkeletonData.fakeConstructor$();
  external List<Bone> get bones;
  external set bones(List<Bone> v);
  external List<Slot> get slots;
  external set slots(List<Slot> v);
  external List<Skin> get skins;
  external set skins(List<Skin> v);
  external List<Animation> get animations;
  external set animations(List<Animation> v);
  external Skin get defaultSkin;
  external set defaultSkin(Skin v);
  external Bone findBone(String boneName);
  external num findBoneIndex(String boneName);
  external Slot findSlot(String slotName);
  external num findSlotIndex(String slotName);
  external Skin findSkin(String skinName);
  external Animation findAnimation(String animationName);
}

@JS("PIXI.Skeleton")
class Skeleton {
  // @Ignore
  Skeleton.fakeConstructor$();
  external factory Skeleton(SkeletonData skeletonData);
  external SkeletonData get data;
  external set data(SkeletonData v);
  external List<Bone> get bones;
  external set bones(List<Bone> v);
  external List<Slot> get slots;
  external set slots(List<Slot> v);
  external List<dynamic> get drawOrder;
  external set drawOrder(List<dynamic> v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external Skin get skin;
  external set skin(Skin v);
  external num get r;
  external set r(num v);
  external num get g;
  external set g(num v);
  external num get b;
  external set b(num v);
  external num get a;
  external set a(num v);
  external num get time;
  external set time(num v);
  external bool get flipX;
  external set flipX(bool v);
  external bool get flipY;
  external set flipY(bool v);
  external void updateWorldTransform();
  external void setToSetupPose();
  external void setBonesToSetupPose();
  external void setSlotsToSetupPose();
  external Bone getRootBone();
  external Bone findBone(String boneName);
  external num fineBoneIndex(String boneName);
  external Slot findSlot(String slotName);
  external num findSlotIndex(String slotName);
  external void setSkinByName(String skinName);
  external void setSkin(Skin newSkin);
  external RegionAttachment getAttachmentBySlotName(
      String slotName, String attachmentName);
  external RegionAttachment getAttachmentBySlotIndex(
      num slotIndex, String attachmentName);
  external void setAttachment(String slotName, String attachmentName);
  external void update(num data);
}

@JS("PIXI.RegionAttachment")
class RegionAttachment {
  // @Ignore
  RegionAttachment.fakeConstructor$();
  external List<num> get offset;
  external set offset(List<num> v);
  external List<num> get uvs;
  external set uvs(List<num> v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get rotation;
  external set rotation(num v);
  external num get scaleX;
  external set scaleX(num v);
  external num get scaleY;
  external set scaleY(num v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external dynamic get rendererObject;
  external set rendererObject(dynamic v);
  external num get regionOffsetX;
  external set regionOffsetX(num v);
  external num get regionOffsetY;
  external set regionOffsetY(num v);
  external num get regionWidth;
  external set regionWidth(num v);
  external num get regionHeight;
  external set regionHeight(num v);
  external num get regionOriginalWidth;
  external set regionOriginalWidth(num v);
  external num get regionOriginalHeight;
  external set regionOriginalHeight(num v);
  external void setUVs(num u, num v, num u2, num v2, num rotate);
  external void updateOffset();
  external void computeVertices(num x, num y, Bone bone, List<num> vertices);
}

@JS("PIXI.AnimationStateData")
class AnimationStateData {
  // @Ignore
  AnimationStateData.fakeConstructor$();
  external factory AnimationStateData(SkeletonData skeletonData);
  external SkeletonData get skeletonData;
  external set skeletonData(SkeletonData v);
  external dynamic get animationToMixTime;
  external set animationToMixTime(dynamic v);
  external num get defaultMix;
  external set defaultMix(num v);
  external void setMixByName(String fromName, String toName, num duration);
  external num setMix(String from, String to);
}

@JS("PIXI.AnimationState")
class AnimationState {
  // @Ignore
  AnimationState.fakeConstructor$();
  external factory AnimationState(dynamic stateData);
  external num get animationSpeed;
  external set animationSpeed(num v);
  external dynamic get current;
  external set current(dynamic v);
  external dynamic get previous;
  external set previous(dynamic v);
  external num get currentTime;
  external set currentTime(num v);
  external num get previousTime;
  external set previousTime(num v);
  external bool get currentLoop;
  external set currentLoop(bool v);
  external bool get previousLoop;
  external set previousLoop(bool v);
  external num get mixTime;
  external set mixTime(num v);
  external num get mixDuration;
  external set mixDuration(num v);
  external List<Animation> get queue;
  external set queue(List<Animation> v);
  external void update(num delta);
  external void apply(dynamic skeleton);
  external void clearAnimation();
  external void setAnimation(dynamic animation, bool loop);
  external void setAnimationByName(String animationName, bool loop);
  external void addAnimationByName(String animationName, bool loop, num delay);
  external void addAnimation(dynamic animation, bool loop, num delay);
  external num isComplete();
}

@JS("PIXI.SkeletonJson")
class SkeletonJson {
  // @Ignore
  SkeletonJson.fakeConstructor$();
  external factory SkeletonJson(AtlasAttachmentLoader attachmentLoader);
  external AtlasAttachmentLoader get attachmentLoader;
  external set attachmentLoader(AtlasAttachmentLoader v);
  external num get scale;
  external set scale(num v);
  external SkeletonData readSkeletonData(dynamic root);
  external RegionAttachment readAttachment(Skin skin, String name, dynamic map);
  external void readAnimation(
      String name, dynamic map, SkeletonData skeletonData);
  external void readCurve(
      ISpineTimeline timeline, num frameIndex, dynamic valueMap);
  external num toColor(String hexString, num colorIndex);
}

@JS("PIXI.Atlas")
class Atlas {
  // @Ignore
  Atlas.fakeConstructor$();
  external static dynamic
      /*{

            alpha: number;
            intensity: number;
            luminanceAlpha: number;
            rgb565: number;
            rgba4444: number;
            rgb888: number;
            rgba8888: number;

        }*/
      get FORMAT;
  external static set FORMAT(
      dynamic
          /*{

            alpha: number;
            intensity: number;
            luminanceAlpha: number;
            rgb565: number;
            rgba4444: number;
            rgb888: number;
            rgba8888: number;

        }*/
          v);
  external static dynamic
      /*{

            nearest: number;
            linear: number;
            mipMap: number;
            mipMapNearestNearest: number;
            mipMapLinearNearest: number;
            mipMapNearestLinear: number;
            mipMapLinearLinear: number;

        }*/
      get TextureFilter;
  external static set TextureFilter(
      dynamic
          /*{

            nearest: number;
            linear: number;
            mipMap: number;
            mipMapNearestNearest: number;
            mipMapLinearNearest: number;
            mipMapNearestLinear: number;
            mipMapLinearLinear: number;

        }*/
          v);
  external static dynamic
      /*{

            mirroredRepeat: number;
            clampToEdge: number;
            repeat: number;

        }*/
      get textureWrap;
  external static set textureWrap(
      dynamic
          /*{

            mirroredRepeat: number;
            clampToEdge: number;
            repeat: number;

        }*/
          v);
  external factory Atlas(String atlasText, AtlasLoader textureLoader);
  external AtlasLoader get textureLoader;
  external set textureLoader(AtlasLoader v);
  external List<AtlasPage> get pages;
  external set pages(List<AtlasPage> v);
  external List<AtlasRegion> get regions;
  external set regions(List<AtlasRegion> v);
  external AtlasRegion findRegion(String name);
  external void dispose();
  external void updateUVs(AtlasPage page);
}

@JS("PIXI.AtlasPage")
class AtlasPage {
  // @Ignore
  AtlasPage.fakeConstructor$();
  external String get name;
  external set name(String v);
  external num get format;
  external set format(num v);
  external num get minFilter;
  external set minFilter(num v);
  external num get magFilter;
  external set magFilter(num v);
  external num get uWrap;
  external set uWrap(num v);
  external num get vWrap;
  external set vWrap(num v);
  external dynamic get rendererObject;
  external set rendererObject(dynamic v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
}

@JS("PIXI.AtlasRegion")
class AtlasRegion {
  // @Ignore
  AtlasRegion.fakeConstructor$();
  external AtlasPage get page;
  external set page(AtlasPage v);
  external String get name;
  external set name(String v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external num get u;
  external set u(num v);
  external num get v;
  external set v(num v);
  external num get u2;
  external set u2(num v);
  external num get v2;
  external set v2(num v);
  external num get offsetX;
  external set offsetX(num v);
  external num get offsetY;
  external set offsetY(num v);
  external num get originalWidth;
  external set originalWidth(num v);
  external num get originalHeight;
  external set originalHeight(num v);
  external num get index;
  external set index(num v);
  external bool get rotate;
  external set rotate(bool v);
  external List<dynamic> get splits;
  external set splits(List<dynamic> v);
  external List<dynamic> get pads;
  external set pads(List<dynamic> v);
}

@JS("PIXI.AtlasReader")
class AtlasReader {
  // @Ignore
  AtlasReader.fakeConstructor$();
  external factory AtlasReader(String text);
  external List<String> get lines;
  external set lines(List<String> v);
  external num get index;
  external set index(num v);
  external String trim(String value);
  external String readLine();
  external String readValue();
  external num readTuple(num tuple);
}

@JS("PIXI.AtlasAttachmentLoader")
class AtlasAttachmentLoader {
  // @Ignore
  AtlasAttachmentLoader.fakeConstructor$();
  external factory AtlasAttachmentLoader(Atlas atlas);
  external Atlas get atlas;
  external set atlas(Atlas v);
  external RegionAttachment newAttachment(Skin skin, num type, String name);
}

@JS("PIXI.Spine")
class Spine extends DisplayObjectContainer {
  // @Ignore
  Spine.fakeConstructor$() : super.fakeConstructor$();
  external factory Spine(String url);
  external bool get autoUpdate;
  external set autoUpdate(bool v);
  external dynamic get spineData;
  external set spineData(dynamic v);
  external Skeleton get skeleton;
  external set skeleton(Skeleton v);
  external AnimationStateData get stateData;
  external set stateData(AnimationStateData v);
  external AnimationState get state;
  external set state(AnimationState v);
  external List<DisplayObjectContainer> get slotContainers;
  external set slotContainers(List<DisplayObjectContainer> v);
  external List<Sprite> createSprite(
      Slot slot, dynamic /*{ name: string }*/ descriptor);
  external void update(num dt);
}

// Module PolyK
@JS("PIXI.PolyK.Triangulate")
external List<num> Triangulate(List<num> p);
// End module PolyK

// End module PIXI
@JS()
external void requestAnimFrame(Function callback);
