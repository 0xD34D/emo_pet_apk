!function(){var t={8151:function(t,n,e){var r=e(3897),o=e(34),i=e(3371),c=r.TypeError;t.exports=function(t){if(o(t))return t;throw c(i(t)+" is not a function")}},6108:function(t,n,e){var r=e(3606),o=e(5525),i=e(6885),c=r("unscopables"),u=Array.prototype;null==u[c]&&i.f(u,c,{configurable:!0,value:o(null)}),t.exports=function(t){u[c][t]=!0}},9865:function(t,n,e){var r=e(3897),o=e(6654),i=r.String,c=r.TypeError;t.exports=function(t){if(o(t))return t;throw c(i(t)+" is not an object")}},7794:function(t,n,e){"use strict";var r=e(6562),o=e(889),i=e(7887);t.exports=function(t){for(var n=r(this),e=i(n),c=arguments.length,u=o(c>1?arguments[1]:void 0,e),a=c>2?arguments[2]:void 0,f=void 0===a?e:o(a,e);f>u;)n[u++]=t;return n}},4610:function(t,n,e){var r=e(1530),o=e(889),i=e(7887),c=function(t){return function(n,e,c){var u,a=r(n),f=i(a),s=o(c,f);if(t&&e!=e){for(;f>s;)if((u=a[s++])!=u)return!0}else for(;f>s;s++)if((t||s in a)&&a[s]===e)return t||s||0;return!t&&-1}};t.exports={includes:c(!0),indexOf:c(!1)}},1173:function(t,n,e){var r=e(6352),o=r({}.toString),i=r("".slice);t.exports=function(t){return i(o(t),8,-1)}},5104:function(t,n,e){var r=e(9006),o=e(5041),i=e(6033),c=e(6885);t.exports=function(t,n,e){for(var u=o(n),a=c.f,f=i.f,s=0;s<u.length;s++){var l=u[s];r(t,l)||e&&r(e,l)||a(t,l,f(n,l))}}},707:function(t,n,e){var r=e(2891),o=e(6885),i=e(6306);t.exports=r?function(t,n,e){return o.f(t,n,i(1,e))}:function(t,n,e){return t[n]=e,t}},6306:function(t){t.exports=function(t,n){return{enumerable:!(1&t),configurable:!(2&t),writable:!(4&t),value:n}}},2891:function(t,n,e){var r=e(7864);t.exports=!r((function(){return 7!=Object.defineProperty({},1,{get:function(){return 7}})[1]}))},2672:function(t,n,e){var r=e(3897),o=e(6654),i=r.document,c=o(i)&&o(i.createElement);t.exports=function(t){return c?i.createElement(t):{}}},7609:function(t,n,e){var r=e(6385);t.exports=r("navigator","userAgent")||""},7049:function(t,n,e){var r,o,i=e(3897),c=e(7609),u=i.process,a=i.Deno,f=u&&u.versions||a&&a.version,s=f&&f.v8;s&&(o=(r=s.split("."))[0]>0&&r[0]<4?1:+(r[0]+r[1])),!o&&c&&(!(r=c.match(/Edge\/(\d+)/))||r[1]>=74)&&(r=c.match(/Chrome\/(\d+)/))&&(o=+r[1]),t.exports=o},7145:function(t){t.exports=["constructor","hasOwnProperty","isPrototypeOf","propertyIsEnumerable","toLocaleString","toString","valueOf"]},9069:function(t,n,e){var r=e(3897),o=e(6033).f,i=e(707),c=e(7475),u=e(8807),a=e(5104),f=e(4354);t.exports=function(t,n){var e,s,l,p,v,y=t.target,d=t.global,m=t.stat;if(e=d?r:m?r[y]||u(y,{}):(r[y]||{}).prototype)for(s in n){if(p=n[s],l=t.noTargetGet?(v=o(e,s))&&v.value:e[s],!f(d?s:y+(m?".":"#")+s,t.forced)&&void 0!==l){if(typeof p==typeof l)continue;a(p,l)}(t.sham||l&&l.sham)&&i(p,"sham",!0),c(e,s,p,t)}}},7864:function(t){t.exports=function(t){try{return!!t()}catch(t){return!0}}},3694:function(t){var n=Function.prototype.call;t.exports=n.bind?n.bind(n):function(){return n.apply(n,arguments)}},8406:function(t,n,e){var r=e(2891),o=e(9006),i=Function.prototype,c=r&&Object.getOwnPropertyDescriptor,u=o(i,"name"),a=u&&"something"===function(){}.name,f=u&&(!r||r&&c(i,"name").configurable);t.exports={EXISTS:u,PROPER:a,CONFIGURABLE:f}},6352:function(t){var n=Function.prototype,e=n.bind,r=n.call,o=e&&e.bind(r,r);t.exports=e?function(t){return t&&o(t)}:function(t){return t&&function(){return r.apply(t,arguments)}}},6385:function(t,n,e){var r=e(3897),o=e(34),i=function(t){return o(t)?t:void 0};t.exports=function(t,n){return arguments.length<2?i(r[t]):r[t]&&r[t][n]}},9948:function(t,n,e){var r=e(8151);t.exports=function(t,n){var e=t[n];return null==e?void 0:r(e)}},3897:function(t,n,e){var r=function(t){return t&&t.Math==Math&&t};t.exports=r("object"==typeof globalThis&&globalThis)||r("object"==typeof window&&window)||r("object"==typeof self&&self)||r("object"==typeof e.g&&e.g)||function(){return this}()||Function("return this")()},9006:function(t,n,e){var r=e(6352),o=e(6562),i=r({}.hasOwnProperty);t.exports=Object.hasOwn||function(t,n){return i(o(t),n)}},9821:function(t){t.exports={}},7806:function(t,n,e){var r=e(6385);t.exports=r("document","documentElement")},1931:function(t,n,e){var r=e(2891),o=e(7864),i=e(2672);t.exports=!r&&!o((function(){return 7!=Object.defineProperty(i("div"),"a",{get:function(){return 7}}).a}))},4328:function(t,n,e){var r=e(3897),o=e(6352),i=e(7864),c=e(1173),u=r.Object,a=o("".split);t.exports=i((function(){return!u("z").propertyIsEnumerable(0)}))?function(t){return"String"==c(t)?a(t,""):u(t)}:u},5117:function(t,n,e){var r=e(6352),o=e(34),i=e(974),c=r(Function.toString);o(i.inspectSource)||(i.inspectSource=function(t){return c(t)}),t.exports=i.inspectSource},9384:function(t,n,e){var r,o,i,c=e(9986),u=e(3897),a=e(6352),f=e(6654),s=e(707),l=e(9006),p=e(974),v=e(9195),y=e(9821),d="Object already initialized",m=u.TypeError,b=u.WeakMap;if(c||p.state){var g=p.state||(p.state=new b),x=a(g.get),h=a(g.has),w=a(g.set);r=function(t,n){if(h(g,t))throw new m(d);return n.facade=t,w(g,t,n),n},o=function(t){return x(g,t)||{}},i=function(t){return h(g,t)}}else{var O=v("state");y[O]=!0,r=function(t,n){if(l(t,O))throw new m(d);return n.facade=t,s(t,O,n),n},o=function(t){return l(t,O)?t[O]:{}},i=function(t){return l(t,O)}}t.exports={set:r,get:o,has:i,enforce:function(t){return i(t)?o(t):r(t,{})},getterFor:function(t){return function(n){var e;if(!f(n)||(e=o(n)).type!==t)throw m("Incompatible receiver, "+t+" required");return e}}}},34:function(t){t.exports=function(t){return"function"==typeof t}},4354:function(t,n,e){var r=e(7864),o=e(34),i=/#|\.prototype\./,c=function(t,n){var e=a[u(t)];return e==s||e!=f&&(o(n)?r(n):!!n)},u=c.normalize=function(t){return String(t).replace(i,".").toLowerCase()},a=c.data={},f=c.NATIVE="N",s=c.POLYFILL="P";t.exports=c},6654:function(t,n,e){var r=e(34);t.exports=function(t){return"object"==typeof t?null!==t:r(t)}},7605:function(t){t.exports=!1},491:function(t,n,e){var r=e(3897),o=e(6385),i=e(34),c=e(4283),u=e(7093),a=r.Object;t.exports=u?function(t){return"symbol"==typeof t}:function(t){var n=o("Symbol");return i(n)&&c(n.prototype,a(t))}},7887:function(t,n,e){var r=e(1470);t.exports=function(t){return r(t.length)}},3144:function(t,n,e){var r=e(7049),o=e(7864);t.exports=!!Object.getOwnPropertySymbols&&!o((function(){var t=Symbol();return!String(t)||!(Object(t)instanceof Symbol)||!Symbol.sham&&r&&r<41}))},9986:function(t,n,e){var r=e(3897),o=e(34),i=e(5117),c=r.WeakMap;t.exports=o(c)&&/native code/.test(i(c))},5525:function(t,n,e){var r,o=e(9865),i=e(4295),c=e(7145),u=e(9821),a=e(7806),f=e(2672),s=e(9195)("IE_PROTO"),l=function(){},p=function(t){return"<script>"+t+"<\/script>"},v=function(t){t.write(p("")),t.close();var n=t.parentWindow.Object;return t=null,n},y=function(){try{r=new ActiveXObject("htmlfile")}catch(t){}var t,n;y="undefined"!=typeof document?document.domain&&r?v(r):((n=f("iframe")).style.display="none",a.appendChild(n),n.src=String("javascript:"),(t=n.contentWindow.document).open(),t.write(p("document.F=Object")),t.close(),t.F):v(r);for(var e=c.length;e--;)delete y.prototype[c[e]];return y()};u[s]=!0,t.exports=Object.create||function(t,n){var e;return null!==t?(l.prototype=o(t),e=new l,l.prototype=null,e[s]=t):e=y(),void 0===n?e:i.f(e,n)}},4295:function(t,n,e){var r=e(2891),o=e(8651),i=e(6885),c=e(9865),u=e(1530),a=e(9917);n.f=r&&!o?Object.defineProperties:function(t,n){c(t);for(var e,r=u(n),o=a(n),f=o.length,s=0;f>s;)i.f(t,e=o[s++],r[e]);return t}},6885:function(t,n,e){var r=e(3897),o=e(2891),i=e(1931),c=e(8651),u=e(9865),a=e(6543),f=r.TypeError,s=Object.defineProperty,l=Object.getOwnPropertyDescriptor;n.f=o?c?function(t,n,e){if(u(t),n=a(n),u(e),"function"==typeof t&&"prototype"===n&&"value"in e&&"writable"in e&&!e.writable){var r=l(t,n);r&&r.writable&&(t[n]=e.value,e={configurable:"configurable"in e?e.configurable:r.configurable,enumerable:"enumerable"in e?e.enumerable:r.enumerable,writable:!1})}return s(t,n,e)}:s:function(t,n,e){if(u(t),n=a(n),u(e),i)try{return s(t,n,e)}catch(t){}if("get"in e||"set"in e)throw f("Accessors not supported");return"value"in e&&(t[n]=e.value),t}},6033:function(t,n,e){var r=e(2891),o=e(3694),i=e(7017),c=e(6306),u=e(1530),a=e(6543),f=e(9006),s=e(1931),l=Object.getOwnPropertyDescriptor;n.f=r?l:function(t,n){if(t=u(t),n=a(n),s)try{return l(t,n)}catch(t){}if(f(t,n))return c(!o(i.f,t,n),t[n])}},2080:function(t,n,e){var r=e(3917),o=e(7145).concat("length","prototype");n.f=Object.getOwnPropertyNames||function(t){return r(t,o)}},362:function(t,n){n.f=Object.getOwnPropertySymbols},4283:function(t,n,e){var r=e(6352);t.exports=r({}.isPrototypeOf)},3917:function(t,n,e){var r=e(6352),o=e(9006),i=e(1530),c=e(4610).indexOf,u=e(9821),a=r([].push);t.exports=function(t,n){var e,r=i(t),f=0,s=[];for(e in r)!o(u,e)&&o(r,e)&&a(s,e);for(;n.length>f;)o(r,e=n[f++])&&(~c(s,e)||a(s,e));return s}},9917:function(t,n,e){var r=e(3917),o=e(7145);t.exports=Object.keys||function(t){return r(t,o)}},7017:function(t,n){"use strict";var e={}.propertyIsEnumerable,r=Object.getOwnPropertyDescriptor,o=r&&!e.call({1:2},1);n.f=o?function(t){var n=r(this,t);return!!n&&n.enumerable}:e},2863:function(t,n,e){var r=e(3897),o=e(3694),i=e(34),c=e(6654),u=r.TypeError;t.exports=function(t,n){var e,r;if("string"===n&&i(e=t.toString)&&!c(r=o(e,t)))return r;if(i(e=t.valueOf)&&!c(r=o(e,t)))return r;if("string"!==n&&i(e=t.toString)&&!c(r=o(e,t)))return r;throw u("Can't convert object to primitive value")}},5041:function(t,n,e){var r=e(6385),o=e(6352),i=e(2080),c=e(362),u=e(9865),a=o([].concat);t.exports=r("Reflect","ownKeys")||function(t){var n=i.f(u(t)),e=c.f;return e?a(n,e(t)):n}},7475:function(t,n,e){var r=e(3897),o=e(34),i=e(9006),c=e(707),u=e(8807),a=e(5117),f=e(9384),s=e(8406).CONFIGURABLE,l=f.get,p=f.enforce,v=String(String).split("String");(t.exports=function(t,n,e,a){var f,l=!!a&&!!a.unsafe,y=!!a&&!!a.enumerable,d=!!a&&!!a.noTargetGet,m=a&&void 0!==a.name?a.name:n;o(e)&&("Symbol("===String(m).slice(0,7)&&(m="["+String(m).replace(/^Symbol\(([^)]*)\)/,"$1")+"]"),(!i(e,"name")||s&&e.name!==m)&&c(e,"name",m),(f=p(e)).source||(f.source=v.join("string"==typeof m?m:""))),t!==r?(l?!d&&t[n]&&(y=!0):delete t[n],y?t[n]=e:c(t,n,e)):y?t[n]=e:u(n,e)})(Function.prototype,"toString",(function(){return o(this)&&l(this).source||a(this)}))},7777:function(t,n,e){var r=e(3897).TypeError;t.exports=function(t){if(null==t)throw r("Can't call method on "+t);return t}},8807:function(t,n,e){var r=e(3897),o=Object.defineProperty;t.exports=function(t,n){try{o(r,t,{value:n,configurable:!0,writable:!0})}catch(e){r[t]=n}return n}},9195:function(t,n,e){var r=e(6901),o=e(4804),i=r("keys");t.exports=function(t){return i[t]||(i[t]=o(t))}},974:function(t,n,e){var r=e(3897),o=e(8807),i="__core-js_shared__",c=r[i]||o(i,{});t.exports=c},6901:function(t,n,e){var r=e(7605),o=e(974);(t.exports=function(t,n){return o[t]||(o[t]=void 0!==n?n:{})})("versions",[]).push({version:"3.20.2",mode:r?"pure":"global",copyright:"© 2022 Denis Pushkarev (zloirock.ru)"})},889:function(t,n,e){var r=e(9143),o=Math.max,i=Math.min;t.exports=function(t,n){var e=r(t);return e<0?o(e+n,0):i(e,n)}},1530:function(t,n,e){var r=e(4328),o=e(7777);t.exports=function(t){return r(o(t))}},9143:function(t){var n=Math.ceil,e=Math.floor;t.exports=function(t){var r=+t;return r!=r||0===r?0:(r>0?e:n)(r)}},1470:function(t,n,e){var r=e(9143),o=Math.min;t.exports=function(t){return t>0?o(r(t),9007199254740991):0}},6562:function(t,n,e){var r=e(3897),o=e(7777),i=r.Object;t.exports=function(t){return i(o(t))}},8085:function(t,n,e){var r=e(3897),o=e(3694),i=e(6654),c=e(491),u=e(9948),a=e(2863),f=e(3606),s=r.TypeError,l=f("toPrimitive");t.exports=function(t,n){if(!i(t)||c(t))return t;var e,r=u(t,l);if(r){if(void 0===n&&(n="default"),e=o(r,t,n),!i(e)||c(e))return e;throw s("Can't convert object to primitive value")}return void 0===n&&(n="number"),a(t,n)}},6543:function(t,n,e){var r=e(8085),o=e(491);t.exports=function(t){var n=r(t,"string");return o(n)?n:n+""}},3371:function(t,n,e){var r=e(3897).String;t.exports=function(t){try{return r(t)}catch(t){return"Object"}}},4804:function(t,n,e){var r=e(6352),o=0,i=Math.random(),c=r(1..toString);t.exports=function(t){return"Symbol("+(void 0===t?"":t)+")_"+c(++o+i,36)}},7093:function(t,n,e){var r=e(3144);t.exports=r&&!Symbol.sham&&"symbol"==typeof Symbol.iterator},8651:function(t,n,e){var r=e(2891),o=e(7864);t.exports=r&&o((function(){return 42!=Object.defineProperty((function(){}),"prototype",{value:42,writable:!1}).prototype}))},3606:function(t,n,e){var r=e(3897),o=e(6901),i=e(9006),c=e(4804),u=e(3144),a=e(7093),f=o("wks"),s=r.Symbol,l=s&&s.for,p=a?s:s&&s.withoutSetter||c;t.exports=function(t){if(!i(f,t)||!u&&"string"!=typeof f[t]){var n="Symbol."+t;u&&i(s,t)?f[t]=s[t]:f[t]=a&&l?l(n):p(n)}return f[t]}},3584:function(t,n,e){var r=e(9069),o=e(7794),i=e(6108);r({target:"Array",proto:!0},{fill:o}),i("fill")}},n={};function e(r){var o=n[r];if(void 0!==o)return o.exports;var i=n[r]={exports:{}};return t[r](i,i.exports,e),i.exports}e.n=function(t){var n=t&&t.__esModule?function(){return t.default}:function(){return t};return e.d(n,{a:n}),n},e.d=function(t,n){for(var r in n)e.o(n,r)&&!e.o(t,r)&&Object.defineProperty(t,r,{enumerable:!0,get:n[r]})},e.g=function(){if("object"==typeof globalThis)return globalThis;try{return this||new Function("return this")()}catch(t){if("object"==typeof window)return window}}(),e.o=function(t,n){return Object.prototype.hasOwnProperty.call(t,n)},function(){"use strict";e(3584);var t=[{distance:0,transition:0,textID:"dance",circleID:"color1",media:!1},{distance:50,transition:.33,textID:"let-go",circleID:"color2",media:!1},{distance:110,transition:.73,textID:"blind-less",circleID:"color3",media:!1},{distance:180,transition:1.19,textID:"click_1",circleID:"color4",media:!1},{distance:245,transition:1.63,textID:"time_of",circleID:"color5",media:!1},{distance:295,transition:1.95,textID:"roller-coaster",circleID:"color6",media:!1},{distance:365,transition:2.41,textID:"flash-back",circleID:"color7",media:!1},{distance:450,transition:2.98,textID:"click_2",circleID:"color8",media:!1},{distance:550,transition:3.64,textID:"blame_yourself",circleID:"color9",media:!1},{distance:720,transition:4.76,textID:"you_there",circleID:"color10",media:!1},{distance:1240,transition:8.2,textID:"ocean_blue",circleID:"color11",media:!1}];window.onload=function(){var n=document.querySelector("#top_line"),e=(document.querySelectorAll(".play-music"),-1),r=0;function o(n,r,o){n.getElementsByClassName("play")[0].style.display=o?"none":"block",n.getElementsByClassName("pause")[0].style.display=o?"block":"none",t[r].media=o,e=r}window.unlocked=function(i){if(!(i<=0)){for(var c=t[i-1],u=function(n){var i=t[n],c=document.getElementById(i.textID),u=document.getElementById(i.circleID);c.style.transition="all .5s ease ".concat(i.transition-(n>9?1:0),"s"),c.style.opacity="1",u.style.transition="all .5s ease ".concat(i.transition-(n>9?1:0),"s"),u.style.fill="url(#color_line)",u.style.opacity="1",c.addEventListener("click",(function(t){(new Date).getTime()-r>3e3?(r=(new Date).getTime(),i.media?(o(c,n,!1),danceConfig.stop(n)):(e>-1&&complete(),o(c,n,!0),danceConfig.play(n))):danceConfig.later()}))},a=0;a<i;a++)u(a);n.style.transition="all ".concat(c.transition,"s"),n.style.strokeDasharray="".concat(c.distance,",3000")}},window.complete=function(){var n=e;e=-1;var r=t[n];r.media=!1;var o=document.getElementById(r.textID),i=o.getElementsByClassName("play");o.getElementsByClassName("pause")[0].style.display="none",i[0].style.display="block"}}}()}();