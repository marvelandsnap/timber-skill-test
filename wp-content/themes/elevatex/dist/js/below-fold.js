/******/ (() => { // webpackBootstrap
/******/ 	"use strict";
/******/ 	// The require scope
/******/ 	var __webpack_require__ = {};
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
/*!******************************!*\
  !*** ./src/js/below-fold.js ***!
  \******************************/
__webpack_require__.r(__webpack_exports__);
// I intentionally didn't create a separate JS file for the accordion logic. Outside of a learning context, I would have used an existing accordion, such as from the Bootstrap library. Also, I wasn't sure exactly what you would prefer as a solution, so I opted for vanilla JS, as it seemed like the most neutral choice. If needed, I can write the accordion using jQuery or TypeScript.

// Accordion logic
document.addEventListener('DOMContentLoaded', function () {
  var accordionHeaders = document.querySelectorAll('[data-toggle="accordion"]');
  accordionHeaders.forEach(function (header) {
    header.addEventListener('click', function () {
      var targetContentId = header.getAttribute('data-target');
      var targetContent = document.getElementById(targetContentId);
      accordionHeaders.forEach(function (header) {
        header.classList.remove('accordion__header--active');
      });
      header.classList.add('accordion__header--active');
      var allContents = document.querySelectorAll('.accordion__content');
      allContents.forEach(function (content) {
        content.classList.remove('accordion__content--active');
      });
      targetContent.classList.add('accordion__content--active');
    });
  });
});
/******/ })()
;
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYmVsb3ctZm9sZC5qcyIsIm1hcHBpbmdzIjoiOztVQUFBO1VBQ0E7Ozs7O1dDREE7V0FDQTtXQUNBO1dBQ0EsdURBQXVELGlCQUFpQjtXQUN4RTtXQUNBLGdEQUFnRCxhQUFhO1dBQzdEOzs7Ozs7Ozs7QUNOQTs7QUFFQTtBQUNBQSxRQUFRLENBQUNDLGdCQUFnQixDQUFDLGtCQUFrQixFQUFFLFlBQU07RUFDaEQsSUFBTUMsZ0JBQWdCLEdBQUdGLFFBQVEsQ0FBQ0csZ0JBQWdCLENBQUMsMkJBQTJCLENBQUM7RUFFL0VELGdCQUFnQixDQUFDRSxPQUFPLENBQUMsVUFBQUMsTUFBTSxFQUFJO0lBQy9CQSxNQUFNLENBQUNKLGdCQUFnQixDQUFDLE9BQU8sRUFBRSxZQUFNO01BQ25DLElBQU1LLGVBQWUsR0FBR0QsTUFBTSxDQUFDRSxZQUFZLENBQUMsYUFBYSxDQUFDO01BQzFELElBQU1DLGFBQWEsR0FBR1IsUUFBUSxDQUFDUyxjQUFjLENBQUNILGVBQWUsQ0FBQztNQUU5REosZ0JBQWdCLENBQUNFLE9BQU8sQ0FBQyxVQUFBQyxNQUFNLEVBQUk7UUFDL0JBLE1BQU0sQ0FBQ0ssU0FBUyxDQUFDQyxNQUFNLENBQUMsMkJBQTJCLENBQUM7TUFDeEQsQ0FBQyxDQUFDO01BRUZOLE1BQU0sQ0FBQ0ssU0FBUyxDQUFDRSxHQUFHLENBQUMsMkJBQTJCLENBQUM7TUFFakQsSUFBTUMsV0FBVyxHQUFHYixRQUFRLENBQUNHLGdCQUFnQixDQUFDLHFCQUFxQixDQUFDO01BQ3BFVSxXQUFXLENBQUNULE9BQU8sQ0FBQyxVQUFBVSxPQUFPLEVBQUk7UUFDM0JBLE9BQU8sQ0FBQ0osU0FBUyxDQUFDQyxNQUFNLENBQUMsNEJBQTRCLENBQUM7TUFDMUQsQ0FBQyxDQUFDO01BRUZILGFBQWEsQ0FBQ0UsU0FBUyxDQUFDRSxHQUFHLENBQUMsNEJBQTRCLENBQUM7SUFDN0QsQ0FBQyxDQUFDO0VBQ04sQ0FBQyxDQUFDO0FBQ04sQ0FBQyxDQUFDLEMiLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9lbGV2YXRleC93ZWJwYWNrL2Jvb3RzdHJhcCIsIndlYnBhY2s6Ly9lbGV2YXRleC93ZWJwYWNrL3J1bnRpbWUvbWFrZSBuYW1lc3BhY2Ugb2JqZWN0Iiwid2VicGFjazovL2VsZXZhdGV4Ly4vc3JjL2pzL2JlbG93LWZvbGQuanMiXSwic291cmNlc0NvbnRlbnQiOlsiLy8gVGhlIHJlcXVpcmUgc2NvcGVcbnZhciBfX3dlYnBhY2tfcmVxdWlyZV9fID0ge307XG5cbiIsIi8vIGRlZmluZSBfX2VzTW9kdWxlIG9uIGV4cG9ydHNcbl9fd2VicGFja19yZXF1aXJlX18uciA9IChleHBvcnRzKSA9PiB7XG5cdGlmKHR5cGVvZiBTeW1ib2wgIT09ICd1bmRlZmluZWQnICYmIFN5bWJvbC50b1N0cmluZ1RhZykge1xuXHRcdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCBTeW1ib2wudG9TdHJpbmdUYWcsIHsgdmFsdWU6ICdNb2R1bGUnIH0pO1xuXHR9XG5cdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCAnX19lc01vZHVsZScsIHsgdmFsdWU6IHRydWUgfSk7XG59OyIsIi8vIEkgaW50ZW50aW9uYWxseSBkaWRuJ3QgY3JlYXRlIGEgc2VwYXJhdGUgSlMgZmlsZSBmb3IgdGhlIGFjY29yZGlvbiBsb2dpYy4gT3V0c2lkZSBvZiBhIGxlYXJuaW5nIGNvbnRleHQsIEkgd291bGQgaGF2ZSB1c2VkIGFuIGV4aXN0aW5nIGFjY29yZGlvbiwgc3VjaCBhcyBmcm9tIHRoZSBCb290c3RyYXAgbGlicmFyeS4gQWxzbywgSSB3YXNuJ3Qgc3VyZSBleGFjdGx5IHdoYXQgeW91IHdvdWxkIHByZWZlciBhcyBhIHNvbHV0aW9uLCBzbyBJIG9wdGVkIGZvciB2YW5pbGxhIEpTLCBhcyBpdCBzZWVtZWQgbGlrZSB0aGUgbW9zdCBuZXV0cmFsIGNob2ljZS4gSWYgbmVlZGVkLCBJIGNhbiB3cml0ZSB0aGUgYWNjb3JkaW9uIHVzaW5nIGpRdWVyeSBvciBUeXBlU2NyaXB0LlxuXG4vLyBBY2NvcmRpb24gbG9naWNcbmRvY3VtZW50LmFkZEV2ZW50TGlzdGVuZXIoJ0RPTUNvbnRlbnRMb2FkZWQnLCAoKSA9PiB7XG4gICAgY29uc3QgYWNjb3JkaW9uSGVhZGVycyA9IGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3JBbGwoJ1tkYXRhLXRvZ2dsZT1cImFjY29yZGlvblwiXScpO1xuXG4gICAgYWNjb3JkaW9uSGVhZGVycy5mb3JFYWNoKGhlYWRlciA9PiB7XG4gICAgICAgIGhlYWRlci5hZGRFdmVudExpc3RlbmVyKCdjbGljaycsICgpID0+IHtcbiAgICAgICAgICAgIGNvbnN0IHRhcmdldENvbnRlbnRJZCA9IGhlYWRlci5nZXRBdHRyaWJ1dGUoJ2RhdGEtdGFyZ2V0Jyk7XG4gICAgICAgICAgICBjb25zdCB0YXJnZXRDb250ZW50ID0gZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQodGFyZ2V0Q29udGVudElkKTtcblxuICAgICAgICAgICAgYWNjb3JkaW9uSGVhZGVycy5mb3JFYWNoKGhlYWRlciA9PiB7XG4gICAgICAgICAgICAgICAgaGVhZGVyLmNsYXNzTGlzdC5yZW1vdmUoJ2FjY29yZGlvbl9faGVhZGVyLS1hY3RpdmUnKTtcbiAgICAgICAgICAgIH0pO1xuXG4gICAgICAgICAgICBoZWFkZXIuY2xhc3NMaXN0LmFkZCgnYWNjb3JkaW9uX19oZWFkZXItLWFjdGl2ZScpO1xuXG4gICAgICAgICAgICBjb25zdCBhbGxDb250ZW50cyA9IGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3JBbGwoJy5hY2NvcmRpb25fX2NvbnRlbnQnKTtcbiAgICAgICAgICAgIGFsbENvbnRlbnRzLmZvckVhY2goY29udGVudCA9PiB7XG4gICAgICAgICAgICAgICAgY29udGVudC5jbGFzc0xpc3QucmVtb3ZlKCdhY2NvcmRpb25fX2NvbnRlbnQtLWFjdGl2ZScpO1xuICAgICAgICAgICAgfSk7XG5cbiAgICAgICAgICAgIHRhcmdldENvbnRlbnQuY2xhc3NMaXN0LmFkZCgnYWNjb3JkaW9uX19jb250ZW50LS1hY3RpdmUnKTtcbiAgICAgICAgfSk7XG4gICAgfSk7XG59KTtcbiJdLCJuYW1lcyI6WyJkb2N1bWVudCIsImFkZEV2ZW50TGlzdGVuZXIiLCJhY2NvcmRpb25IZWFkZXJzIiwicXVlcnlTZWxlY3RvckFsbCIsImZvckVhY2giLCJoZWFkZXIiLCJ0YXJnZXRDb250ZW50SWQiLCJnZXRBdHRyaWJ1dGUiLCJ0YXJnZXRDb250ZW50IiwiZ2V0RWxlbWVudEJ5SWQiLCJjbGFzc0xpc3QiLCJyZW1vdmUiLCJhZGQiLCJhbGxDb250ZW50cyIsImNvbnRlbnQiXSwic291cmNlUm9vdCI6IiJ9