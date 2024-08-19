/******/ (() => { // webpackBootstrap
/******/ 	"use strict";
/******/ 	var __webpack_modules__ = ({

/***/ "./src/js/modules/passive-event-listeners.js":
/*!***************************************************!*\
  !*** ./src/js/modules/passive-event-listeners.js ***!
  \***************************************************/
/***/ ((__unused_webpack___webpack_module__, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
jQuery.event.special.touchstart = {
  setup: function setup(_, ns, handle) {
    this.addEventListener("touchstart", handle, {
      passive: !ns.includes("noPreventDefault")
    });
  }
};
jQuery.event.special.touchmove = {
  setup: function setup(_, ns, handle) {
    this.addEventListener("touchmove", handle, {
      passive: !ns.includes("noPreventDefault")
    });
  }
};
jQuery.event.special.wheel = {
  setup: function setup(_, ns, handle) {
    this.addEventListener("wheel", handle, {
      passive: true
    });
  }
};
jQuery.event.special.mousewheel = {
  setup: function setup(_, ns, handle) {
    this.addEventListener("mousewheel", handle, {
      passive: true
    });
  }
};

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/make namespace object */
/******/ 	(() => {
/******/ 		// define __esModule on exports
/******/ 		__webpack_require__.r = (exports) => {
/******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 			}
/******/ 			Object.defineProperty(exports, '__esModule', { value: true });
/******/ 		};
/******/ 	})();
/******/ 	
/************************************************************************/
var __webpack_exports__ = {};
// This entry need to be wrapped in an IIFE because it need to be isolated against other modules in the chunk.
(() => {
/*!******************************!*\
  !*** ./src/js/above-fold.js ***!
  \******************************/
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _modules_passive_event_listeners_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./modules/passive-event-listeners.js */ "./src/js/modules/passive-event-listeners.js");

})();

/******/ })()
;
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYWJvdmUtZm9sZC5qcyIsIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7OztBQUFBQSxNQUFNLENBQUNDLEtBQUssQ0FBQ0MsT0FBTyxDQUFDQyxVQUFVLEdBQUc7RUFDakNDLEtBQUssRUFBRSxTQUFBQSxNQUFVQyxDQUFDLEVBQUVDLEVBQUUsRUFBRUMsTUFBTSxFQUFFO0lBQy9CLElBQUksQ0FBQ0MsZ0JBQWdCLENBQUMsWUFBWSxFQUFFRCxNQUFNLEVBQUU7TUFBRUUsT0FBTyxFQUFFLENBQUNILEVBQUUsQ0FBQ0ksUUFBUSxDQUFDLGtCQUFrQjtJQUFFLENBQUMsQ0FBQztFQUMzRjtBQUNELENBQUM7QUFDRFYsTUFBTSxDQUFDQyxLQUFLLENBQUNDLE9BQU8sQ0FBQ1MsU0FBUyxHQUFHO0VBQ2hDUCxLQUFLLEVBQUUsU0FBQUEsTUFBVUMsQ0FBQyxFQUFFQyxFQUFFLEVBQUVDLE1BQU0sRUFBRTtJQUMvQixJQUFJLENBQUNDLGdCQUFnQixDQUFDLFdBQVcsRUFBRUQsTUFBTSxFQUFFO01BQUVFLE9BQU8sRUFBRSxDQUFDSCxFQUFFLENBQUNJLFFBQVEsQ0FBQyxrQkFBa0I7SUFBRSxDQUFDLENBQUM7RUFDMUY7QUFDRCxDQUFDO0FBQ0RWLE1BQU0sQ0FBQ0MsS0FBSyxDQUFDQyxPQUFPLENBQUNVLEtBQUssR0FBRztFQUM1QlIsS0FBSyxFQUFFLFNBQUFBLE1BQVVDLENBQUMsRUFBRUMsRUFBRSxFQUFFQyxNQUFNLEVBQUU7SUFDL0IsSUFBSSxDQUFDQyxnQkFBZ0IsQ0FBQyxPQUFPLEVBQUVELE1BQU0sRUFBRTtNQUFFRSxPQUFPLEVBQUU7SUFBSyxDQUFDLENBQUM7RUFDMUQ7QUFDRCxDQUFDO0FBQ0RULE1BQU0sQ0FBQ0MsS0FBSyxDQUFDQyxPQUFPLENBQUNXLFVBQVUsR0FBRztFQUNqQ1QsS0FBSyxFQUFFLFNBQUFBLE1BQVVDLENBQUMsRUFBRUMsRUFBRSxFQUFFQyxNQUFNLEVBQUU7SUFDL0IsSUFBSSxDQUFDQyxnQkFBZ0IsQ0FBQyxZQUFZLEVBQUVELE1BQU0sRUFBRTtNQUFFRSxPQUFPLEVBQUU7SUFBSyxDQUFDLENBQUM7RUFDL0Q7QUFDRCxDQUFDOzs7Ozs7VUNuQkQ7VUFDQTs7VUFFQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTs7VUFFQTtVQUNBOztVQUVBO1VBQ0E7VUFDQTs7Ozs7V0N0QkE7V0FDQTtXQUNBO1dBQ0EsdURBQXVELGlCQUFpQjtXQUN4RTtXQUNBLGdEQUFnRCxhQUFhO1dBQzdEIiwic291cmNlcyI6WyJ3ZWJwYWNrOi8vZWxldmF0ZXgvLi9zcmMvanMvbW9kdWxlcy9wYXNzaXZlLWV2ZW50LWxpc3RlbmVycy5qcyIsIndlYnBhY2s6Ly9lbGV2YXRleC93ZWJwYWNrL2Jvb3RzdHJhcCIsIndlYnBhY2s6Ly9lbGV2YXRleC93ZWJwYWNrL3J1bnRpbWUvbWFrZSBuYW1lc3BhY2Ugb2JqZWN0Iiwid2VicGFjazovL2VsZXZhdGV4Ly4vc3JjL2pzL2Fib3ZlLWZvbGQuanMiXSwic291cmNlc0NvbnRlbnQiOlsialF1ZXJ5LmV2ZW50LnNwZWNpYWwudG91Y2hzdGFydCA9IHtcclxuXHRzZXR1cDogZnVuY3Rpb24gKF8sIG5zLCBoYW5kbGUpIHtcclxuXHRcdHRoaXMuYWRkRXZlbnRMaXN0ZW5lcihcInRvdWNoc3RhcnRcIiwgaGFuZGxlLCB7IHBhc3NpdmU6ICFucy5pbmNsdWRlcyhcIm5vUHJldmVudERlZmF1bHRcIikgfSk7XHJcblx0fVxyXG59O1xyXG5qUXVlcnkuZXZlbnQuc3BlY2lhbC50b3VjaG1vdmUgPSB7XHJcblx0c2V0dXA6IGZ1bmN0aW9uIChfLCBucywgaGFuZGxlKSB7XHJcblx0XHR0aGlzLmFkZEV2ZW50TGlzdGVuZXIoXCJ0b3VjaG1vdmVcIiwgaGFuZGxlLCB7IHBhc3NpdmU6ICFucy5pbmNsdWRlcyhcIm5vUHJldmVudERlZmF1bHRcIikgfSk7XHJcblx0fVxyXG59O1xyXG5qUXVlcnkuZXZlbnQuc3BlY2lhbC53aGVlbCA9IHtcclxuXHRzZXR1cDogZnVuY3Rpb24gKF8sIG5zLCBoYW5kbGUpIHtcclxuXHRcdHRoaXMuYWRkRXZlbnRMaXN0ZW5lcihcIndoZWVsXCIsIGhhbmRsZSwgeyBwYXNzaXZlOiB0cnVlIH0pO1xyXG5cdH1cclxufTtcclxualF1ZXJ5LmV2ZW50LnNwZWNpYWwubW91c2V3aGVlbCA9IHtcclxuXHRzZXR1cDogZnVuY3Rpb24gKF8sIG5zLCBoYW5kbGUpIHtcclxuXHRcdHRoaXMuYWRkRXZlbnRMaXN0ZW5lcihcIm1vdXNld2hlZWxcIiwgaGFuZGxlLCB7IHBhc3NpdmU6IHRydWUgfSk7XHJcblx0fVxyXG59O1xyXG4iLCIvLyBUaGUgbW9kdWxlIGNhY2hlXG52YXIgX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fID0ge307XG5cbi8vIFRoZSByZXF1aXJlIGZ1bmN0aW9uXG5mdW5jdGlvbiBfX3dlYnBhY2tfcmVxdWlyZV9fKG1vZHVsZUlkKSB7XG5cdC8vIENoZWNrIGlmIG1vZHVsZSBpcyBpbiBjYWNoZVxuXHR2YXIgY2FjaGVkTW9kdWxlID0gX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fW21vZHVsZUlkXTtcblx0aWYgKGNhY2hlZE1vZHVsZSAhPT0gdW5kZWZpbmVkKSB7XG5cdFx0cmV0dXJuIGNhY2hlZE1vZHVsZS5leHBvcnRzO1xuXHR9XG5cdC8vIENyZWF0ZSBhIG5ldyBtb2R1bGUgKGFuZCBwdXQgaXQgaW50byB0aGUgY2FjaGUpXG5cdHZhciBtb2R1bGUgPSBfX3dlYnBhY2tfbW9kdWxlX2NhY2hlX19bbW9kdWxlSWRdID0ge1xuXHRcdC8vIG5vIG1vZHVsZS5pZCBuZWVkZWRcblx0XHQvLyBubyBtb2R1bGUubG9hZGVkIG5lZWRlZFxuXHRcdGV4cG9ydHM6IHt9XG5cdH07XG5cblx0Ly8gRXhlY3V0ZSB0aGUgbW9kdWxlIGZ1bmN0aW9uXG5cdF9fd2VicGFja19tb2R1bGVzX19bbW9kdWxlSWRdKG1vZHVsZSwgbW9kdWxlLmV4cG9ydHMsIF9fd2VicGFja19yZXF1aXJlX18pO1xuXG5cdC8vIFJldHVybiB0aGUgZXhwb3J0cyBvZiB0aGUgbW9kdWxlXG5cdHJldHVybiBtb2R1bGUuZXhwb3J0cztcbn1cblxuIiwiLy8gZGVmaW5lIF9fZXNNb2R1bGUgb24gZXhwb3J0c1xuX193ZWJwYWNrX3JlcXVpcmVfXy5yID0gKGV4cG9ydHMpID0+IHtcblx0aWYodHlwZW9mIFN5bWJvbCAhPT0gJ3VuZGVmaW5lZCcgJiYgU3ltYm9sLnRvU3RyaW5nVGFnKSB7XG5cdFx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsIFN5bWJvbC50b1N0cmluZ1RhZywgeyB2YWx1ZTogJ01vZHVsZScgfSk7XG5cdH1cblx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsICdfX2VzTW9kdWxlJywgeyB2YWx1ZTogdHJ1ZSB9KTtcbn07IiwiaW1wb3J0ICcuL21vZHVsZXMvcGFzc2l2ZS1ldmVudC1saXN0ZW5lcnMuanMnO1xyXG4iXSwibmFtZXMiOlsialF1ZXJ5IiwiZXZlbnQiLCJzcGVjaWFsIiwidG91Y2hzdGFydCIsInNldHVwIiwiXyIsIm5zIiwiaGFuZGxlIiwiYWRkRXZlbnRMaXN0ZW5lciIsInBhc3NpdmUiLCJpbmNsdWRlcyIsInRvdWNobW92ZSIsIndoZWVsIiwibW91c2V3aGVlbCJdLCJzb3VyY2VSb290IjoiIn0=