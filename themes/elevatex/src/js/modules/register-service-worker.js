/* eslint-disable */

const href = window.location.href;

const enableServiceWorker = href.indexOf('localhost') === -1 && href.indexOf('pantheonsite.io') === -1 && typeof ServiceWorker !== 'undefined';

if (enableServiceWorker) {
  window.addEventListener('load', function () {
    navigator.serviceWorker.register('/service-worker.js', { scope: '/' }).then(function (registration) {
      console.info('Service Worker registration successful with scope:', registration.scope);
    }, function (err) {
      console.warn('Service Worker registration failed:', err);
    });
  });
}

/* eslint-enable */
