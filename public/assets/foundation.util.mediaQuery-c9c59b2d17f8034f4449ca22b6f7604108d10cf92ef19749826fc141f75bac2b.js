"use strict";!function(e){function t(e){var t={};return"string"!=typeof e?t:(e=e.trim().slice(1,-1))?t=e.split("&").reduce(function(e,t){var n=t.replace(/\+/g," ").split("="),r=n[0],i=n[1];return r=decodeURIComponent(r),i=i===undefined?null:decodeURIComponent(i),e.hasOwnProperty(r)?Array.isArray(e[r])?e[r].push(i):e[r]=[e[r],i]:e[r]=i,e},{}):t}var n={queries:[],current:"",_init:function(){var n,r=this,i=e(".foundation-mq").css("font-family");n=t(i);for(var a in n)n.hasOwnProperty(a)&&r.queries.push({name:a,value:"only screen and (min-width: "+n[a]+")"});this.current=this._getCurrentSize(),this._watcher()},atLeast:function(e){var t=this.get(e);return!!t&&window.matchMedia(t).matches},is:function(e){return e=e.trim().split(" "),e.length>1&&"only"===e[1]?e[0]===this._getCurrentSize():this.atLeast(e[0])},get:function(e){for(var t in this.queries)if(this.queries.hasOwnProperty(t)){var n=this.queries[t];if(e===n.name)return n.value}return null},_getCurrentSize:function(){for(var e,t=0;t<this.queries.length;t++){var n=this.queries[t];window.matchMedia(n.value).matches&&(e=n)}return"object"==typeof e?e.name:e},_watcher:function(){var t=this;e(window).on("resize.zf.mediaquery",function(){var n=t._getCurrentSize(),r=t.current;n!==r&&(t.current=n,e(window).trigger("changed.zf.mediaquery",[n,r]))})}};Foundation.MediaQuery=n,window.matchMedia||(window.matchMedia=function(){var e=window.styleMedia||window.media;if(!e){var t=document.createElement("style"),n=document.getElementsByTagName("script")[0],r=null;t.type="text/css",t.id="matchmediajs-test",n&&n.parentNode&&n.parentNode.insertBefore(t,n),r="getComputedStyle"in window&&window.getComputedStyle(t,null)||t.currentStyle,e={matchMedium:function(e){var n="@media "+e+"{ #matchmediajs-test { width: 1px; } }";return t.styleSheet?t.styleSheet.cssText=n:t.textContent=n,"1px"===r.width}}}return function(t){return{matches:e.matchMedium(t||"all"),media:t||"all"}}}()),Foundation.MediaQuery=n}(jQuery);