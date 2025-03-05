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
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYWJvdmUtZm9sZC5qcyIsIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7OztBQUFBQSxNQUFNLENBQUNDLEtBQUssQ0FBQ0MsT0FBTyxDQUFDQyxVQUFVLEdBQUc7RUFDakNDLEtBQUssRUFBRSxTQUFBQSxNQUFVQyxDQUFDLEVBQUVDLEVBQUUsRUFBRUMsTUFBTSxFQUFFO0lBQy9CLElBQUksQ0FBQ0MsZ0JBQWdCLENBQUMsWUFBWSxFQUFFRCxNQUFNLEVBQUU7TUFBRUUsT0FBTyxFQUFFLENBQUNILEVBQUUsQ0FBQ0ksUUFBUSxDQUFDLGtCQUFrQjtJQUFFLENBQUMsQ0FBQztFQUMzRjtBQUNELENBQUM7QUFDRFYsTUFBTSxDQUFDQyxLQUFLLENBQUNDLE9BQU8sQ0FBQ1MsU0FBUyxHQUFHO0VBQ2hDUCxLQUFLLEVBQUUsU0FBQUEsTUFBVUMsQ0FBQyxFQUFFQyxFQUFFLEVBQUVDLE1BQU0sRUFBRTtJQUMvQixJQUFJLENBQUNDLGdCQUFnQixDQUFDLFdBQVcsRUFBRUQsTUFBTSxFQUFFO01BQUVFLE9BQU8sRUFBRSxDQUFDSCxFQUFFLENBQUNJLFFBQVEsQ0FBQyxrQkFBa0I7SUFBRSxDQUFDLENBQUM7RUFDMUY7QUFDRCxDQUFDO0FBQ0RWLE1BQU0sQ0FBQ0MsS0FBSyxDQUFDQyxPQUFPLENBQUNVLEtBQUssR0FBRztFQUM1QlIsS0FBSyxFQUFFLFNBQUFBLE1BQVVDLENBQUMsRUFBRUMsRUFBRSxFQUFFQyxNQUFNLEVBQUU7SUFDL0IsSUFBSSxDQUFDQyxnQkFBZ0IsQ0FBQyxPQUFPLEVBQUVELE1BQU0sRUFBRTtNQUFFRSxPQUFPLEVBQUU7SUFBSyxDQUFDLENBQUM7RUFDMUQ7QUFDRCxDQUFDO0FBQ0RULE1BQU0sQ0FBQ0MsS0FBSyxDQUFDQyxPQUFPLENBQUNXLFVBQVUsR0FBRztFQUNqQ1QsS0FBSyxFQUFFLFNBQUFBLE1BQVVDLENBQUMsRUFBRUMsRUFBRSxFQUFFQyxNQUFNLEVBQUU7SUFDL0IsSUFBSSxDQUFDQyxnQkFBZ0IsQ0FBQyxZQUFZLEVBQUVELE1BQU0sRUFBRTtNQUFFRSxPQUFPLEVBQUU7SUFBSyxDQUFDLENBQUM7RUFDL0Q7QUFDRCxDQUFDOzs7Ozs7VUNuQkQ7VUFDQTs7VUFFQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTs7VUFFQTtVQUNBOztVQUVBO1VBQ0E7VUFDQTs7Ozs7V0N0QkE7V0FDQTtXQUNBO1dBQ0EsdURBQXVELGlCQUFpQjtXQUN4RTtXQUNBLGdEQUFnRCxhQUFhO1dBQzdEIiwic291cmNlcyI6WyJ3ZWJwYWNrOi8vZWxldmF0ZXgvLi9zcmMvanMvbW9kdWxlcy9wYXNzaXZlLWV2ZW50LWxpc3RlbmVycy5qcyIsIndlYnBhY2s6Ly9lbGV2YXRleC93ZWJwYWNrL2Jvb3RzdHJhcCIsIndlYnBhY2s6Ly9lbGV2YXRleC93ZWJwYWNrL3J1bnRpbWUvbWFrZSBuYW1lc3BhY2Ugb2JqZWN0Iiwid2VicGFjazovL2VsZXZhdGV4Ly4vc3JjL2pzL2Fib3ZlLWZvbGQuanMiXSwic291cmNlc0NvbnRlbnQiOlsialF1ZXJ5LmV2ZW50LnNwZWNpYWwudG91Y2hzdGFydCA9IHtcblx0c2V0dXA6IGZ1bmN0aW9uIChfLCBucywgaGFuZGxlKSB7XG5cdFx0dGhpcy5hZGRFdmVudExpc3RlbmVyKFwidG91Y2hzdGFydFwiLCBoYW5kbGUsIHsgcGFzc2l2ZTogIW5zLmluY2x1ZGVzKFwibm9QcmV2ZW50RGVmYXVsdFwiKSB9KTtcblx0fVxufTtcbmpRdWVyeS5ldmVudC5zcGVjaWFsLnRvdWNobW92ZSA9IHtcblx0c2V0dXA6IGZ1bmN0aW9uIChfLCBucywgaGFuZGxlKSB7XG5cdFx0dGhpcy5hZGRFdmVudExpc3RlbmVyKFwidG91Y2htb3ZlXCIsIGhhbmRsZSwgeyBwYXNzaXZlOiAhbnMuaW5jbHVkZXMoXCJub1ByZXZlbnREZWZhdWx0XCIpIH0pO1xuXHR9XG59O1xualF1ZXJ5LmV2ZW50LnNwZWNpYWwud2hlZWwgPSB7XG5cdHNldHVwOiBmdW5jdGlvbiAoXywgbnMsIGhhbmRsZSkge1xuXHRcdHRoaXMuYWRkRXZlbnRMaXN0ZW5lcihcIndoZWVsXCIsIGhhbmRsZSwgeyBwYXNzaXZlOiB0cnVlIH0pO1xuXHR9XG59O1xualF1ZXJ5LmV2ZW50LnNwZWNpYWwubW91c2V3aGVlbCA9IHtcblx0c2V0dXA6IGZ1bmN0aW9uIChfLCBucywgaGFuZGxlKSB7XG5cdFx0dGhpcy5hZGRFdmVudExpc3RlbmVyKFwibW91c2V3aGVlbFwiLCBoYW5kbGUsIHsgcGFzc2l2ZTogdHJ1ZSB9KTtcblx0fVxufTtcbiIsIi8vIFRoZSBtb2R1bGUgY2FjaGVcbnZhciBfX3dlYnBhY2tfbW9kdWxlX2NhY2hlX18gPSB7fTtcblxuLy8gVGhlIHJlcXVpcmUgZnVuY3Rpb25cbmZ1bmN0aW9uIF9fd2VicGFja19yZXF1aXJlX18obW9kdWxlSWQpIHtcblx0Ly8gQ2hlY2sgaWYgbW9kdWxlIGlzIGluIGNhY2hlXG5cdHZhciBjYWNoZWRNb2R1bGUgPSBfX3dlYnBhY2tfbW9kdWxlX2NhY2hlX19bbW9kdWxlSWRdO1xuXHRpZiAoY2FjaGVkTW9kdWxlICE9PSB1bmRlZmluZWQpIHtcblx0XHRyZXR1cm4gY2FjaGVkTW9kdWxlLmV4cG9ydHM7XG5cdH1cblx0Ly8gQ3JlYXRlIGEgbmV3IG1vZHVsZSAoYW5kIHB1dCBpdCBpbnRvIHRoZSBjYWNoZSlcblx0dmFyIG1vZHVsZSA9IF9fd2VicGFja19tb2R1bGVfY2FjaGVfX1ttb2R1bGVJZF0gPSB7XG5cdFx0Ly8gbm8gbW9kdWxlLmlkIG5lZWRlZFxuXHRcdC8vIG5vIG1vZHVsZS5sb2FkZWQgbmVlZGVkXG5cdFx0ZXhwb3J0czoge31cblx0fTtcblxuXHQvLyBFeGVjdXRlIHRoZSBtb2R1bGUgZnVuY3Rpb25cblx0X193ZWJwYWNrX21vZHVsZXNfX1ttb2R1bGVJZF0obW9kdWxlLCBtb2R1bGUuZXhwb3J0cywgX193ZWJwYWNrX3JlcXVpcmVfXyk7XG5cblx0Ly8gUmV0dXJuIHRoZSBleHBvcnRzIG9mIHRoZSBtb2R1bGVcblx0cmV0dXJuIG1vZHVsZS5leHBvcnRzO1xufVxuXG4iLCIvLyBkZWZpbmUgX19lc01vZHVsZSBvbiBleHBvcnRzXG5fX3dlYnBhY2tfcmVxdWlyZV9fLnIgPSAoZXhwb3J0cykgPT4ge1xuXHRpZih0eXBlb2YgU3ltYm9sICE9PSAndW5kZWZpbmVkJyAmJiBTeW1ib2wudG9TdHJpbmdUYWcpIHtcblx0XHRPYmplY3QuZGVmaW5lUHJvcGVydHkoZXhwb3J0cywgU3ltYm9sLnRvU3RyaW5nVGFnLCB7IHZhbHVlOiAnTW9kdWxlJyB9KTtcblx0fVxuXHRPYmplY3QuZGVmaW5lUHJvcGVydHkoZXhwb3J0cywgJ19fZXNNb2R1bGUnLCB7IHZhbHVlOiB0cnVlIH0pO1xufTsiLCJpbXBvcnQgJy4vbW9kdWxlcy9wYXNzaXZlLWV2ZW50LWxpc3RlbmVycy5qcyc7XG4iXSwibmFtZXMiOlsialF1ZXJ5IiwiZXZlbnQiLCJzcGVjaWFsIiwidG91Y2hzdGFydCIsInNldHVwIiwiXyIsIm5zIiwiaGFuZGxlIiwiYWRkRXZlbnRMaXN0ZW5lciIsInBhc3NpdmUiLCJpbmNsdWRlcyIsInRvdWNobW92ZSIsIndoZWVsIiwibW91c2V3aGVlbCJdLCJzb3VyY2VSb290IjoiIn0=