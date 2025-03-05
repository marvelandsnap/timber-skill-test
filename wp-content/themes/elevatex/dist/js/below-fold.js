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

// I added this script to render animation only when elements at least 10% visible in viewport.

// Animations logic
document.addEventListener("DOMContentLoaded", function () {
  var elements = document.querySelectorAll(".fade-in-element, .zoom-in-element, .scroll-in-left-element, .scroll-in-right-element");
  var observer = new IntersectionObserver(function (entries, observer) {
    entries.forEach(function (entry) {
      if (entry.isIntersecting) {
        entry.target.classList.add("visible");
        observer.unobserve(entry.target); // Stop observing once the animation is triggered
      }
    });
  }, {
    threshold: 0.1 // Element needs to be at least 10% visible
  });
  elements.forEach(function (element) {
    observer.observe(element);
  });
});
/******/ })()
;
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYmVsb3ctZm9sZC5qcyIsIm1hcHBpbmdzIjoiOztVQUFBO1VBQ0E7Ozs7O1dDREE7V0FDQTtXQUNBO1dBQ0EsdURBQXVELGlCQUFpQjtXQUN4RTtXQUNBLGdEQUFnRCxhQUFhO1dBQzdEOzs7Ozs7Ozs7QUNOQTs7QUFFQTtBQUNBQSxRQUFRLENBQUNDLGdCQUFnQixDQUFDLGtCQUFrQixFQUFFLFlBQU07RUFDaEQsSUFBTUMsZ0JBQWdCLEdBQUdGLFFBQVEsQ0FBQ0csZ0JBQWdCLENBQUMsMkJBQTJCLENBQUM7RUFFL0VELGdCQUFnQixDQUFDRSxPQUFPLENBQUMsVUFBQUMsTUFBTSxFQUFJO0lBQy9CQSxNQUFNLENBQUNKLGdCQUFnQixDQUFDLE9BQU8sRUFBRSxZQUFNO01BQ25DLElBQU1LLGVBQWUsR0FBR0QsTUFBTSxDQUFDRSxZQUFZLENBQUMsYUFBYSxDQUFDO01BQzFELElBQU1DLGFBQWEsR0FBR1IsUUFBUSxDQUFDUyxjQUFjLENBQUNILGVBQWUsQ0FBQztNQUU5REosZ0JBQWdCLENBQUNFLE9BQU8sQ0FBQyxVQUFBQyxNQUFNLEVBQUk7UUFDL0JBLE1BQU0sQ0FBQ0ssU0FBUyxDQUFDQyxNQUFNLENBQUMsMkJBQTJCLENBQUM7TUFDeEQsQ0FBQyxDQUFDO01BRUZOLE1BQU0sQ0FBQ0ssU0FBUyxDQUFDRSxHQUFHLENBQUMsMkJBQTJCLENBQUM7TUFFakQsSUFBTUMsV0FBVyxHQUFHYixRQUFRLENBQUNHLGdCQUFnQixDQUFDLHFCQUFxQixDQUFDO01BQ3BFVSxXQUFXLENBQUNULE9BQU8sQ0FBQyxVQUFBVSxPQUFPLEVBQUk7UUFDM0JBLE9BQU8sQ0FBQ0osU0FBUyxDQUFDQyxNQUFNLENBQUMsNEJBQTRCLENBQUM7TUFDMUQsQ0FBQyxDQUFDO01BRUZILGFBQWEsQ0FBQ0UsU0FBUyxDQUFDRSxHQUFHLENBQUMsNEJBQTRCLENBQUM7SUFDN0QsQ0FBQyxDQUFDO0VBQ04sQ0FBQyxDQUFDO0FBQ04sQ0FBQyxDQUFDOztBQUVGOztBQUVBO0FBQ0FaLFFBQVEsQ0FBQ0MsZ0JBQWdCLENBQUMsa0JBQWtCLEVBQUUsWUFBWTtFQUN0RCxJQUFNYyxRQUFRLEdBQUdmLFFBQVEsQ0FBQ0csZ0JBQWdCLENBQ3hDLHVGQUNGLENBQUM7RUFFRCxJQUFNYSxRQUFRLEdBQUcsSUFBSUMsb0JBQW9CLENBQ3ZDLFVBQUNDLE9BQU8sRUFBRUYsUUFBUSxFQUFLO0lBQ3JCRSxPQUFPLENBQUNkLE9BQU8sQ0FBQyxVQUFBZSxLQUFLLEVBQUk7TUFDdkIsSUFBSUEsS0FBSyxDQUFDQyxjQUFjLEVBQUU7UUFDeEJELEtBQUssQ0FBQ0UsTUFBTSxDQUFDWCxTQUFTLENBQUNFLEdBQUcsQ0FBQyxTQUFTLENBQUM7UUFDckNJLFFBQVEsQ0FBQ00sU0FBUyxDQUFDSCxLQUFLLENBQUNFLE1BQU0sQ0FBQyxDQUFDLENBQUM7TUFDcEM7SUFDRixDQUFDLENBQUM7RUFDSixDQUFDLEVBQ0Q7SUFDRUUsU0FBUyxFQUFFLEdBQUcsQ0FBRTtFQUNsQixDQUNGLENBQUM7RUFFRFIsUUFBUSxDQUFDWCxPQUFPLENBQUMsVUFBQW9CLE9BQU8sRUFBSTtJQUMxQlIsUUFBUSxDQUFDUyxPQUFPLENBQUNELE9BQU8sQ0FBQztFQUMzQixDQUFDLENBQUM7QUFDSixDQUFDLENBQUMsQyIsInNvdXJjZXMiOlsid2VicGFjazovL2VsZXZhdGV4L3dlYnBhY2svYm9vdHN0cmFwIiwid2VicGFjazovL2VsZXZhdGV4L3dlYnBhY2svcnVudGltZS9tYWtlIG5hbWVzcGFjZSBvYmplY3QiLCJ3ZWJwYWNrOi8vZWxldmF0ZXgvLi9zcmMvanMvYmVsb3ctZm9sZC5qcyJdLCJzb3VyY2VzQ29udGVudCI6WyIvLyBUaGUgcmVxdWlyZSBzY29wZVxudmFyIF9fd2VicGFja19yZXF1aXJlX18gPSB7fTtcblxuIiwiLy8gZGVmaW5lIF9fZXNNb2R1bGUgb24gZXhwb3J0c1xuX193ZWJwYWNrX3JlcXVpcmVfXy5yID0gKGV4cG9ydHMpID0+IHtcblx0aWYodHlwZW9mIFN5bWJvbCAhPT0gJ3VuZGVmaW5lZCcgJiYgU3ltYm9sLnRvU3RyaW5nVGFnKSB7XG5cdFx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsIFN5bWJvbC50b1N0cmluZ1RhZywgeyB2YWx1ZTogJ01vZHVsZScgfSk7XG5cdH1cblx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsICdfX2VzTW9kdWxlJywgeyB2YWx1ZTogdHJ1ZSB9KTtcbn07IiwiLy8gSSBpbnRlbnRpb25hbGx5IGRpZG4ndCBjcmVhdGUgYSBzZXBhcmF0ZSBKUyBmaWxlIGZvciB0aGUgYWNjb3JkaW9uIGxvZ2ljLiBPdXRzaWRlIG9mIGEgbGVhcm5pbmcgY29udGV4dCwgSSB3b3VsZCBoYXZlIHVzZWQgYW4gZXhpc3RpbmcgYWNjb3JkaW9uLCBzdWNoIGFzIGZyb20gdGhlIEJvb3RzdHJhcCBsaWJyYXJ5LiBBbHNvLCBJIHdhc24ndCBzdXJlIGV4YWN0bHkgd2hhdCB5b3Ugd291bGQgcHJlZmVyIGFzIGEgc29sdXRpb24sIHNvIEkgb3B0ZWQgZm9yIHZhbmlsbGEgSlMsIGFzIGl0IHNlZW1lZCBsaWtlIHRoZSBtb3N0IG5ldXRyYWwgY2hvaWNlLiBJZiBuZWVkZWQsIEkgY2FuIHdyaXRlIHRoZSBhY2NvcmRpb24gdXNpbmcgalF1ZXJ5IG9yIFR5cGVTY3JpcHQuXG5cbi8vIEFjY29yZGlvbiBsb2dpY1xuZG9jdW1lbnQuYWRkRXZlbnRMaXN0ZW5lcignRE9NQ29udGVudExvYWRlZCcsICgpID0+IHtcbiAgICBjb25zdCBhY2NvcmRpb25IZWFkZXJzID0gZG9jdW1lbnQucXVlcnlTZWxlY3RvckFsbCgnW2RhdGEtdG9nZ2xlPVwiYWNjb3JkaW9uXCJdJyk7XG5cbiAgICBhY2NvcmRpb25IZWFkZXJzLmZvckVhY2goaGVhZGVyID0+IHtcbiAgICAgICAgaGVhZGVyLmFkZEV2ZW50TGlzdGVuZXIoJ2NsaWNrJywgKCkgPT4ge1xuICAgICAgICAgICAgY29uc3QgdGFyZ2V0Q29udGVudElkID0gaGVhZGVyLmdldEF0dHJpYnV0ZSgnZGF0YS10YXJnZXQnKTtcbiAgICAgICAgICAgIGNvbnN0IHRhcmdldENvbnRlbnQgPSBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCh0YXJnZXRDb250ZW50SWQpO1xuXG4gICAgICAgICAgICBhY2NvcmRpb25IZWFkZXJzLmZvckVhY2goaGVhZGVyID0+IHtcbiAgICAgICAgICAgICAgICBoZWFkZXIuY2xhc3NMaXN0LnJlbW92ZSgnYWNjb3JkaW9uX19oZWFkZXItLWFjdGl2ZScpO1xuICAgICAgICAgICAgfSk7XG5cbiAgICAgICAgICAgIGhlYWRlci5jbGFzc0xpc3QuYWRkKCdhY2NvcmRpb25fX2hlYWRlci0tYWN0aXZlJyk7XG5cbiAgICAgICAgICAgIGNvbnN0IGFsbENvbnRlbnRzID0gZG9jdW1lbnQucXVlcnlTZWxlY3RvckFsbCgnLmFjY29yZGlvbl9fY29udGVudCcpO1xuICAgICAgICAgICAgYWxsQ29udGVudHMuZm9yRWFjaChjb250ZW50ID0+IHtcbiAgICAgICAgICAgICAgICBjb250ZW50LmNsYXNzTGlzdC5yZW1vdmUoJ2FjY29yZGlvbl9fY29udGVudC0tYWN0aXZlJyk7XG4gICAgICAgICAgICB9KTtcblxuICAgICAgICAgICAgdGFyZ2V0Q29udGVudC5jbGFzc0xpc3QuYWRkKCdhY2NvcmRpb25fX2NvbnRlbnQtLWFjdGl2ZScpO1xuICAgICAgICB9KTtcbiAgICB9KTtcbn0pO1xuXG4vLyBJIGFkZGVkIHRoaXMgc2NyaXB0IHRvIHJlbmRlciBhbmltYXRpb24gb25seSB3aGVuIGVsZW1lbnRzIGF0IGxlYXN0IDEwJSB2aXNpYmxlIGluIHZpZXdwb3J0LlxuXG4vLyBBbmltYXRpb25zIGxvZ2ljXG5kb2N1bWVudC5hZGRFdmVudExpc3RlbmVyKFwiRE9NQ29udGVudExvYWRlZFwiLCBmdW5jdGlvbiAoKSB7XG4gICAgY29uc3QgZWxlbWVudHMgPSBkb2N1bWVudC5xdWVyeVNlbGVjdG9yQWxsKFxuICAgICAgXCIuZmFkZS1pbi1lbGVtZW50LCAuem9vbS1pbi1lbGVtZW50LCAuc2Nyb2xsLWluLWxlZnQtZWxlbWVudCwgLnNjcm9sbC1pbi1yaWdodC1lbGVtZW50XCJcbiAgICApO1xuICBcbiAgICBjb25zdCBvYnNlcnZlciA9IG5ldyBJbnRlcnNlY3Rpb25PYnNlcnZlcihcbiAgICAgIChlbnRyaWVzLCBvYnNlcnZlcikgPT4ge1xuICAgICAgICBlbnRyaWVzLmZvckVhY2goZW50cnkgPT4ge1xuICAgICAgICAgIGlmIChlbnRyeS5pc0ludGVyc2VjdGluZykge1xuICAgICAgICAgICAgZW50cnkudGFyZ2V0LmNsYXNzTGlzdC5hZGQoXCJ2aXNpYmxlXCIpO1xuICAgICAgICAgICAgb2JzZXJ2ZXIudW5vYnNlcnZlKGVudHJ5LnRhcmdldCk7IC8vIFN0b3Agb2JzZXJ2aW5nIG9uY2UgdGhlIGFuaW1hdGlvbiBpcyB0cmlnZ2VyZWRcbiAgICAgICAgICB9XG4gICAgICAgIH0pO1xuICAgICAgfSxcbiAgICAgIHtcbiAgICAgICAgdGhyZXNob2xkOiAwLjEsIC8vIEVsZW1lbnQgbmVlZHMgdG8gYmUgYXQgbGVhc3QgMTAlIHZpc2libGVcbiAgICAgIH1cbiAgICApO1xuICBcbiAgICBlbGVtZW50cy5mb3JFYWNoKGVsZW1lbnQgPT4ge1xuICAgICAgb2JzZXJ2ZXIub2JzZXJ2ZShlbGVtZW50KTtcbiAgICB9KTtcbiAgfSk7XG4gICJdLCJuYW1lcyI6WyJkb2N1bWVudCIsImFkZEV2ZW50TGlzdGVuZXIiLCJhY2NvcmRpb25IZWFkZXJzIiwicXVlcnlTZWxlY3RvckFsbCIsImZvckVhY2giLCJoZWFkZXIiLCJ0YXJnZXRDb250ZW50SWQiLCJnZXRBdHRyaWJ1dGUiLCJ0YXJnZXRDb250ZW50IiwiZ2V0RWxlbWVudEJ5SWQiLCJjbGFzc0xpc3QiLCJyZW1vdmUiLCJhZGQiLCJhbGxDb250ZW50cyIsImNvbnRlbnQiLCJlbGVtZW50cyIsIm9ic2VydmVyIiwiSW50ZXJzZWN0aW9uT2JzZXJ2ZXIiLCJlbnRyaWVzIiwiZW50cnkiLCJpc0ludGVyc2VjdGluZyIsInRhcmdldCIsInVub2JzZXJ2ZSIsInRocmVzaG9sZCIsImVsZW1lbnQiLCJvYnNlcnZlIl0sInNvdXJjZVJvb3QiOiIifQ==