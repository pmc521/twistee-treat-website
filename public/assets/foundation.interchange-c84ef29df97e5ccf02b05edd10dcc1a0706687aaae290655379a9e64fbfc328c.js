"use strict";function _classCallCheck(e,n){if(!(e instanceof n))throw new TypeError("Cannot call a class as a function")}var _createClass=function(){function e(e,n){for(var t=0;t<n.length;t++){var i=n[t];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(e,i.key,i)}}return function(n,t,i){return t&&e(n.prototype,t),i&&e(n,i),n}}();!function(e){var n=function(){function n(t,i){_classCallCheck(this,n),this.$element=t,this.options=e.extend({},n.defaults,i),this.rules=[],this.currentPath="",this._init(),this._events(),Foundation.registerPlugin(this,"Interchange")}return _createClass(n,[{key:"_init",value:function(){this._addBreakpoints(),this._generateRules(),this._reflow()}},{key:"_events",value:function(){var n=this;e(window).on("resize.zf.interchange",Foundation.util.throttle(function(){n._reflow()},50))}},{key:"_reflow",value:function(){var e;for(var n in this.rules)if(this.rules.hasOwnProperty(n)){var t=this.rules[n];window.matchMedia(t.query).matches&&(e=t)}e&&this.replace(e.path)}},{key:"_addBreakpoints",value:function(){for(var e in Foundation.MediaQuery.queries)if(Foundation.MediaQuery.queries.hasOwnProperty(e)){var t=Foundation.MediaQuery.queries[e];n.SPECIAL_QUERIES[t.name]=t.value}}},{key:"_generateRules",value:function(){var e,t=[];e=this.options.rules?this.options.rules:this.$element.data("interchange"),e="string"==typeof e?e.match(/\[.*?\]/g):e;for(var i in e)if(e.hasOwnProperty(i)){var r=e[i].slice(1,-1).split(", "),a=r.slice(0,-1).join(""),o=r[r.length-1];n.SPECIAL_QUERIES[o]&&(o=n.SPECIAL_QUERIES[o]),t.push({path:a,query:o})}this.rules=t}},{key:"replace",value:function(n){if(this.currentPath!==n){var t=this,i="replaced.zf.interchange";"IMG"===this.$element[0].nodeName?this.$element.attr("src",n).on("load",function(){t.currentPath=n}).trigger(i):n.match(/\.(gif|jpg|jpeg|png|svg|tiff)([?#].*)?/i)?this.$element.css({"background-image":"url("+n+")"}).trigger(i):e.get(n,function(r){t.$element.html(r).trigger(i),e(r).foundation(),t.currentPath=n})}}},{key:"destroy",value:function(){}}]),n}();n.defaults={rules:null},n.SPECIAL_QUERIES={landscape:"screen and (orientation: landscape)",portrait:"screen and (orientation: portrait)",retina:"only screen and (-webkit-min-device-pixel-ratio: 2), only screen and (min--moz-device-pixel-ratio: 2), only screen and (-o-min-device-pixel-ratio: 2/1), only screen and (min-device-pixel-ratio: 2), only screen and (min-resolution: 192dpi), only screen and (min-resolution: 2dppx)"},Foundation.plugin(n,"Interchange")}(jQuery);