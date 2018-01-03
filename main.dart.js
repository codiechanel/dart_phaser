(function(){var supportsDirectProtoAccess=function(){var z=function(){}
z.prototype={p:{}}
var y=new z()
if(!(y.__proto__&&y.__proto__.p===z.prototype.p))return false
try{if(typeof navigator!="undefined"&&typeof navigator.userAgent=="string"&&navigator.userAgent.indexOf("Chrome/")>=0)return true
if(typeof version=="function"&&version.length==0){var x=version()
if(/^\d+\.\d+\.\d+\.\d+$/.test(x))return true}}catch(w){}return false}()
function map(a){a=Object.create(null)
a.x=0
delete a.x
return a}var A=map()
var B=map()
var C=map()
var D=map()
var E=map()
var F=map()
var G=map()
var H=map()
var J=map()
var K=map()
var L=map()
var M=map()
var N=map()
var O=map()
var P=map()
var Q=map()
var R=map()
var S=map()
var T=map()
var U=map()
var V=map()
var W=map()
var X=map()
var Y=map()
var Z=map()
function I(){}init()
function setupProgram(a,b){"use strict"
function generateAccessor(a9,b0,b1){var g=a9.split("-")
var f=g[0]
var e=f.length
var d=f.charCodeAt(e-1)
var c
if(g.length>1)c=true
else c=false
d=d>=60&&d<=64?d-59:d>=123&&d<=126?d-117:d>=37&&d<=43?d-27:0
if(d){var a0=d&3
var a1=d>>2
var a2=f=f.substring(0,e-1)
var a3=f.indexOf(":")
if(a3>0){a2=f.substring(0,a3)
f=f.substring(a3+1)}if(a0){var a4=a0&2?"r":""
var a5=a0&1?"this":"r"
var a6="return "+a5+"."+f
var a7=b1+".prototype.g"+a2+"="
var a8="function("+a4+"){"+a6+"}"
if(c)b0.push(a7+"$reflectable("+a8+");\n")
else b0.push(a7+a8+";\n")}if(a1){var a4=a1&2?"r,v":"v"
var a5=a1&1?"this":"r"
var a6=a5+"."+f+"=v"
var a7=b1+".prototype.s"+a2+"="
var a8="function("+a4+"){"+a6+"}"
if(c)b0.push(a7+"$reflectable("+a8+");\n")
else b0.push(a7+a8+";\n")}}return f}function defineClass(a1,a2){var g=[]
var f="function "+a1+"("
var e=""
for(var d=0;d<a2.length;d++){if(d!=0)f+=", "
var c=generateAccessor(a2[d],g,a1)
var a0="p_"+c
f+=a0
e+="this."+c+" = "+a0+";\n"}if(supportsDirectProtoAccess)e+="this."+"$deferredAction"+"();"
f+=") {\n"+e+"}\n"
f+=a1+".builtin$cls=\""+a1+"\";\n"
f+="$desc=$collectedClasses."+a1+"[1];\n"
f+=a1+".prototype = $desc;\n"
if(typeof defineClass.name!="string")f+=a1+".name=\""+a1+"\";\n"
f+=g.join("")
return f}var z=supportsDirectProtoAccess?function(c,d){var g=c.prototype
g.__proto__=d.prototype
g.constructor=c
g["$is"+c.name]=c
return convertToFastObject(g)}:function(){function tmp(){}return function(a0,a1){tmp.prototype=a1.prototype
var g=new tmp()
convertToSlowObject(g)
var f=a0.prototype
var e=Object.keys(f)
for(var d=0;d<e.length;d++){var c=e[d]
g[c]=f[c]}g["$is"+a0.name]=a0
g.constructor=a0
a0.prototype=g
return g}}()
function finishClasses(a4){var g=init.allClasses
a4.combinedConstructorFunction+="return [\n"+a4.constructorsList.join(",\n  ")+"\n]"
var f=new Function("$collectedClasses",a4.combinedConstructorFunction)(a4.collected)
a4.combinedConstructorFunction=null
for(var e=0;e<f.length;e++){var d=f[e]
var c=d.name
var a0=a4.collected[c]
var a1=a0[0]
a0=a0[1]
g[c]=d
a1[c]=d}f=null
var a2=init.finishedClasses
function finishClass(c1){if(a2[c1])return
a2[c1]=true
var a5=a4.pending[c1]
if(a5&&a5.indexOf("+")>0){var a6=a5.split("+")
a5=a6[0]
var a7=a6[1]
finishClass(a7)
var a8=g[a7]
var a9=a8.prototype
var b0=g[c1].prototype
var b1=Object.keys(a9)
for(var b2=0;b2<b1.length;b2++){var b3=b1[b2]
if(!u.call(b0,b3))b0[b3]=a9[b3]}}if(!a5||typeof a5!="string"){var b4=g[c1]
var b5=b4.prototype
b5.constructor=b4
b5.$isc=b4
b5.$deferredAction=function(){}
return}finishClass(a5)
var b6=g[a5]
if(!b6)b6=existingIsolateProperties[a5]
var b4=g[c1]
var b5=z(b4,b6)
if(a9)b5.$deferredAction=mixinDeferredActionHelper(a9,b5)
if(Object.prototype.hasOwnProperty.call(b5,"%")){var b7=b5["%"].split(";")
if(b7[0]){var b8=b7[0].split("|")
for(var b2=0;b2<b8.length;b2++){init.interceptorsByTag[b8[b2]]=b4
init.leafTags[b8[b2]]=true}}if(b7[1]){b8=b7[1].split("|")
if(b7[2]){var b9=b7[2].split("|")
for(var b2=0;b2<b9.length;b2++){var c0=g[b9[b2]]
c0.$nativeSuperclassTag=b8[0]}}for(b2=0;b2<b8.length;b2++){init.interceptorsByTag[b8[b2]]=b4
init.leafTags[b8[b2]]=false}}b5.$deferredAction()}if(b5.$ism)b5.$deferredAction()}var a3=Object.keys(a4.pending)
for(var e=0;e<a3.length;e++)finishClass(a3[e])}function finishAddStubsHelper(){var g=this
while(!g.hasOwnProperty("$deferredAction"))g=g.__proto__
delete g.$deferredAction
var f=Object.keys(g)
for(var e=0;e<f.length;e++){var d=f[e]
var c=d.charCodeAt(0)
var a0
if(d!=="^"&&d!=="$reflectable"&&c!==43&&c!==42&&(a0=g[d])!=null&&a0.constructor===Array&&d!=="<>")addStubs(g,a0,d,false,[])}convertToFastObject(g)
g=g.__proto__
g.$deferredAction()}function mixinDeferredActionHelper(c,d){var g
if(d.hasOwnProperty("$deferredAction"))g=d.$deferredAction
return function foo(){if(!supportsDirectProtoAccess)return
var f=this
while(!f.hasOwnProperty("$deferredAction"))f=f.__proto__
if(g)f.$deferredAction=g
else{delete f.$deferredAction
convertToFastObject(f)}c.$deferredAction()
f.$deferredAction()}}function processClassData(b1,b2,b3){b2=convertToSlowObject(b2)
var g
var f=Object.keys(b2)
var e=false
var d=supportsDirectProtoAccess&&b1!="c"
for(var c=0;c<f.length;c++){var a0=f[c]
var a1=a0.charCodeAt(0)
if(a0==="n"){processStatics(init.statics[b1]=b2.n,b3)
delete b2.n}else if(a1===43){w[g]=a0.substring(1)
var a2=b2[a0]
if(a2>0)b2[g].$reflectable=a2}else if(a1===42){b2[g].$D=b2[a0]
var a3=b2.$methodsWithOptionalArguments
if(!a3)b2.$methodsWithOptionalArguments=a3={}
a3[a0]=g}else{var a4=b2[a0]
if(a0!=="^"&&a4!=null&&a4.constructor===Array&&a0!=="<>")if(d)e=true
else addStubs(b2,a4,a0,false,[])
else g=a0}}if(e)b2.$deferredAction=finishAddStubsHelper
var a5=b2["^"],a6,a7,a8=a5
var a9=a8.split(";")
a8=a9[1]?a9[1].split(","):[]
a7=a9[0]
a6=a7.split(":")
if(a6.length==2){a7=a6[0]
var b0=a6[1]
if(b0)b2.$S=function(b4){return function(){return init.types[b4]}}(b0)}if(a7)b3.pending[b1]=a7
b3.combinedConstructorFunction+=defineClass(b1,a8)
b3.constructorsList.push(b1)
b3.collected[b1]=[m,b2]
i.push(b1)}function processStatics(a3,a4){var g=Object.keys(a3)
for(var f=0;f<g.length;f++){var e=g[f]
if(e==="^")continue
var d=a3[e]
var c=e.charCodeAt(0)
var a0
if(c===43){v[a0]=e.substring(1)
var a1=a3[e]
if(a1>0)a3[a0].$reflectable=a1
if(d&&d.length)init.typeInformation[a0]=d}else if(c===42){m[a0].$D=d
var a2=a3.$methodsWithOptionalArguments
if(!a2)a3.$methodsWithOptionalArguments=a2={}
a2[e]=a0}else if(typeof d==="function"){m[a0=e]=d
h.push(e)
init.globalFunctions[e]=d}else if(d.constructor===Array)addStubs(m,d,e,true,h)
else{a0=e
processClassData(e,d,a4)}}}function addStubs(b6,b7,b8,b9,c0){var g=0,f=b7[g],e
if(typeof f=="string")e=b7[++g]
else{e=f
f=b8}var d=[b6[b8]=b6[f]=e]
e.$stubName=b8
c0.push(b8)
for(g++;g<b7.length;g++){e=b7[g]
if(typeof e!="function")break
if(!b9)e.$stubName=b7[++g]
d.push(e)
if(e.$stubName){b6[e.$stubName]=e
c0.push(e.$stubName)}}for(var c=0;c<d.length;g++,c++)d[c].$callName=b7[g]
var a0=b7[g]
b7=b7.slice(++g)
var a1=b7[0]
var a2=a1>>1
var a3=(a1&1)===1
var a4=a1===3
var a5=a1===1
var a6=b7[1]
var a7=a6>>1
var a8=(a6&1)===1
var a9=a2+a7!=d[0].length
var b0=b7[2]
if(typeof b0=="number")b7[2]=b0+b
var b1=2*a7+a2+3
if(a0){e=tearOff(d,b7,b9,b8,a9)
b6[b8].$getter=e
e.$getterStub=true
if(b9){init.globalFunctions[b8]=e
c0.push(a0)}b6[a0]=e
d.push(e)
e.$stubName=a0
e.$callName=null}var b2=b7.length>b1
if(b2){d[0].$reflectable=1
d[0].$reflectionInfo=b7
for(var c=1;c<d.length;c++){d[c].$reflectable=2
d[c].$reflectionInfo=b7}var b3=b9?init.mangledGlobalNames:init.mangledNames
var b4=b7[b1]
var b5=b4
if(a0)b3[a0]=b5
if(a4)b5+="="
else if(!a5)b5+=":"+(a2+a7)
b3[b8]=b5
d[0].$reflectionName=b5
d[0].$metadataIndex=b1+1
if(a7)b6[b4+"*"]=d[0]}}Function.prototype.$3=function(c,d,e){return this(c,d,e)}
Function.prototype.$1=function(c){return this(c)}
Function.prototype.$2=function(c,d){return this(c,d)}
Function.prototype.$0=function(){return this()}
Function.prototype.$4=function(c,d,e,f){return this(c,d,e,f)}
function tearOffGetter(c,d,e,f){return f?new Function("funcs","reflectionInfo","name","H","c","return function tearOff_"+e+y+++"(x) {"+"if (c === null) c = "+"H.ap"+"("+"this, funcs, reflectionInfo, false, [x], name);"+"return new c(this, funcs[0], x, name);"+"}")(c,d,e,H,null):new Function("funcs","reflectionInfo","name","H","c","return function tearOff_"+e+y+++"() {"+"if (c === null) c = "+"H.ap"+"("+"this, funcs, reflectionInfo, false, [], name);"+"return new c(this, funcs[0], null, name);"+"}")(c,d,e,H,null)}function tearOff(c,d,e,f,a0){var g
return e?function(){if(g===void 0)g=H.ap(this,c,d,true,[],f).prototype
return g}:tearOffGetter(c,d,f,a0)}var y=0
if(!init.libraries)init.libraries=[]
if(!init.mangledNames)init.mangledNames=map()
if(!init.mangledGlobalNames)init.mangledGlobalNames=map()
if(!init.statics)init.statics=map()
if(!init.typeInformation)init.typeInformation=map()
if(!init.globalFunctions)init.globalFunctions=map()
var x=init.libraries
var w=init.mangledNames
var v=init.mangledGlobalNames
var u=Object.prototype.hasOwnProperty
var t=a.length
var s=map()
s.collected=map()
s.pending=map()
s.constructorsList=[]
s.combinedConstructorFunction="function $reflectable(fn){fn.$reflectable=1;return fn};\n"+"var $desc;\n"
for(var r=0;r<t;r++){var q=a[r]
var p=q[0]
var o=q[1]
var n=q[2]
var m=q[3]
var l=q[4]
var k=!!q[5]
var j=l&&l["^"]
if(j instanceof Array)j=j[0]
var i=[]
var h=[]
processStatics(l,s)
x.push([p,o,i,h,n,j,k,m])}finishClasses(s)}I.aq=function(){}
var dart=[["","",,H,{"^":"",fC:{"^":"c;a"}}],["","",,J,{"^":"",
j:function(a){return void 0},
a8:function(a,b,c,d){return{i:a,p:b,e:c,x:d}},
a5:function(a){var z,y,x,w,v
z=a[init.dispatchPropertyName]
if(z==null)if($.as==null){H.d9()
z=a[init.dispatchPropertyName]}if(z!=null){y=z.p
if(!1===y)return z.i
if(!0===y)return a
x=Object.getPrototypeOf(a)
if(y===x)return z.i
if(z.e===x)throw H.e(new P.aN("Return interceptor for "+H.b(y(a,z))))}w=a.constructor
v=w==null?null:w[$.$get$aj()]
if(v!=null)return v
v=H.di(a)
if(v!=null)return v
if(typeof a=="function")return C.q
y=Object.getPrototypeOf(a)
if(y==null)return C.i
if(y===Object.prototype)return C.i
if(typeof w=="function"){Object.defineProperty(w,$.$get$aj(),{value:C.b,enumerable:false,writable:true,configurable:true})
return C.b}return C.b},
m:{"^":"c;",
v:function(a,b){return a===b},
gm:function(a){return H.u(a)},
h:["aq",function(a){return H.a0(a)}],
R:["ap",function(a,b){throw H.e(P.aF(a,b.ga2(),b.ga5(),b.ga3(),null))}],
$isbv:1,
$isbz:1,
$isai:1,
$isc9:1,
$isbO:1,
$iscK:1,
$iscn:1,
$isck:1,
$isam:1,
$iscy:1,
$iscz:1,
$iscF:1,
$iscG:1,
$iscH:1,
$isam:1,
$isbx:1,
"%":"ApplicationCacheErrorEvent|AutocompleteErrorEvent|DOMError|ErrorEvent|Event|FileError|InputEvent|MediaError|Navigator|NavigatorUserMediaError|PositionError|SQLError|SpeechRecognitionError"},
c_:{"^":"m;",
h:function(a){return String(a)},
gm:function(a){return a?519018:218159},
$iscZ:1},
c3:{"^":"m;",
v:function(a,b){return null==b},
h:function(a){return"null"},
gm:function(a){return 0},
R:function(a,b){return this.ap(a,b)}},
a:{"^":"m;",
gm:function(a){return 0},
h:["ar",function(a){return String(a)}],
gaa:function(a){return a.width},
ga0:function(a){return a.height},
gS:function(a){return a.world},
ga9:function(a){return a.update},
gaX:function(a){return a.velocity},
gj:function(a){return a.length},
gC:function(a){return a.keys},
gaD:function(a){return a.body},
aU:function(a,b){return a.play(b)},
ai:function(a,b,c,d){return a.sprite(b,c,d)},
gN:function(a){return a.add},
D:function(a,b,c,d){return a.add(b,c,d)},
sab:function(a,b){return a.x=b},
sac:function(a,b){return a.y=b},
gaR:function(a){return a.load},
ga7:function(a){return a.render},
a8:function(a,b,c,d,e){return a.text(b,c,d,e)},
gaB:function(a){return a.anchor},
gaC:function(a){return a.animations},
gaH:function(a){return a.debug},
gu:function(a){return a.input},
gaQ:function(a){return a.left},
gaV:function(a){return a.right},
h:function(a){return a.toString()},
gaW:function(a){return a.up},
gaJ:function(a){return a.down},
gaN:function(a){return a.isDown},
aO:function(a,b){return a.isDown(b)},
gaE:function(a){return a.centerY},
ga_:function(a){return a.create},
ga4:function(a){return a.physics},
gaz:function(a){return a.active},
gaS:function(a){return a.pad1},
gaT:function(a){return a.padsConnected},
gas:function(a){return a.supported},
A:function(a){return a.start()},
gaf:function(a){return a.gamepad},
gaP:function(a){return a.keyboard},
aG:function(a){return a.createCursorKeys()},
ah:function(a,b){return a.setTo(b)},
ak:function(a,b,c,d,e){return a.spritesheet(b,c,d,e)},
aK:function(a,b){return a.enable(b)},
am:function(a,b){return a.startSystem(b)},
saF:function(a,b){return a.collideWorldBounds=b},
E:function(a,b){return a.map(b)},
ga6:function(a){return a.preload},
gl:function(a){return a.current},
aj:function(a,b,c,d){return a.spriteInfo(b,c,d)}},
cm:{"^":"a;"},
R:{"^":"a;"},
Q:{"^":"a;",
h:function(a){var z=a[$.$get$ag()]
return z==null?this.ar(a):J.X(z)},
$S:function(){return{func:1,opt:[,,,,,,,,,,,,,,,,]}}},
z:{"^":"m;",
Z:function(a,b){if(!!a.fixed$length)throw H.e(new P.cJ(b))},
aA:[function(a,b){this.Z(a,"add")
a.push(b)},"$1","gN",2,0,function(){return H.jg(function(a){return{func:1,v:true,args:[a]}},this.$receiver,"z")}],
Y:function(a,b){var z
this.Z(a,"addAll")
for(z=J.a9(b);z.k();)a.push(z.gl(z))},
E:function(a,b){return new H.aE(a,b)},
P:function(a,b){if(b<0||b>=a.length)return H.k(a,b)
return a[b]},
h:function(a){return P.bX(a,"[","]")},
gp:function(a){return new J.ac(a,a.length,0,null)},
gm:function(a){return H.u(a)},
gj:function(a){return a.length},
$isak:1,
$isp:1,
$isq:1},
fB:{"^":"z;"},
ac:{"^":"c;a,b,c,d",
gl:function(a){return this.d},
k:function(){var z,y,x
z=this.a
y=z.length
if(this.b!==y)throw H.e(H.dk(z))
x=this.c
if(x>=y){this.d=null
return!1}this.d=z[x]
this.c=x+1
return!0}},
Z:{"^":"m;",
h:function(a){if(a===0&&1/a<0)return"-0.0"
else return""+a},
gm:function(a){return a&0x1FFFFFFF},
T:function(a,b){if(typeof b!=="number")throw H.e(H.w(b))
return a+b},
ae:function(a,b){return a/b},
F:function(a,b){if(typeof b!=="number")throw H.e(H.w(b))
return a<b},
U:function(a,b){if(typeof b!=="number")throw H.e(H.w(b))
return a>b},
ag:function(a,b){if(typeof b!=="number")throw H.e(H.w(b))
return a>=b},
$isT:1},
c1:{"^":"Z;",$isT:1,$isdb:1},
c0:{"^":"Z;",$isT:1},
a_:{"^":"m;",
at:function(a,b){if(b>=a.length)throw H.e(H.aQ(a,b))
return a.charCodeAt(b)},
T:function(a,b){if(typeof b!=="string")throw H.e(P.bw(b,null,null))
return a+b},
ao:function(a,b,c){var z
if(typeof b!=="number"||Math.floor(b)!==b)H.b_(H.w(b))
if(c==null)c=a.length
if(typeof c!=="number"||Math.floor(c)!==c)H.b_(H.w(c))
z=J.S(b)
if(z.F(b,0))throw H.e(P.a1(b,null,null))
if(z.U(b,c))throw H.e(P.a1(b,null,null))
if(J.b2(c,a.length))throw H.e(P.a1(c,null,null))
return a.substring(b,c)},
an:function(a,b){return this.ao(a,b,null)},
h:function(a){return a},
gm:function(a){var z,y,x
for(z=a.length,y=0,x=0;x<z;++x){y=536870911&y+a.charCodeAt(x)
y=536870911&y+((524287&y)<<10)
y^=y>>6}y=536870911&y+((67108863&y)<<3)
y^=y>>11
return 536870911&y+((16383&y)<<15)},
gj:function(a){return a.length},
$iscB:1}}],["","",,H,{"^":"",p:{"^":"q;"},c7:{"^":"p;",
gp:function(a){return new H.c8(this,J.y(this.a),0,null)},
E:function(a,b){return new H.aE(this,b)}},c8:{"^":"c;a,b,c,d",
gl:function(a){return this.d},
k:function(){var z,y,x,w,v
z=this.a
y=z.a
x=J.aS(y)
w=x.gj(y)
if(this.b!==w)throw H.e(new P.L(z))
v=this.c
if(v>=w){this.d=null
return!1}this.d=z.b.$1(x.P(y,v));++this.c
return!0}},aD:{"^":"q;a,b",
gp:function(a){return new H.cd(null,J.a9(this.a),this.b)},
gj:function(a){return J.y(this.a)},
$asq:function(a,b){return[b]},
n:{
cc:function(a,b){if(!!J.j(a).$isp)return new H.bM(a,b)
return new H.aD(a,b)}}},bM:{"^":"aD;a,b",$isp:1,
$asp:function(a,b){return[b]},
$asq:function(a,b){return[b]}},cd:{"^":"bZ;a,b,c",
k:function(){var z=this.b
if(z.k()){this.a=this.c.$1(z.gl(z))
return!0}this.a=null
return!1},
gl:function(a){return this.a}},aE:{"^":"c7;a,b",
gj:function(a){return J.y(this.a)},
P:function(a,b){return this.b.$1(J.b5(this.a,b))},
$asp:function(a,b){return[b]},
$asq:function(a,b){return[b]}},an:{"^":"c;ay:a<",
v:function(a,b){if(b==null)return!1
return b instanceof H.an&&J.x(this.a,b.a)},
gm:function(a){var z=this._hashCode
if(z!=null)return z
z=536870911&664597*J.J(this.a)
this._hashCode=z
return z},
h:function(a){return'Symbol("'+H.b(this.a)+'")'}}}],["","",,H,{"^":"",
d4:function(a){return init.types[a]},
b:function(a){var z
if(typeof a==="string")return a
if(typeof a==="number"){if(a!==0)return""+a}else if(!0===a)return"true"
else if(!1===a)return"false"
else if(a==null)return"null"
z=J.X(a)
if(typeof z!=="string")throw H.e(H.w(a))
return z},
u:function(a){var z=a.$identityHash
if(z==null){z=Math.random()*0x3fffffff|0
a.$identityHash=z}return z},
aH:function(a){var z,y,x,w,v,u,t,s
z=J.j(a)
y=z.constructor
if(typeof y=="function"){x=y.name
w=typeof x==="string"?x:null}else w=null
if(w==null||z===C.j||!!J.j(a).$isR){v=C.e(a)
if(v==="Object"){u=a.constructor
if(typeof u=="function"){t=String(u).match(/^\s*function\s*([\w$]*)\s*\(/)
s=t==null?null:t[1]
if(typeof s==="string"&&/^\w+$/.test(s))w=s}if(w==null)w=v}else w=v}w=w
if(w.length>1&&C.c.at(w,0)===36)w=C.c.an(w,1)
return function(b,c){return b.replace(/[^<,> ]+/g,function(d){return c[d]||d})}(w+H.aV(H.d3(a),0,null),init.mangledGlobalNames)},
a0:function(a){return"Instance of '"+H.aH(a)+"'"},
aG:function(a,b,c){var z,y,x,w
z={}
z.a=0
y=[]
x=[]
if(b!=null){w=J.y(b)
if(typeof w!=="number")return H.aU(w)
z.a=0+w
C.a.Y(y,b)}z.b=""
if(c!=null&&c.a!==0)c.t(0,new H.cq(z,y,x))
return J.bm(a,new H.c2(C.t,""+"$"+H.b(z.a)+z.b,0,y,x,null))},
cp:function(a,b){var z,y
if(b!=null)z=b instanceof Array?b:P.aC(b,!0)
else z=[]
y=z.length
if(y===0){if(!!a.$0)return a.$0()}else if(y===1){if(!!a.$1)return a.$1(z[0])}else if(y===2){if(!!a.$2)return a.$2(z[0],z[1])}else if(y===3){if(!!a.$3)return a.$3(z[0],z[1],z[2])}else if(y===4){if(!!a.$4)return a.$4(z[0],z[1],z[2],z[3])}else if(y===5)if(!!a.$5)return a.$5(z[0],z[1],z[2],z[3],z[4])
return H.co(a,z)},
co:function(a,b){var z,y,x,w,v,u
z=b.length
y=a[""+"$"+z]
if(y==null){y=J.j(a)["call*"]
if(y==null)return H.aG(a,b,null)
x=H.aI(y)
w=x.d
v=w+x.e
if(x.f||w>z||v<z)return H.aG(a,b,null)
b=P.aC(b,!0)
for(u=z;u<v;++u)C.a.aA(b,init.metadata[x.aI(u)])}return y.apply(a,b)},
aU:function(a){throw H.e(H.w(a))},
k:function(a,b){if(a==null)J.y(a)
throw H.e(H.aQ(a,b))},
aQ:function(a,b){var z,y
if(typeof b!=="number"||Math.floor(b)!==b)return new P.K(!0,b,"index",null)
z=J.y(a)
if(!(b<0)){if(typeof z!=="number")return H.aU(z)
y=b>=z}else y=!0
if(y)return P.bW(b,a,"index",null,z)
return P.a1(b,"index",null)},
w:function(a){return new P.K(!0,a,null,null)},
e:function(a){var z
if(a==null)a=new P.cj()
z=new Error()
z.dartException=a
if("defineProperty" in Object){Object.defineProperty(z,"message",{get:H.b0})
z.name=""}else z.toString=H.b0
return z},
b0:[function(){return J.X(this.dartException)},null,null,0,0,null],
b_:function(a){throw H.e(a)},
dk:function(a){throw H.e(new P.L(a))},
au:function(a){if(a==null||typeof a!='object')return J.J(a)
else return H.u(a)},
d0:function(a,b){var z,y,x,w
z=a.length
for(y=0;y<z;y=w){x=y+1
w=x+1
b.w(0,a[y],a[x])}return b},
dc:[function(a,b,c,d,e,f,g){switch(c){case 0:return new H.dd(a).$0()
case 1:return new H.de(a,d).$0()
case 2:return new H.df(a,d,e).$0()
case 3:return new H.dg(a,d,e,f).$0()
case 4:return new H.dh(a,d,e,f,g).$0()}throw H.e(new P.cM("Unsupported number of arguments for wrapped closure"))},null,null,14,0,null,1,2,3,4,5,6,7],
jh:function(a,b){var z
if(a==null)return
z=a.$identity
if(!!z)return z
z=function(c,d,e,f){return function(g,h,i,j){return f(c,e,d,g,h,i,j)}}(a,b,$,H.dc)
a.$identity=z
return z},
bE:function(a,b,c,d,e,f){var z,y,x,w,v,u,t,s,r,q,p,o,n,m
z=b[0]
y=z.$callName
if(!!J.j(c).$isak){z.$reflectionInfo=c
x=H.aI(z).r}else x=c
w=d?Object.create(new H.cA().constructor.prototype):Object.create(new H.ad(null,null,null,null).constructor.prototype)
w.$initialize=w.constructor
if(d)v=function(){this.$initialize()}
else{u=$.l
$.l=J.G(u,1)
v=new Function("a,b,c,d"+u,"this.$initialize(a,b,c,d"+u+")")}w.constructor=v
v.prototype=w
if(!d){t=e.length==1&&!0
s=H.ay(a,z,t)
s.$reflectionInfo=c}else{w.$static_name=f
s=z
t=!1}if(typeof x=="number")r=function(g,h){return function(){return g(h)}}(H.d4,x)
else if(typeof x=="function")if(d)r=x
else{q=t?H.ax:H.ae
r=function(g,h){return function(){return g.apply({$receiver:h(this)},arguments)}}(x,q)}else throw H.e("Error in reflectionInfo.")
w.$S=r
w[y]=s
for(u=b.length,p=1;p<u;++p){o=b[p]
n=o.$callName
if(n!=null){m=d?o:H.ay(a,o,t)
w[n]=m}}w["call*"]=s
w.$R=z.$R
w.$D=z.$D
return v},
bB:function(a,b,c,d){var z=H.ae
switch(b?-1:a){case 0:return function(e,f){return function(){return f(this)[e]()}}(c,z)
case 1:return function(e,f){return function(g){return f(this)[e](g)}}(c,z)
case 2:return function(e,f){return function(g,h){return f(this)[e](g,h)}}(c,z)
case 3:return function(e,f){return function(g,h,i){return f(this)[e](g,h,i)}}(c,z)
case 4:return function(e,f){return function(g,h,i,j){return f(this)[e](g,h,i,j)}}(c,z)
case 5:return function(e,f){return function(g,h,i,j,k){return f(this)[e](g,h,i,j,k)}}(c,z)
default:return function(e,f){return function(){return e.apply(f(this),arguments)}}(d,z)}},
ay:function(a,b,c){var z,y,x,w,v,u,t
if(c)return H.bD(a,b)
z=b.$stubName
y=b.length
x=a[z]
w=b==null?x==null:b===x
v=!w||y>=27
if(v)return H.bB(y,!w,z,b)
if(y===0){w=$.l
$.l=J.G(w,1)
u="self"+H.b(w)
w="return function(){var "+u+" = this."
v=$.D
if(v==null){v=H.Y("self")
$.D=v}return new Function(w+H.b(v)+";return "+u+"."+H.b(z)+"();}")()}t="abcdefghijklmnopqrstuvwxyz".split("").splice(0,y).join(",")
w=$.l
$.l=J.G(w,1)
t+=H.b(w)
w="return function("+t+"){return this."
v=$.D
if(v==null){v=H.Y("self")
$.D=v}return new Function(w+H.b(v)+"."+H.b(z)+"("+t+");}")()},
bC:function(a,b,c,d){var z,y
z=H.ae
y=H.ax
switch(b?-1:a){case 0:throw H.e(new H.cx("Intercepted function with no arguments."))
case 1:return function(e,f,g){return function(){return f(this)[e](g(this))}}(c,z,y)
case 2:return function(e,f,g){return function(h){return f(this)[e](g(this),h)}}(c,z,y)
case 3:return function(e,f,g){return function(h,i){return f(this)[e](g(this),h,i)}}(c,z,y)
case 4:return function(e,f,g){return function(h,i,j){return f(this)[e](g(this),h,i,j)}}(c,z,y)
case 5:return function(e,f,g){return function(h,i,j,k){return f(this)[e](g(this),h,i,j,k)}}(c,z,y)
case 6:return function(e,f,g){return function(h,i,j,k,l){return f(this)[e](g(this),h,i,j,k,l)}}(c,z,y)
default:return function(e,f,g,h){return function(){h=[g(this)]
Array.prototype.push.apply(h,arguments)
return e.apply(f(this),h)}}(d,z,y)}},
bD:function(a,b){var z,y,x,w,v,u,t,s
z=H.bA()
y=$.aw
if(y==null){y=H.Y("receiver")
$.aw=y}x=b.$stubName
w=b.length
v=a[x]
u=b==null?v==null:b===v
t=!u||w>=28
if(t)return H.bC(w,!u,x,b)
if(w===1){y="return function(){return this."+H.b(z)+"."+H.b(x)+"(this."+H.b(y)+");"
u=$.l
$.l=J.G(u,1)
return new Function(y+H.b(u)+"}")()}s="abcdefghijklmnopqrstuvwxyz".split("").splice(0,w-1).join(",")
y="return function("+s+"){return this."+H.b(z)+"."+H.b(x)+"(this."+H.b(y)+", "+s+");"
u=$.l
$.l=J.G(u,1)
return new Function(y+H.b(u)+"}")()},
ap:function(a,b,c,d,e,f){var z
b.fixed$length=Array
if(!!J.j(c).$isak){c.fixed$length=Array
z=c}else z=c
return H.bE(a,b,z,!!d,e,f)},
dl:function(a){throw H.e(new P.bJ(a))},
aT:function(a){return init.getIsolateTag(a)},
d3:function(a){if(a==null)return
return a.$ti},
F:function(a,b){var z
if(a==null)return"dynamic"
if(typeof a==="object"&&a!==null&&a.constructor===Array)return a[0].builtin$cls+H.aV(a,1,b)
if(typeof a=="function")return a.builtin$cls
if(typeof a==="number"&&Math.floor(a)===a)return H.b(a)
if(typeof a.func!="undefined"){z=a.typedef
if(z!=null)return H.F(z,b)
return H.cX(a,b)}return"unknown-reified-type"},
cX:function(a,b){var z,y,x,w,v,u,t,s,r,q,p
z=!!a.v?"void":H.F(a.ret,b)
if("args" in a){y=a.args
for(x=y.length,w="",v="",u=0;u<x;++u,v=", "){t=y[u]
w=w+v+H.F(t,b)}}else{w=""
v=""}if("opt" in a){s=a.opt
w+=v+"["
for(x=s.length,v="",u=0;u<x;++u,v=", "){t=s[u]
w=w+v+H.F(t,b)}w+="]"}if("named" in a){r=a.named
w+=v+"{"
for(x=H.d_(r),q=x.length,v="",u=0;u<q;++u,v=", "){p=x[u]
w=w+v+H.F(r[p],b)+(" "+H.b(p))}w+="}"}return"("+w+") => "+z},
aV:function(a,b,c){var z,y,x,w,v,u
if(a==null)return""
z=new P.a2("")
for(y=b,x=!0,w=!0,v="";y<a.length;++y){if(x)x=!1
else z.i=v+", "
u=a[y]
if(u!=null)w=!1
v=z.i+=H.F(u,c)}return w?"":"<"+z.h(0)+">"},
jn:function(a){var z=$.ar
return"Instance of "+(z==null?"<Unknown>":z.$1(a))},
jk:function(a){return H.u(a)},
ji:function(a,b,c){Object.defineProperty(a,b,{value:c,enumerable:false,writable:true,configurable:true})},
di:function(a){var z,y,x,w,v,u
z=$.ar.$1(a)
y=$.a4[z]
if(y!=null){Object.defineProperty(a,init.dispatchPropertyName,{value:y,enumerable:false,writable:true,configurable:true})
return y.i}x=$.a6[z]
if(x!=null)return x
w=init.interceptorsByTag[z]
if(w==null){z=$.aP.$2(a,z)
if(z!=null){y=$.a4[z]
if(y!=null){Object.defineProperty(a,init.dispatchPropertyName,{value:y,enumerable:false,writable:true,configurable:true})
return y.i}x=$.a6[z]
if(x!=null)return x
w=init.interceptorsByTag[z]}}if(w==null)return
x=w.prototype
v=z[0]
if(v==="!"){y=H.at(x)
$.a4[z]=y
Object.defineProperty(a,init.dispatchPropertyName,{value:y,enumerable:false,writable:true,configurable:true})
return y.i}if(v==="~"){$.a6[z]=x
return x}if(v==="-"){u=H.at(x)
Object.defineProperty(Object.getPrototypeOf(a),init.dispatchPropertyName,{value:u,enumerable:false,writable:true,configurable:true})
return u.i}if(v==="+")return H.aY(a,x)
if(v==="*")throw H.e(new P.aN(z))
if(init.leafTags[z]===true){u=H.at(x)
Object.defineProperty(Object.getPrototypeOf(a),init.dispatchPropertyName,{value:u,enumerable:false,writable:true,configurable:true})
return u.i}else return H.aY(a,x)},
aY:function(a,b){var z=Object.getPrototypeOf(a)
Object.defineProperty(z,init.dispatchPropertyName,{value:J.a8(b,z,null,null),enumerable:false,writable:true,configurable:true})
return b},
at:function(a){return J.a8(a,!1,null,!!a.$isc4)},
dj:function(a,b,c){var z=b.prototype
if(init.leafTags[a]===true)return J.a8(z,!1,null,!!z.$isc4)
else return J.a8(z,c,null,null)},
d9:function(){if(!0===$.as)return
$.as=!0
H.da()},
da:function(){var z,y,x,w,v,u,t,s
$.a4=Object.create(null)
$.a6=Object.create(null)
H.d5()
z=init.interceptorsByTag
y=Object.getOwnPropertyNames(z)
if(typeof window!="undefined"){window
x=function(){}
for(w=0;w<y.length;++w){v=y[w]
u=$.aZ.$1(v)
if(u!=null){t=H.dj(v,z[v],u)
if(t!=null){Object.defineProperty(u,init.dispatchPropertyName,{value:t,enumerable:false,writable:true,configurable:true})
x.prototype=u}}}}for(w=0;w<y.length;++w){v=y[w]
if(/^[A-Za-z_]/.test(v)){s=z[v]
z["!"+v]=s
z["~"+v]=s
z["-"+v]=s
z["+"+v]=s
z["*"+v]=s}}},
d5:function(){var z,y,x,w,v,u,t
z=C.k()
z=H.B(C.l,H.B(C.m,H.B(C.d,H.B(C.d,H.B(C.o,H.B(C.n,H.B(C.p(C.e),z)))))))
if(typeof dartNativeDispatchHooksTransformer!="undefined"){y=dartNativeDispatchHooksTransformer
if(typeof y=="function")y=[y]
if(y.constructor==Array)for(x=0;x<y.length;++x){w=y[x]
if(typeof w=="function")z=w(z)||z}}v=z.getTag
u=z.getUnknownTag
t=z.prototypeForTag
$.ar=new H.d6(v)
$.aP=new H.d7(u)
$.aZ=new H.d8(t)},
B:function(a,b){return a(b)||b},
bG:{"^":"cI;a",$asr:I.aq,$isr:1},
bF:{"^":"c;",
h:function(a){return P.al(this)},
$isr:1},
bH:{"^":"bF;a,b,c",
gj:function(a){return this.a},
O:function(a){if(typeof a!=="string")return!1
if("__proto__"===a)return!1
return this.b.hasOwnProperty(a)},
q:function(a,b){if(!this.O(b))return
return this.W(b)},
W:function(a){return this.b[a]},
t:function(a,b){var z,y,x,w
z=this.c
for(y=z.length,x=0;x<y;++x){w=z[x]
b.$2(w,this.W(w))}},
gC:function(a){return new H.cL(this)}},
cL:{"^":"q;a",
gp:function(a){var z=this.a.c
return new J.ac(z,z.length,0,null)},
gj:function(a){return this.a.c.length}},
c2:{"^":"c;a,b,c,d,e,f",
ga2:function(){var z=this.a
return z},
ga5:function(){var z,y,x,w
if(this.c===1)return C.f
z=this.d
y=z.length-this.e.length
if(y===0)return C.f
x=[]
for(w=0;w<y;++w){if(w>=z.length)return H.k(z,w)
x.push(z[w])}x.fixed$length=Array
x.immutable$list=Array
return x},
ga3:function(){var z,y,x,w,v,u,t,s
if(this.c!==0)return C.h
z=this.e
y=z.length
x=this.d
w=x.length-y
if(y===0)return C.h
v=new H.az(0,null,null,null,null,null,0)
for(u=0;u<y;++u){if(u>=z.length)return H.k(z,u)
t=z[u]
s=w+u
if(s<0||s>=x.length)return H.k(x,s)
v.w(0,new H.an(t),x[s])}return new H.bG(v)}},
ct:{"^":"c;a,b,c,d,e,f,r,x",
aI:function(a){var z=this.d
if(typeof a!=="number")return a.F()
if(a<z)return
return this.b[3+a-z]},
n:{
aI:function(a){var z,y,x
z=a.$reflectionInfo
if(z==null)return
z.fixed$length=Array
z=z
y=z[0]
x=z[1]
return new H.ct(a,z,(y&1)===1,y>>1,x>>1,(x&1)===1,z[2],null)}}},
cq:{"^":"i;a,b,c",
$2:function(a,b){var z=this.a
z.b=z.b+"$"+H.b(a)
this.c.push(a)
this.b.push(b);++z.a}},
dd:{"^":"i;a",
$0:function(){return this.a.$0()}},
de:{"^":"i;a,b",
$0:function(){return this.a.$1(this.b)}},
df:{"^":"i;a,b,c",
$0:function(){return this.a.$2(this.b,this.c)}},
dg:{"^":"i;a,b,c,d",
$0:function(){return this.a.$3(this.b,this.c,this.d)}},
dh:{"^":"i;a,b,c,d,e",
$0:function(){return this.a.$4(this.b,this.c,this.d,this.e)}},
i:{"^":"c;",
h:function(a){return"Closure '"+H.aH(this).trim()+"'"},
gad:function(){return this},
gad:function(){return this}},
aM:{"^":"i;"},
cA:{"^":"aM;",
h:function(a){var z=this.$static_name
if(z==null)return"Closure of unknown static method"
return"Closure '"+z+"'"}},
ad:{"^":"aM;a,b,c,d",
v:function(a,b){if(b==null)return!1
if(this===b)return!0
if(!(b instanceof H.ad))return!1
return this.a===b.a&&this.b===b.b&&this.c===b.c},
gm:function(a){var z,y
z=this.c
if(z==null)y=H.u(this.a)
else y=typeof z!=="object"?J.J(z):H.u(z)
return(y^H.u(this.b))>>>0},
h:function(a){var z=this.c
if(z==null)z=this.a
return"Closure '"+H.b(this.d)+"' of "+H.a0(z)},
n:{
ae:function(a){return a.a},
ax:function(a){return a.c},
bA:function(){var z=$.D
if(z==null){z=H.Y("self")
$.D=z}return z},
Y:function(a){var z,y,x,w,v
z=new H.ad("self","target","receiver","name")
y=Object.getOwnPropertyNames(z)
y.fixed$length=Array
x=y
for(y=x.length,w=0;w<y;++w){v=x[w]
if(z[v]===a)return v}}}},
cx:{"^":"t;a",
h:function(a){return"RuntimeError: "+this.a}},
az:{"^":"c;a,b,c,d,e,f,r",
gj:function(a){return this.a},
gC:function(a){return new H.aA(this)},
q:function(a,b){var z,y,x
if(typeof b==="string"){z=this.b
if(z==null)return
y=this.J(z,b)
return y==null?null:y.gB()}else if(typeof b==="number"&&(b&0x3ffffff)===b){x=this.c
if(x==null)return
y=this.J(x,b)
return y==null?null:y.gB()}else return this.aM(b)},
aM:function(a){var z,y,x
z=this.d
if(z==null)return
y=this.X(z,J.J(a)&0x3ffffff)
x=this.a1(y,a)
if(x<0)return
return y[x].gB()},
w:function(a,b,c){var z,y,x,w,v,u
if(typeof b==="string"){z=this.b
if(z==null){z=this.K()
this.b=z}this.V(z,b,c)}else if(typeof b==="number"&&(b&0x3ffffff)===b){y=this.c
if(y==null){y=this.K()
this.c=y}this.V(y,b,c)}else{x=this.d
if(x==null){x=this.K()
this.d=x}w=J.J(b)&0x3ffffff
v=this.X(x,w)
if(v==null)this.M(x,w,[this.L(b,c)])
else{u=this.a1(v,b)
if(u>=0)v[u].sB(c)
else v.push(this.L(b,c))}}},
t:function(a,b){var z,y
z=this.e
y=this.r
for(;z!=null;){b.$2(z.a,z.b)
if(y!==this.r)throw H.e(new P.L(this))
z=z.c}},
V:function(a,b,c){var z=this.J(a,b)
if(z==null)this.M(a,b,this.L(b,c))
else z.sB(c)},
L:function(a,b){var z,y
z=new H.c5(a,b,null,null)
if(this.e==null){this.f=z
this.e=z}else{y=this.f
z.d=y
y.c=z
this.f=z}++this.a
this.r=this.r+1&67108863
return z},
a1:function(a,b){var z,y
if(a==null)return-1
z=a.length
for(y=0;y<z;++y)if(J.x(a[y].gaL(),b))return y
return-1},
h:function(a){return P.al(this)},
J:function(a,b){return a[b]},
X:function(a,b){return a[b]},
M:function(a,b,c){a[b]=c},
aw:function(a,b){delete a[b]},
K:function(){var z=Object.create(null)
this.M(z,"<non-identifier-key>",z)
this.aw(z,"<non-identifier-key>")
return z},
$isr:1},
c5:{"^":"c;aL:a<,B:b@,c,d"},
aA:{"^":"p;a",
gj:function(a){return this.a.a},
gp:function(a){var z,y
z=this.a
y=new H.c6(z,z.r,null,null)
y.c=z.e
return y}},
c6:{"^":"c;a,b,c,d",
gl:function(a){return this.d},
k:function(){var z=this.a
if(this.b!==z.r)throw H.e(new P.L(z))
else{z=this.c
if(z==null){this.d=null
return!1}else{this.d=z.a
this.c=z.c
return!0}}}},
d6:{"^":"i;a",
$1:function(a){return this.a(a)}},
d7:{"^":"i;a",
$2:function(a,b){return this.a(a,b)}},
d8:{"^":"i;a",
$1:function(a){return this.a(a)}}}],["","",,H,{"^":"",
d_:function(a){var z=a?Object.keys(a):[]
z.fixed$length=Array
return z}}],["","",,P,{"^":"",
aO:function(a,b,c){if(c==null)a[b]=a
else a[b]=c},
cQ:function(){var z=Object.create(null)
P.aO(z,"<non-identifier-key>",z)
delete z["<non-identifier-key>"]
return z},
aB:function(a){return H.d0(a,new H.az(0,null,null,null,null,null,0))},
bY:function(a,b,c){var z,y
if(P.ao(a)){if(b==="("&&c===")")return"(...)"
return b+"..."+c}z=[]
y=$.$get$E()
y.push(a)
try{P.cY(a,z)}finally{if(0>=y.length)return H.k(y,-1)
y.pop()}y=P.aL(b,z,", ")+c
return y.charCodeAt(0)==0?y:y},
bX:function(a,b,c){var z,y,x
if(P.ao(a))return b+"..."+c
z=new P.a2(b)
y=$.$get$E()
y.push(a)
try{x=z
x.si(P.aL(x.gi(),a,", "))}finally{if(0>=y.length)return H.k(y,-1)
y.pop()}y=z
y.si(y.gi()+c)
y=z.gi()
return y.charCodeAt(0)==0?y:y},
ao:function(a){var z,y
for(z=0;y=$.$get$E(),z<y.length;++z)if(a===y[z])return!0
return!1},
cY:function(a,b){var z,y,x,w,v,u,t,s,r,q
z=a.gp(a)
y=0
x=0
while(!0){if(!(y<80||x<3))break
if(!z.k())return
w=H.b(z.gl(z))
b.push(w)
y+=w.length+2;++x}if(!z.k()){if(x<=5)return
if(0>=b.length)return H.k(b,-1)
v=b.pop()
if(0>=b.length)return H.k(b,-1)
u=b.pop()}else{t=z.gl(z);++x
if(!z.k()){if(x<=4){b.push(H.b(t))
return}v=H.b(t)
if(0>=b.length)return H.k(b,-1)
u=b.pop()
y+=v.length+2}else{s=z.gl(z);++x
for(;z.k();t=s,s=r){r=z.gl(z);++x
if(x>100){while(!0){if(!(y>75&&x>3))break
if(0>=b.length)return H.k(b,-1)
y-=b.pop().length+2;--x}b.push("...")
return}}u=H.b(t)
v=H.b(s)
y+=v.length+u.length+4}}if(x>b.length+2){y+=5
q="..."}else q=null
while(!0){if(!(y>80&&b.length>3))break
if(0>=b.length)return H.k(b,-1)
y-=b.pop().length+2
if(q==null){y+=5
q="..."}}if(q!=null)b.push(q)
b.push(u)
b.push(v)},
al:function(a){var z,y,x
z={}
if(P.ao(a))return"{...}"
y=new P.a2("")
try{$.$get$E().push(a)
x=y
x.si(x.gi()+"{")
z.a=!0
a.t(0,new P.ce(z,y))
z=y
z.si(z.gi()+"}")}finally{z=$.$get$E()
if(0>=z.length)return H.k(z,-1)
z.pop()}z=y.gi()
return z.charCodeAt(0)==0?z:z},
cN:{"^":"c;",
gj:function(a){return this.a},
gC:function(a){return new P.cO(this)},
O:function(a){var z,y
if(typeof a==="string"&&a!=="__proto__"){z=this.b
return z==null?!1:z[a]!=null}else if(typeof a==="number"&&(a&0x3ffffff)===a){y=this.c
return y==null?!1:y[a]!=null}else return this.av(a)},
av:function(a){var z=this.d
if(z==null)return!1
return this.I(z[H.au(a)&0x3ffffff],a)>=0},
q:function(a,b){var z,y,x,w
if(typeof b==="string"&&b!=="__proto__"){z=this.b
if(z==null)y=null
else{x=z[b]
y=x===z?null:x}return y}else if(typeof b==="number"&&(b&0x3ffffff)===b){w=this.c
if(w==null)y=null
else{x=w[b]
y=x===w?null:x}return y}else return this.ax(b)},
ax:function(a){var z,y,x
z=this.d
if(z==null)return
y=z[H.au(a)&0x3ffffff]
x=this.I(y,a)
return x<0?null:y[x+1]},
w:function(a,b,c){var z,y,x,w
z=this.d
if(z==null){z=P.cQ()
this.d=z}y=H.au(b)&0x3ffffff
x=z[y]
if(x==null){P.aO(z,y,[b,c]);++this.a
this.e=null}else{w=this.I(x,b)
if(w>=0)x[w+1]=c
else{x.push(b,c);++this.a
this.e=null}}},
au:function(){var z,y,x,w,v,u,t,s,r,q,p,o
z=this.e
if(z!=null)return z
y=new Array(this.a)
y.fixed$length=Array
x=this.b
if(x!=null){w=Object.getOwnPropertyNames(x)
v=w.length
for(u=0,t=0;t<v;++t){y[u]=w[t];++u}}else u=0
s=this.c
if(s!=null){w=Object.getOwnPropertyNames(s)
v=w.length
for(t=0;t<v;++t){y[u]=+w[t];++u}}r=this.d
if(r!=null){w=Object.getOwnPropertyNames(r)
v=w.length
for(t=0;t<v;++t){q=r[w[t]]
p=q.length
for(o=0;o<p;o+=2){y[u]=q[o];++u}}}this.e=y
return y},
$isr:1},
cR:{"^":"cN;a,b,c,d,e",
I:function(a,b){var z,y,x
if(a==null)return-1
z=a.length
for(y=0;y<z;y+=2){x=a[y]
if(x==null?b==null:x===b)return y}return-1}},
cO:{"^":"p;a",
gj:function(a){return this.a.a},
gp:function(a){var z=this.a
return new P.cP(z,z.au(),0,null)}},
cP:{"^":"c;a,b,c,d",
gl:function(a){return this.d},
k:function(){var z,y,x
z=this.b
y=this.c
x=this.a
if(z!==x.e)throw H.e(new P.L(x))
else if(y>=z.length){this.d=null
return!1}else{this.d=z[y]
this.c=y+1
return!0}}},
cS:{"^":"c;",$isr:1},
cb:{"^":"c;",
q:function(a,b){return this.a.q(0,b)},
t:function(a,b){this.a.t(0,b)},
gj:function(a){return this.a.a},
gC:function(a){return new H.aA(this.a)},
h:function(a){return P.al(this.a)},
$isr:1},
cI:{"^":"cb+cS;",$asr:null,$isr:1},
ce:{"^":"i;a,b",
$2:function(a,b){var z,y
z=this.a
if(!z.a)this.b.i+=", "
z.a=!1
z=this.b
y=z.i+=H.b(a)
z.i=y+": "
z.i+=H.b(b)}}}],["","",,P,{"^":"",
O:function(a){if(typeof a==="number"||typeof a==="boolean"||null==a)return J.X(a)
if(typeof a==="string")return JSON.stringify(a)
return P.bP(a)},
bP:function(a){var z=J.j(a)
if(!!z.$isi)return z.h(a)
return H.a0(a)},
aC:function(a,b){var z,y
z=[]
for(y=J.a9(a);y.k();)z.push(y.gl(y))
return z},
ch:{"^":"i;a,b",
$2:function(a,b){var z,y,x
z=this.b
y=this.a
z.i+=y.a
x=z.i+=H.b(a.gay())
z.i=x+": "
z.i+=H.b(P.O(b))
y.a=", "}},
cZ:{"^":"c;"},
"+bool":0,
jj:{"^":"T;"},
"+double":0,
t:{"^":"c;"},
cj:{"^":"t;",
h:function(a){return"Throw of null."}},
K:{"^":"t;a,b,c,d",
gH:function(){return"Invalid argument"+(!this.a?"(s)":"")},
gG:function(){return""},
h:function(a){var z,y,x,w,v,u
z=this.c
y=z!=null?" ("+z+")":""
z=this.d
x=z==null?"":": "+z
w=this.gH()+y+x
if(!this.a)return w
v=this.gG()
u=P.O(this.b)
return w+v+": "+H.b(u)},
n:{
bw:function(a,b,c){return new P.K(!0,a,b,c)}}},
cs:{"^":"K;e,f,a,b,c,d",
gH:function(){return"RangeError"},
gG:function(){var z,y,x
z=this.e
if(z==null){z=this.f
y=z!=null?": Not less than or equal to "+H.b(z):""}else{x=this.f
if(x==null)y=": Not greater than or equal to "+H.b(z)
else if(x>z)y=": Not in range "+H.b(z)+".."+H.b(x)+", inclusive"
else y=x<z?": Valid value range is empty":": Only valid value is "+H.b(z)}return y},
A:function(a){return this.e.$0()},
n:{
a1:function(a,b,c){return new P.cs(null,null,!0,a,b,"Value not in range")}}},
bV:{"^":"K;e,j:f>,a,b,c,d",
gal:function(a){return 0},
gH:function(){return"RangeError"},
gG:function(){if(J.b3(this.b,0))return": index must not be negative"
var z=this.f
if(J.x(z,0))return": no indices are valid"
return": index should be less than "+H.b(z)},
A:function(a){return this.gal(this).$0()},
n:{
bW:function(a,b,c,d,e){var z=e!=null?e:J.y(b)
return new P.bV(b,z,!0,a,c,"Index out of range")}}},
cg:{"^":"t;a,b,c,d,e",
h:function(a){var z,y,x,w,v,u,t,s
z={}
y=new P.a2("")
z.a=""
for(x=this.c,w=x.length,v=0;v<w;++v){u=x[v]
y.i+=z.a
y.i+=H.b(P.O(u))
z.a=", "}this.d.t(0,new P.ch(z,y))
t=P.O(this.a)
s=y.h(0)
x="NoSuchMethodError: method not found: '"+H.b(this.b.a)+"'\nReceiver: "+H.b(t)+"\nArguments: ["+s+"]"
return x},
n:{
aF:function(a,b,c,d,e){return new P.cg(a,b,c,d,e)}}},
cJ:{"^":"t;a",
h:function(a){return"Unsupported operation: "+this.a}},
aN:{"^":"t;a",
h:function(a){var z=this.a
return z!=null?"UnimplementedError: "+H.b(z):"UnimplementedError"}},
L:{"^":"t;a",
h:function(a){var z=this.a
if(z==null)return"Concurrent modification during iteration."
return"Concurrent modification during iteration: "+H.b(P.O(z))+"."}},
bJ:{"^":"t;a",
h:function(a){var z=this.a
return z==null?"Reading static variable during its initialization":"Reading static variable '"+H.b(z)+"' during its initialization"}},
cM:{"^":"c;a",
h:function(a){return"Exception: "+this.a}},
f5:{"^":"c;"},
db:{"^":"T;"},
"+int":0,
q:{"^":"c;",
E:function(a,b){return H.cc(this,b)},
gj:function(a){var z,y
z=this.gp(this)
for(y=0;z.k();)++y
return y},
h:function(a){return P.bY(this,"(",")")}},
bZ:{"^":"c;"},
ak:{"^":"c;",$isp:1,$isq:1},
"+List":0,
h8:{"^":"c;",
gm:function(a){return P.c.prototype.gm.call(this,this)},
h:function(a){return"null"}},
"+Null":0,
T:{"^":"c;"},
"+num":0,
c:{"^":";",
v:function(a,b){return this===b},
gm:function(a){return H.u(this)},
h:function(a){return H.a0(this)},
R:function(a,b){throw H.e(P.aF(this,b.ga2(),b.ga5(),b.ga3(),null))},
toString:function(){return this.h(this)}},
cB:{"^":"c;"},
"+String":0,
a2:{"^":"c;i@",
gj:function(a){return this.i.length},
h:function(a){var z=this.i
return z.charCodeAt(0)==0?z:z},
n:{
aL:function(a,b,c){var z=new J.ac(b,b.length,0,null)
if(!z.k())return a
if(c.length===0){do a+=H.b(z.d)
while(z.k())}else{a+=H.b(z.d)
for(;z.k();)a=a+c+H.b(z.d)}return a}}},
iy:{"^":"c;"}}],["","",,W,{"^":"",bT:{"^":"bN;","%":";HTMLElement"},eM:{"^":"m;",
h:function(a){return String(a)},
"%":"DOMException"},bN:{"^":"ci;",
h:function(a){return a.localName},
"%":";Element"},bQ:{"^":"m;","%":"DOMWindow|Window;EventTarget"},fq:{"^":"bT;a0:height=,aa:width=","%":"HTMLImageElement"},ci:{"^":"bQ;",
h:function(a){var z=a.nodeValue
return z==null?this.aq(a):z},
a8:function(a,b,c,d,e){return a.textContent.$4(b,c,d,e)},
"%":";Node"}}],["","",,P,{"^":"",
cU:function(a){var z,y
z=a.$dart_jsFunction
if(z!=null)return z
y=function(b,c){return function(){return b(c,Array.prototype.slice.apply(arguments))}}(P.cT,a)
y[$.$get$ag()]=a
a.$dart_jsFunction=y
return y},
cT:[function(a,b){var z=H.cp(a,b)
return z},null,null,4,0,null,9,10],
a3:function(a){if(typeof a=="function")return a
else return P.cU(a)}}],["","",,P,{"^":"",
aW:function(a){return P.cV(a)},
cV:function(a){return new P.cW(new P.cR(0,null,null,null,null)).$1(a)},
cW:{"^":"i;a",
$1:[function(a){var z,y,x,w,v
z=this.a
if(z.O(a))return z.q(0,a)
y=J.j(a)
if(!!y.$isr){x={}
z.w(0,a,x)
for(z=y.gC(a),z=z.gp(z);z.k();){w=z.gl(z)
x[w]=this.$1(y.q(a,w))}return x}else if(!!y.$isq){v=[]
z.w(0,a,v)
C.a.Y(v,y.E(a,this))
return v}else return a},null,null,2,0,null,8,"call"]}}],["","",,P,{"^":""}],["","",,K,{"^":"",fS:{"^":"a;","%":""}}],["","",,E,{"^":"",dm:{"^":"a;","%":""},af:{"^":"a;","%":""},fg:{"^":"af;","%":""},h0:{"^":"af;","%":""},h_:{"^":"a;","%":""},i_:{"^":"af;","%":""},M:{"^":"a;","%":""},bL:{"^":"M;","%":""},bS:{"^":"M;","%":""},ca:{"^":"M;","%":""},cr:{"^":"M;","%":""},cv:{"^":"M;","%":""},du:{"^":"N;","%":""},ey:{"^":"N;","%":""},N:{"^":"a;","%":""},f4:{"^":"N;","%":""},hV:{"^":"N;","%":""},hX:{"^":"N;","%":""},ah:{"^":"a;","%":""},ez:{"^":"a;","%":""},bI:{"^":"a;","%":""},cf:{"^":"a;","%":""},jo:{"^":"a;","%":""},e1:{"^":"a;","%":""},dZ:{"^":"ah;","%":""},aK:{"^":"a;","%":""},fN:{"^":"aK;","%":""},hW:{"^":"aK;","%":""},ei:{"^":"v;","%":""},el:{"^":"v;","%":""},eA:{"^":"v;","%":""},fh:{"^":"v;","%":""},i9:{"^":"a;","%":""},i8:{"^":"a;","%":""},v:{"^":"a;","%":""},fK:{"^":"v;","%":""},hc:{"^":"v;","%":""},hx:{"^":"v;","%":""},hN:{"^":"v;","%":""},aJ:{"^":"ah;","%":""},f6:{"^":"aJ;","%":""},h9:{"^":"a;","%":""},iS:{"^":"a;","%":""},iW:{"^":"a;","%":""},fy:{"^":"a;","%":""},fz:{"^":"aJ;","%":""},fA:{"^":"a;","%":""},jc:{"^":"ah;","%":""}}],["","",,V,{"^":"",hf:{"^":"a;","%":""},je:{"^":"a;","%":""},jl:{"^":"a;","%":""},bv:{"^":"a;","%":""},dw:{"^":"a;","%":""},dx:{"^":"a;","%":""},dL:{"^":"a;","%":""},dB:{"^":"a;","%":""},dC:{"^":"a;","%":""},dQ:{"^":"a;","%":""},dM:{"^":"a;","%":""},dN:{"^":"a;","%":""},bz:{"^":"a;","%":""},dS:{"^":"o;","%":""},e5:{"^":"A;","%":""},e6:{"^":"bU;","%":""},hC:{"^":"a;","%":""},e8:{"^":"a;","%":""},e9:{"^":"a;","%":""},ea:{"^":"a;","%":""},eb:{"^":"a;","%":""},ee:{"^":"a;","%":""},em:{"^":"a;","%":""},eq:{"^":"a;","%":""},hK:{"^":"a;","%":""},es:{"^":"a;","%":""},eC:{"^":"a;","%":""},eF:{"^":"a;","%":""},eJ:{"^":"a;","%":""},eK:{"^":"a;","%":""},dO:{"^":"a;","%":""},e4:{"^":"a;","%":""},eo:{"^":"a;","%":""},eE:{"^":"a;","%":""},eO:{"^":"a;","%":""},eV:{"^":"a;","%":""},fM:{"^":"a;","%":""},hH:{"^":"a;","%":""},hI:{"^":"a;","%":""},hJ:{"^":"a;","%":""},ic:{"^":"a;","%":""},eP:{"^":"a;","%":""},eU:{"^":"a;","%":""},h:{"^":"f;","%":""},dP:{"^":"h;","%":""},dV:{"^":"h;","%":""},dX:{"^":"h;","%":""},ej:{"^":"h;","%":""},ek:{"^":"h;","%":""},er:{"^":"h;","%":""},eZ:{"^":"h;","%":""},fe:{"^":"h;","%":""},fj:{"^":"h;","%":""},fI:{"^":"h;","%":""},fJ:{"^":"h;","%":""},fT:{"^":"h;","%":""},hr:{"^":"h;","%":""},hy:{"^":"h;","%":""},i0:{"^":"h;","%":""},iR:{"^":"h;","%":""},f0:{"^":"a;","%":""},f1:{"^":"P;","%":""},f2:{"^":"a;","%":""},f3:{"^":"a;","%":""},fl:{"^":"a;","%":""},ai:{"^":"a;","%":""},f7:{"^":"a;","%":""},f8:{"^":"a;","%":""},f9:{"^":"a;","%":""},fa:{"^":"o;","%":""},fc:{"^":"a;","%":""},P:{"^":"o;","%":""},bU:{"^":"A;","%":""},fp:{"^":"a;","%":""},fs:{"^":"a;","%":""},ft:{"^":"a;","%":""},fF:{"^":"a;","%":""},fH:{"^":"a;","%":""},fG:{"^":"a;","%":""},fL:{"^":"a;","%":""},fO:{"^":"a;","%":""},c9:{"^":"a;","%":""},fQ:{"^":"a;","%":""},fW:{"^":"a;","%":""},fV:{"^":"a;","%":""},jb:{"^":"a;","%":""},fZ:{"^":"a;","%":""},fR:{"^":"a;","%":""},h1:{"^":"a;","%":""},hd:{"^":"A;","%":""},he:{"^":"a;","%":""},eR:{"^":"a;","%":""},bO:{"^":"P;","%":""},hq:{"^":"a;","%":""},cK:{"^":"a;","%":""},dA:{"^":"a;","%":""},e_:{"^":"a;","%":""},eW:{"^":"a;","%":""},h2:{"^":"a;","%":""},h3:{"^":"a;","%":""},dn:{"^":"a;","%":""},h4:{"^":"a;","%":""},iD:{"^":"a;","%":""},h5:{"^":"a;","%":""},ha:{"^":"a;","%":""},hb:{"^":"a;","%":""},e0:{"^":"P;","%":""},ep:{"^":"a;","%":""},hg:{"^":"bI;","%":""},hh:{"^":"bL;","%":""},f_:{"^":"a;","%":""},hi:{"^":"bS;","%":""},fw:{"^":"a;","%":""},hj:{"^":"ca;","%":""},hk:{"^":"cf;","%":""},hA:{"^":"a;","%":""},hl:{"^":"cr;","%":""},hm:{"^":"cv;","%":""},iq:{"^":"a;","%":""},n:{"^":"a;","%":""},i2:{"^":"n;","%":""},dp:{"^":"n;","%":""},dq:{"^":"a;","%":""},dr:{"^":"a;","%":""},ds:{"^":"a;","%":""},et:{"^":"n;","%":""},e7:{"^":"n;","%":""},iI:{"^":"n;","%":""},i1:{"^":"n;","%":""},iZ:{"^":"n;","%":""},ja:{"^":"n;","%":""},fE:{"^":"n;","%":""},iP:{"^":"a;","%":""},i5:{"^":"a;","%":""},cn:{"^":"a;","%":""},hz:{"^":"a;","%":""},ck:{"^":"am;","%":""},hB:{"^":"a;","%":""},hD:{"^":"a;","%":""},hG:{"^":"a;","%":""},hM:{"^":"a;","%":""},hO:{"^":"a;","%":""},cl:{"^":"cu;","%":""},hS:{"^":"a;","%":""},hT:{"^":"cl;","%":""},hn:{"^":"cw;","%":""},hY:{"^":"a;","%":""},ia:{"^":"a;","%":""},cy:{"^":"a;","%":""},ib:{"^":"a;","%":""},cz:{"^":"a;","%":""},il:{"^":"a;","%":""},ho:{"^":"A;","%":""},ir:{"^":"P;","%":""},iu:{"^":"o;","%":""},i3:{"^":"a;","%":""},eH:{"^":"a;","%":""},iv:{"^":"a;","%":""},fo:{"^":"a;","%":""},iw:{"^":"a;","%":""},hp:{"^":"a;","%":""},iz:{"^":"A;","%":""},iB:{"^":"a;","%":""},iE:{"^":"a;","%":""},iF:{"^":"A;","%":""},iG:{"^":"a;","%":""},iH:{"^":"a;","%":""},iJ:{"^":"a;","%":""},iC:{"^":"cE;","%":""},iN:{"^":"a;","%":""},cF:{"^":"a;","%":""},cG:{"^":"a;","%":""},iO:{"^":"a;","%":""},cH:{"^":"a;","%":""},iT:{"^":"a;","%":""},iU:{"^":"a;","%":""},iX:{"^":"a;","%":""},eI:{"^":"a;","%":""},j_:{"^":"n;","%":""},jd:{"^":"P;","%":""}}],["","",,K,{"^":"",jf:{"^":"a;","%":""},jm:{"^":"a;","%":""},fk:{"^":"a;","%":""},fi:{"^":"a;","%":""},hu:{"^":"a;","%":""},hv:{"^":"a;","%":""},dT:{"^":"a;","%":""},iA:{"^":"a;","%":""},fP:{"^":"a;","%":""},fU:{"^":"a;","%":""},hR:{"^":"a;","%":""},i7:{"^":"a;","%":""},eX:{"^":"a;","%":""},f:{"^":"a;","%":""},dt:{"^":"f;","%":""},dD:{"^":"f;","%":""},dE:{"^":"a;","%":""},dH:{"^":"a;","%":""},by:{"^":"a;","%":""},dR:{"^":"a;","%":""},dU:{"^":"f;","%":""},dW:{"^":"f;","%":""},dY:{"^":"f;","%":""},ec:{"^":"a;","%":""},ef:{"^":"a;","%":""},ed:{"^":"a;","%":""},eg:{"^":"a;","%":""},eh:{"^":"a;","%":""},en:{"^":"a;","%":""},eu:{"^":"f;","%":""},ev:{"^":"f;","%":""},eB:{"^":"f;","%":""},eD:{"^":"f;","%":""},eL:{"^":"f;","%":""},eN:{"^":"f;","%":""},bK:{"^":"a;","%":""},o:{"^":"bK;","%":""},eQ:{"^":"a;","%":""},eS:{"^":"a;","%":""},eT:{"^":"a;","%":""},eY:{"^":"a;","%":""},fd:{"^":"a;","%":""},fb:{"^":"o;","%":""},ff:{"^":"f;","%":""},fr:{"^":"a;","%":""},fu:{"^":"a;","%":""},fv:{"^":"a;","%":""},fx:{"^":"f;","%":""},fD:{"^":"a;","%":""},fX:{"^":"a;","%":""},fY:{"^":"a;","%":""},h6:{"^":"f;","%":""},h7:{"^":"f;","%":""},hs:{"^":"f;","%":""},fm:{"^":"a;","%":""},hw:{"^":"a;","%":""},ht:{"^":"a;","%":""},hF:{"^":"a;","%":""},ex:{"^":"a;","%":""},ix:{"^":"a;","%":""},am:{"^":"a;","%":""},hE:{"^":"a;","%":""},hP:{"^":"a;","%":""},hL:{"^":"f;","%":""},cw:{"^":"cC;","%":""},hZ:{"^":"a;","%":""},i6:{"^":"f;","%":""},ik:{"^":"f;","%":""},io:{"^":"a;","%":""},ip:{"^":"a;","%":""},A:{"^":"o;","%":""},is:{"^":"o;","%":""},it:{"^":"a;","%":""},cC:{"^":"o;","%":""},cD:{"^":"a;","%":""},cE:{"^":"A;","%":""},iK:{"^":"f;","%":""},iL:{"^":"f;","%":""},iM:{"^":"f;","%":""},iV:{"^":"f;","%":""},iY:{"^":"by;","%":""},j0:{"^":"a;","%":""},j1:{"^":"a;","%":""},j2:{"^":"a;","%":""},j3:{"^":"a;","%":""},j4:{"^":"a;","%":""},j5:{"^":"a;","%":""},j6:{"^":"a;","%":""},j7:{"^":"a;","%":""},j9:{"^":"a;","%":""},j8:{"^":"a;","%":""},cu:{"^":"cD;","%":""},e3:{"^":"a;","%":""},ij:{"^":"a;","%":""},e2:{"^":"a;","%":""},ii:{"^":"a;","%":""},ih:{"^":"a;","%":""},dv:{"^":"a;","%":""},eG:{"^":"a;","%":""},fn:{"^":"a;","%":""},hU:{"^":"a;","%":""},iQ:{"^":"a;","%":""},i4:{"^":"a;","%":""},ew:{"^":"a;","%":""},dK:{"^":"a;","%":""},ie:{"^":"a;","%":""},id:{"^":"a;","%":""},hQ:{"^":"a;","%":""},dz:{"^":"a;","%":""},dy:{"^":"a;","%":""},ig:{"^":"a;","%":""},dF:{"^":"a;","%":""},bx:{"^":"a;","%":""},dJ:{"^":"a;","%":""},dI:{"^":"a;","%":""},dG:{"^":"a;","%":""},im:{"^":"o;","%":""}}],["","",,F,{"^":"",
aX:function(){new N.bR(null,null,null,100).A(0)}},1],["","",,N,{"^":"",bR:{"^":"c;a,b,c,d",
A:function(a){var z,y,x,w
z=window.innerWidth
y=window.innerHeight
x=self.Phaser.AUTO
w=P.aW(P.aB(["preload",P.a3(this.ga6(this)),"create",P.a3(this.ga_(this)),"update",P.a3(this.ga9(this)),"render",P.a3(this.ga7(this))]))
new self.Phaser.Game(z,y,x,"phaser-example",w)},
aZ:[function(a,b){J.br(J.bf(b),"player","assets/character.png",32,48)},"$1","ga6",2,0,0,0],
aY:[function(a,b){var z,y,x
z=J.d(b)
J.bt(z.ga4(b),self.Phaser.Physics.ARCADE)
this.a=J.b4(J.bd(z.gu(b)))
if(J.bj(J.I(z.gu(b)))===!0)J.bs(J.I(z.gu(b)))
this.b=J.bp(z.gN(b),0,0,"player")
J.b6(z.ga4(b),this.b)
y=J.H(this.b)
x=J.d1(y)
x.D(y,"up",self.Phaser.ArrayUtils.numberArray(12,15),5)
x.D(y,"down",self.Phaser.ArrayUtils.numberArray(0,3),5)
x.D(y,"left",self.Phaser.ArrayUtils.numberArray(4,7),5)
x.D(y,"right",self.Phaser.ArrayUtils.numberArray(8,11),5)
y=this.b
x=J.d(y)
J.bo(x.gaB(y),0.5)
x.sab(y,J.av(J.bl(z.gS(b)),2))
x.sac(y,J.av(J.bc(z.gS(b)),2))
y=J.b8(this.b)
this.c=y
J.bn(y,!0)
J.bu(z.gN(b),20,J.b9(z.gS(b)),"Use the D-Pad (keyboard or gamepad!) to move",P.aW(P.aB(["fill","blue"])))},"$1","ga_",2,0,0,0],
b0:[function(a,b){var z,y
z=J.d(b)
y=J.b7(J.I(z.gu(b)))===!0&&J.b1(J.bh(J.I(z.gu(b))),1)?J.bg(J.I(z.gu(b))):null
if(J.U(J.bk(this.a))!==!0)z=J.x(y==null?y:J.V(y,self.Phaser.Gamepad.XBOX360_DPAD_UP),!0)
else z=!0
if(z){J.W(J.H(this.b),"up")
J.ab(J.C(this.c),this.d*-1)}else{if(J.U(J.bb(this.a))!==!0)z=J.x(y==null?y:J.V(y,self.Phaser.Gamepad.XBOX360_DPAD_DOWN),!0)
else z=!0
if(z){J.W(J.H(this.b),"down")
J.ab(J.C(this.c),this.d)}else{J.ab(J.C(this.c),0)
if(J.U(J.be(this.a))!==!0)z=J.x(y==null?y:J.V(y,self.Phaser.Gamepad.XBOX360_DPAD_LEFT),!0)
else z=!0
if(z){J.W(J.H(this.b),"left")
J.aa(J.C(this.c),this.d*-1)}else{if(J.U(J.bi(this.a))!==!0)z=J.x(y==null?y:J.V(y,self.Phaser.Gamepad.XBOX360_DPAD_RIGHT),!0)
else z=!0
if(z){J.W(J.H(this.b),"right")
J.aa(J.C(this.c),this.d)}else J.aa(J.C(this.c),0)}}}},"$1","ga9",2,0,0,0],
b_:[function(a,b){J.bq(J.ba(b),this.b,20,20)},"$1","ga7",2,0,0,0]}}]]
setupProgram(dart,0)
J.j=function(a){if(typeof a=="number"){if(Math.floor(a)==a)return J.c1.prototype
return J.c0.prototype}if(typeof a=="string")return J.a_.prototype
if(a==null)return J.c3.prototype
if(typeof a=="boolean")return J.c_.prototype
if(a.constructor==Array)return J.z.prototype
if(typeof a!="object"){if(typeof a=="function")return J.Q.prototype
return a}if(a instanceof P.c)return a
return J.a5(a)}
J.aR=function(a){if(a==null)return a
if(a.constructor==Array)return J.z.prototype
if(!(a instanceof P.c))return J.R.prototype
return a}
J.aS=function(a){if(typeof a=="string")return J.a_.prototype
if(a==null)return a
if(a.constructor==Array)return J.z.prototype
if(typeof a!="object"){if(typeof a=="function")return J.Q.prototype
return a}if(a instanceof P.c)return a
return J.a5(a)}
J.d1=function(a){if(a==null)return a
if(a.constructor==Array)return J.z.prototype
if(typeof a!="object"){if(typeof a=="function")return J.Q.prototype
return a}if(a instanceof P.c)return a
return J.a5(a)}
J.S=function(a){if(typeof a=="number")return J.Z.prototype
if(a==null)return a
if(!(a instanceof P.c))return J.R.prototype
return a}
J.d2=function(a){if(typeof a=="number")return J.Z.prototype
if(typeof a=="string")return J.a_.prototype
if(a==null)return a
if(!(a instanceof P.c))return J.R.prototype
return a}
J.d=function(a){if(a==null)return a
if(typeof a!="object"){if(typeof a=="function")return J.Q.prototype
return a}if(a instanceof P.c)return a
return J.a5(a)}
J.G=function(a,b){if(typeof a=="number"&&typeof b=="number")return a+b
return J.d2(a).T(a,b)}
J.av=function(a,b){if(typeof a=="number"&&typeof b=="number")return a/b
return J.S(a).ae(a,b)}
J.x=function(a,b){if(a==null)return b==null
if(typeof a!="object")return b!=null&&a===b
return J.j(a).v(a,b)}
J.b1=function(a,b){if(typeof a=="number"&&typeof b=="number")return a>=b
return J.S(a).ag(a,b)}
J.b2=function(a,b){if(typeof a=="number"&&typeof b=="number")return a>b
return J.S(a).U(a,b)}
J.b3=function(a,b){if(typeof a=="number"&&typeof b=="number")return a<b
return J.S(a).F(a,b)}
J.b4=function(a){return J.d(a).aG(a)}
J.b5=function(a,b){return J.aR(a).P(a,b)}
J.b6=function(a,b){return J.d(a).aK(a,b)}
J.b7=function(a){return J.d(a).gaz(a)}
J.H=function(a){return J.d(a).gaC(a)}
J.b8=function(a){return J.d(a).gaD(a)}
J.b9=function(a){return J.d(a).gaE(a)}
J.ba=function(a){return J.d(a).gaH(a)}
J.bb=function(a){return J.d(a).gaJ(a)}
J.I=function(a){return J.d(a).gaf(a)}
J.J=function(a){return J.j(a).gm(a)}
J.bc=function(a){return J.d(a).ga0(a)}
J.U=function(a){return J.d(a).gaN(a)}
J.a9=function(a){return J.aR(a).gp(a)}
J.bd=function(a){return J.d(a).gaP(a)}
J.be=function(a){return J.d(a).gaQ(a)}
J.y=function(a){return J.aS(a).gj(a)}
J.bf=function(a){return J.d(a).gaR(a)}
J.bg=function(a){return J.d(a).gaS(a)}
J.bh=function(a){return J.d(a).gaT(a)}
J.bi=function(a){return J.d(a).gaV(a)}
J.bj=function(a){return J.d(a).gas(a)}
J.bk=function(a){return J.d(a).gaW(a)}
J.C=function(a){return J.d(a).gaX(a)}
J.bl=function(a){return J.d(a).gaa(a)}
J.V=function(a,b){return J.d(a).aO(a,b)}
J.bm=function(a,b){return J.j(a).R(a,b)}
J.W=function(a,b){return J.d(a).aU(a,b)}
J.bn=function(a,b){return J.d(a).saF(a,b)}
J.aa=function(a,b){return J.d(a).sab(a,b)}
J.ab=function(a,b){return J.d(a).sac(a,b)}
J.bo=function(a,b){return J.d(a).ah(a,b)}
J.bp=function(a,b,c,d){return J.d(a).ai(a,b,c,d)}
J.bq=function(a,b,c,d){return J.d(a).aj(a,b,c,d)}
J.br=function(a,b,c,d,e){return J.d(a).ak(a,b,c,d,e)}
J.bs=function(a){return J.d(a).A(a)}
J.bt=function(a,b){return J.d(a).am(a,b)}
J.bu=function(a,b,c,d,e){return J.d(a).a8(a,b,c,d,e)}
J.X=function(a){return J.j(a).h(a)}
I.a7=function(a){a.immutable$list=Array
a.fixed$length=Array
return a}
var $=I.p
C.j=J.m.prototype
C.a=J.z.prototype
C.c=J.a_.prototype
C.q=J.Q.prototype
C.i=J.cm.prototype
C.b=J.R.prototype
C.k=function() {  var toStringFunction = Object.prototype.toString;  function getTag(o) {    var s = toStringFunction.call(o);    return s.substring(8, s.length - 1);  }  function getUnknownTag(object, tag) {    if (/^HTML[A-Z].*Element$/.test(tag)) {      var name = toStringFunction.call(object);      if (name == "[object Object]") return null;      return "HTMLElement";    }  }  function getUnknownTagGenericBrowser(object, tag) {    if (self.HTMLElement && object instanceof HTMLElement) return "HTMLElement";    return getUnknownTag(object, tag);  }  function prototypeForTag(tag) {    if (typeof window == "undefined") return null;    if (typeof window[tag] == "undefined") return null;    var constructor = window[tag];    if (typeof constructor != "function") return null;    return constructor.prototype;  }  function discriminator(tag) { return null; }  var isBrowser = typeof navigator == "object";  return {    getTag: getTag,    getUnknownTag: isBrowser ? getUnknownTagGenericBrowser : getUnknownTag,    prototypeForTag: prototypeForTag,    discriminator: discriminator };}
C.d=function(hooks) { return hooks; }
C.l=function(hooks) {  if (typeof dartExperimentalFixupGetTag != "function") return hooks;  hooks.getTag = dartExperimentalFixupGetTag(hooks.getTag);}
C.m=function(hooks) {  var getTag = hooks.getTag;  var prototypeForTag = hooks.prototypeForTag;  function getTagFixed(o) {    var tag = getTag(o);    if (tag == "Document") {      // "Document", so we check for the xmlVersion property, which is the empty      if (!!o.xmlVersion) return "!Document";      return "!HTMLDocument";    }    return tag;  }  function prototypeForTagFixed(tag) {    if (tag == "Document") return null;    return prototypeForTag(tag);  }  hooks.getTag = getTagFixed;  hooks.prototypeForTag = prototypeForTagFixed;}
C.n=function(hooks) {  var userAgent = typeof navigator == "object" ? navigator.userAgent : "";  if (userAgent.indexOf("Firefox") == -1) return hooks;  var getTag = hooks.getTag;  var quickMap = {    "BeforeUnloadEvent": "Event",    "DataTransfer": "Clipboard",    "GeoGeolocation": "Geolocation",    "Location": "!Location",    "WorkerMessageEvent": "MessageEvent",    "XMLDocument": "!Document"};  function getTagFirefox(o) {    var tag = getTag(o);    return quickMap[tag] || tag;  }  hooks.getTag = getTagFirefox;}
C.e=function getTagFallback(o) {  var s = Object.prototype.toString.call(o);  return s.substring(8, s.length - 1);}
C.o=function(hooks) {  var userAgent = typeof navigator == "object" ? navigator.userAgent : "";  if (userAgent.indexOf("Trident/") == -1) return hooks;  var getTag = hooks.getTag;  var quickMap = {    "BeforeUnloadEvent": "Event",    "DataTransfer": "Clipboard",    "HTMLDDElement": "HTMLElement",    "HTMLDTElement": "HTMLElement",    "HTMLPhraseElement": "HTMLElement",    "Position": "Geoposition"  };  function getTagIE(o) {    var tag = getTag(o);    var newTag = quickMap[tag];    if (newTag) return newTag;    if (tag == "Object") {      if (window.DataView && (o instanceof window.DataView)) return "DataView";    }    return tag;  }  function prototypeForTagIE(tag) {    var constructor = window[tag];    if (constructor == null) return null;    return constructor.prototype;  }  hooks.getTag = getTagIE;  hooks.prototypeForTag = prototypeForTagIE;}
C.p=function(getTagFallback) {  return function(hooks) {    if (typeof navigator != "object") return hooks;    var ua = navigator.userAgent;    if (ua.indexOf("DumpRenderTree") >= 0) return hooks;    if (ua.indexOf("Chrome") >= 0) {      function confirm(p) {        return typeof window == "object" && window[p] && window[p].name == p;      }      if (confirm("Window") && confirm("HTMLElement")) return hooks;    }    hooks.getTag = getTagFallback;  };}
C.f=I.a7([])
C.r=I.a7([])
C.h=new H.bH(0,{},C.r)
C.t=new H.an("call")
$.l=0
$.D=null
$.aw=null
$.ar=null
$.aP=null
$.aZ=null
$.a4=null
$.a6=null
$.as=null
$=null
init.isHunkLoaded=function(a){return!!$dart_deferred_initializers$[a]}
init.deferredInitialized=new Object(null)
init.isHunkInitialized=function(a){return init.deferredInitialized[a]}
init.initializeLoadedHunk=function(a){$dart_deferred_initializers$[a]($globals$,$)
init.deferredInitialized[a]=true}
init.deferredLibraryUris={}
init.deferredLibraryHashes={};(function(a){for(var z=0;z<a.length;){var y=a[z++]
var x=a[z++]
var w=a[z++]
I.$lazy(y,x,w)}})(["ag","$get$ag",function(){return H.aT("_$dart_dartClosure")},"aj","$get$aj",function(){return H.aT("_$dart_js")},"E","$get$E",function(){return[]}])
I=I.$finishIsolateConstructor(I)
$=new I()
init.metadata=["game","closure","isolate","numberOfArguments","arg1","arg2","arg3","arg4","o","callback","arguments"]
init.types=[{func:1,args:[V.ai]}]
function convertToFastObject(a){function MyClass(){}MyClass.prototype=a
new MyClass()
return a}function convertToSlowObject(a){a.__MAGIC_SLOW_PROPERTY=1
delete a.__MAGIC_SLOW_PROPERTY
return a}A=convertToFastObject(A)
B=convertToFastObject(B)
C=convertToFastObject(C)
D=convertToFastObject(D)
E=convertToFastObject(E)
F=convertToFastObject(F)
G=convertToFastObject(G)
H=convertToFastObject(H)
J=convertToFastObject(J)
K=convertToFastObject(K)
L=convertToFastObject(L)
M=convertToFastObject(M)
N=convertToFastObject(N)
O=convertToFastObject(O)
P=convertToFastObject(P)
Q=convertToFastObject(Q)
R=convertToFastObject(R)
S=convertToFastObject(S)
T=convertToFastObject(T)
U=convertToFastObject(U)
V=convertToFastObject(V)
W=convertToFastObject(W)
X=convertToFastObject(X)
Y=convertToFastObject(Y)
Z=convertToFastObject(Z)
function init(){I.p=Object.create(null)
init.allClasses=map()
init.getTypeFromName=function(a){return init.allClasses[a]}
init.interceptorsByTag=map()
init.leafTags=map()
init.finishedClasses=map()
I.$lazy=function(a,b,c,d,e){if(!init.lazies)init.lazies=Object.create(null)
init.lazies[a]=b
e=e||I.p
var z={}
var y={}
e[a]=z
e[b]=function(){var x=this[a]
if(x==y)H.dl(d||a)
try{if(x===z){this[a]=y
try{x=this[a]=c()}finally{if(x===z)this[a]=null}}return x}finally{this[b]=function(){return this[a]}}}}
I.$finishIsolateConstructor=function(a){var z=a.p
function Isolate(){var y=Object.keys(z)
for(var x=0;x<y.length;x++){var w=y[x]
this[w]=z[w]}var v=init.lazies
var u=v?Object.keys(v):[]
for(var x=0;x<u.length;x++)this[v[u[x]]]=null
function ForceEfficientMap(){}ForceEfficientMap.prototype=this
new ForceEfficientMap()
for(var x=0;x<u.length;x++){var t=v[u[x]]
this[t]=z[t]}}Isolate.prototype=a.prototype
Isolate.prototype.constructor=Isolate
Isolate.p=z
Isolate.a7=a.a7
Isolate.aq=a.aq
return Isolate}}!function(){var z=function(a){var t={}
t[a]=1
return Object.keys(convertToFastObject(t))[0]}
init.getIsolateTag=function(a){return z("___dart_"+a+init.isolateTag)}
var y="___dart_isolate_tags_"
var x=Object[y]||(Object[y]=Object.create(null))
var w="_ZxYxX"
for(var v=0;;v++){var u=z(w+"_"+v+"_")
if(!(u in x)){x[u]=1
init.isolateTag=u
break}}init.dispatchPropertyName=init.getIsolateTag("dispatch_record")}();(function(a){if(typeof document==="undefined"){a(null)
return}if(typeof document.currentScript!='undefined'){a(document.currentScript)
return}var z=document.scripts
function onLoad(b){for(var x=0;x<z.length;++x)z[x].removeEventListener("load",onLoad,false)
a(b.target)}for(var y=0;y<z.length;++y)z[y].addEventListener("load",onLoad,false)})(function(a){init.currentScript=a
if(typeof dartMainRunner==="function")dartMainRunner(F.aX,[])
else F.aX([])})})()