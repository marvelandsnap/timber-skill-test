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
/*!*****************************!*\
  !*** ./src/js/accordion.js ***!
  \*****************************/
__webpack_require__.r(__webpack_exports__);
document.addEventListener('DOMContentLoaded', function () {
  var accordionHeaders = document.querySelectorAll('[data-toggle="accordion"]');
  accordionHeaders.forEach(function (header) {
    header.addEventListener('click', function () {
      var content = header.nextElementSibling;

      // Закрыть все открытые аккордеоны
      var allContents = document.querySelectorAll('.accordion__content');
      allContents.forEach(function (item) {
        if (item !== content) {
          item.classList.remove('accordion__content--active');
        }
      });

      // Переключить состояние текущего аккордеона
      content.classList.toggle('accordion__content--active');
    });
  });
});
/******/ })()
;
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYWNjb3JkaW9uLmpzIiwibWFwcGluZ3MiOiI7O1VBQUE7VUFDQTs7Ozs7V0NEQTtXQUNBO1dBQ0E7V0FDQSx1REFBdUQsaUJBQWlCO1dBQ3hFO1dBQ0EsZ0RBQWdELGFBQWE7V0FDN0Q7Ozs7Ozs7OztBQ05BQSxRQUFRLENBQUNDLGdCQUFnQixDQUFDLGtCQUFrQixFQUFFLFlBQU07RUFDNUMsSUFBTUMsZ0JBQWdCLEdBQUdGLFFBQVEsQ0FBQ0csZ0JBQWdCLENBQUMsMkJBQTJCLENBQUM7RUFFL0VELGdCQUFnQixDQUFDRSxPQUFPLENBQUMsVUFBQUMsTUFBTSxFQUFJO0lBQzNCQSxNQUFNLENBQUNKLGdCQUFnQixDQUFDLE9BQU8sRUFBRSxZQUFNO01BQ3ZDLElBQU1LLE9BQU8sR0FBR0QsTUFBTSxDQUFDRSxrQkFBa0I7O01BRXpDO01BQ0EsSUFBTUMsV0FBVyxHQUFHUixRQUFRLENBQUNHLGdCQUFnQixDQUFDLHFCQUFxQixDQUFDO01BQ3BFSyxXQUFXLENBQUNKLE9BQU8sQ0FBQyxVQUFBSyxJQUFJLEVBQUk7UUFDcEIsSUFBSUEsSUFBSSxLQUFLSCxPQUFPLEVBQUU7VUFDdEJHLElBQUksQ0FBQ0MsU0FBUyxDQUFDQyxNQUFNLENBQUMsNEJBQTRCLENBQUM7UUFDbkQ7TUFDUixDQUFDLENBQUM7O01BRUY7TUFDQUwsT0FBTyxDQUFDSSxTQUFTLENBQUNFLE1BQU0sQ0FBQyw0QkFBNEIsQ0FBQztJQUN0RCxDQUFDLENBQUM7RUFDVixDQUFDLENBQUM7QUFDVixDQUFDLENBQUMsQyIsInNvdXJjZXMiOlsid2VicGFjazovL2VsZXZhdGV4L3dlYnBhY2svYm9vdHN0cmFwIiwid2VicGFjazovL2VsZXZhdGV4L3dlYnBhY2svcnVudGltZS9tYWtlIG5hbWVzcGFjZSBvYmplY3QiLCJ3ZWJwYWNrOi8vZWxldmF0ZXgvLi9zcmMvanMvYWNjb3JkaW9uLmpzIl0sInNvdXJjZXNDb250ZW50IjpbIi8vIFRoZSByZXF1aXJlIHNjb3BlXG52YXIgX193ZWJwYWNrX3JlcXVpcmVfXyA9IHt9O1xuXG4iLCIvLyBkZWZpbmUgX19lc01vZHVsZSBvbiBleHBvcnRzXG5fX3dlYnBhY2tfcmVxdWlyZV9fLnIgPSAoZXhwb3J0cykgPT4ge1xuXHRpZih0eXBlb2YgU3ltYm9sICE9PSAndW5kZWZpbmVkJyAmJiBTeW1ib2wudG9TdHJpbmdUYWcpIHtcblx0XHRPYmplY3QuZGVmaW5lUHJvcGVydHkoZXhwb3J0cywgU3ltYm9sLnRvU3RyaW5nVGFnLCB7IHZhbHVlOiAnTW9kdWxlJyB9KTtcblx0fVxuXHRPYmplY3QuZGVmaW5lUHJvcGVydHkoZXhwb3J0cywgJ19fZXNNb2R1bGUnLCB7IHZhbHVlOiB0cnVlIH0pO1xufTsiLCJkb2N1bWVudC5hZGRFdmVudExpc3RlbmVyKCdET01Db250ZW50TG9hZGVkJywgKCkgPT4ge1xuICAgICAgICBjb25zdCBhY2NvcmRpb25IZWFkZXJzID0gZG9jdW1lbnQucXVlcnlTZWxlY3RvckFsbCgnW2RhdGEtdG9nZ2xlPVwiYWNjb3JkaW9uXCJdJyk7XG5cbiAgICAgICAgYWNjb3JkaW9uSGVhZGVycy5mb3JFYWNoKGhlYWRlciA9PiB7XG4gICAgICAgICAgICAgICAgaGVhZGVyLmFkZEV2ZW50TGlzdGVuZXIoJ2NsaWNrJywgKCkgPT4ge1xuICAgICAgICAgICAgICAgIGNvbnN0IGNvbnRlbnQgPSBoZWFkZXIubmV4dEVsZW1lbnRTaWJsaW5nO1xuXG4gICAgICAgICAgICAgICAgLy8g0JfQsNC60YDRi9GC0Ywg0LLRgdC1INC+0YLQutGA0YvRgtGL0LUg0LDQutC60L7RgNC00LXQvtC90YtcbiAgICAgICAgICAgICAgICBjb25zdCBhbGxDb250ZW50cyA9IGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3JBbGwoJy5hY2NvcmRpb25fX2NvbnRlbnQnKTtcbiAgICAgICAgICAgICAgICBhbGxDb250ZW50cy5mb3JFYWNoKGl0ZW0gPT4ge1xuICAgICAgICAgICAgICAgICAgICAgICAgaWYgKGl0ZW0gIT09IGNvbnRlbnQpIHtcbiAgICAgICAgICAgICAgICAgICAgICAgIGl0ZW0uY2xhc3NMaXN0LnJlbW92ZSgnYWNjb3JkaW9uX19jb250ZW50LS1hY3RpdmUnKTtcbiAgICAgICAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICB9KTtcblxuICAgICAgICAgICAgICAgIC8vINCf0LXRgNC10LrQu9GO0YfQuNGC0Ywg0YHQvtGB0YLQvtGP0L3QuNC1INGC0LXQutGD0YnQtdCz0L4g0LDQutC60L7RgNC00LXQvtC90LBcbiAgICAgICAgICAgICAgICBjb250ZW50LmNsYXNzTGlzdC50b2dnbGUoJ2FjY29yZGlvbl9fY29udGVudC0tYWN0aXZlJyk7XG4gICAgICAgICAgICAgICAgfSk7XG4gICAgICAgIH0pO1xufSk7XG4gICAgICAgICAgICAiXSwibmFtZXMiOlsiZG9jdW1lbnQiLCJhZGRFdmVudExpc3RlbmVyIiwiYWNjb3JkaW9uSGVhZGVycyIsInF1ZXJ5U2VsZWN0b3JBbGwiLCJmb3JFYWNoIiwiaGVhZGVyIiwiY29udGVudCIsIm5leHRFbGVtZW50U2libGluZyIsImFsbENvbnRlbnRzIiwiaXRlbSIsImNsYXNzTGlzdCIsInJlbW92ZSIsInRvZ2dsZSJdLCJzb3VyY2VSb290IjoiIn0=