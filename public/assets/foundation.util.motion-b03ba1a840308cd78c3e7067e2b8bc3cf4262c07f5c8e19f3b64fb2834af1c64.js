"use strict";!function(n){function i(n,i,e){function t(s){r||(r=s),o=s-r,e.apply(i),o<n?a=window.requestAnimationFrame(t,i):(window.cancelAnimationFrame(a),i.trigger("finished.zf.animate",[i]).triggerHandler("finished.zf.animate",[i]))}var a,o,r=null;if(0===n)return e.apply(i),void i.trigger("finished.zf.animate",[i]).triggerHandler("finished.zf.animate",[i]);a=window.requestAnimationFrame(t)}function e(i,e,o,r){function s(){i||e.hide(),u(),r&&r.apply(e)}function u(){e[0].style.transitionDuration=0,e.removeClass(d+" "+f+" "+o)}if(e=n(e).eq(0),e.length){var d=i?t[0]:t[1],f=i?a[0]:a[1];u(),e.addClass(o).css("transition","none"),requestAnimationFrame(function(){e.addClass(d),i&&e.show()}),requestAnimationFrame(function(){e[0].offsetWidth,e.css("transition","").addClass(f)}),e.one(Foundation.transitionend(e),s)}}var t=["mui-enter","mui-leave"],a=["mui-enter-active","mui-leave-active"],o={animateIn:function(n,i,t){e(!0,n,i,t)},animateOut:function(n,i,t){e(!1,n,i,t)}};Foundation.Move=i,Foundation.Motion=o}(jQuery);