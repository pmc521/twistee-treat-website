"use strict";!function(e){function n(e){var n={};for(var t in e)n[e[t]]=e[t];return n}var t={9:"TAB",13:"ENTER",27:"ESCAPE",32:"SPACE",37:"ARROW_LEFT",38:"ARROW_UP",39:"ARROW_RIGHT",40:"ARROW_DOWN"},o={},r={keys:n(t),parseKey:function(e){var n=t[e.which||e.keyCode]||String.fromCharCode(e.which).toUpperCase();return n=n.replace(/\W+/,""),e.shiftKey&&(n="SHIFT_"+n),e.ctrlKey&&(n="CTRL_"+n),e.altKey&&(n="ALT_"+n),n=n.replace(/_$/,"")},handleKey:function(n,t,r){var a,i,d,f=o[t],u=this.parseKey(n);if(!f)return console.warn("Component not defined!");if(a="undefined"==typeof f.ltr?f:Foundation.rtl()?e.extend({},f.ltr,f.rtl):e.extend({},f.rtl,f.ltr),i=a[u],(d=r[i])&&"function"==typeof d){var l=d.apply();(r.handled||"function"==typeof r.handled)&&r.handled(l)}else(r.unhandled||"function"==typeof r.unhandled)&&r.unhandled()},findFocusable:function(n){return!!n&&n.find("a[href], area[href], input:not([disabled]), select:not([disabled]), textarea:not([disabled]), button:not([disabled]), iframe, object, embed, *[tabindex], *[contenteditable]").filter(function(){return!(!e(this).is(":visible")||e(this).attr("tabindex")<0)})},register:function(e,n){o[e]=n},trapFocus:function(e){var n=Foundation.Keyboard.findFocusable(e),t=n.eq(0),o=n.eq(-1);e.on("keydown.zf.trapfocus",function(e){e.target===o[0]&&"TAB"===Foundation.Keyboard.parseKey(e)?(e.preventDefault(),t.focus()):e.target===t[0]&&"SHIFT_TAB"===Foundation.Keyboard.parseKey(e)&&(e.preventDefault(),o.focus())})},releaseFocus:function(e){e.off("keydown.zf.trapfocus")}};Foundation.Keyboard=r}(jQuery);