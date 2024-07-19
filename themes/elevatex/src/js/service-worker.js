import { registerRoute, NavigationRoute } from 'workbox-routing';
import { CacheableResponsePlugin } from 'workbox-cacheable-response';
import { CacheFirst, NetworkFirst, NetworkOnly } from 'workbox-strategies';
import { ExpirationPlugin } from 'workbox-expiration';
import { RangeRequestsPlugin } from 'workbox-range-requests';
import * as navigationPreload from 'workbox-navigation-preload';

registerRoute(
	({
		url
	}) => url.origin === 'https://fonts.googleapis.com' ||
	url.origin === 'http://fonts.googleapis.com' ||
	url.origin === 'https://fonts.gstatic.com',
	new CacheFirst({
		cacheName: 'google-fonts',
		plugins: [
			new ExpirationPlugin({
				maxEntries: 20
			}),
		],
	})
);

registerRoute(
	/\.(?:woff2,woff,ttf,otf)$/,
	new CacheFirst({
		cacheName: 'font-cache',
		plugins: [
			new ExpirationPlugin({
				maxEntries: 10,
				maxAgeSeconds: 30 * 24 * 60 * 60
			})
		]
	})
);

registerRoute(
	/\.(?:png|gif|jpg|jpeg|webp|svg|webmanifest)$/,
	new CacheFirst({
		cacheName: 'images',
		plugins: [
			new ExpirationPlugin({
				maxEntries: 60,
				maxAgeSeconds: 30 * 24 * 60 * 60, // 30 Days
				purgeOnQuotaError: true,
			}),
		],
	})
);

registerRoute(
	/\.(?:js|css)(\?ver=.*)?$/,
	new CacheFirst({
		cacheName: 'static-resources',
	})
);

registerRoute(
	/(\.webm$|\.mp4$)/,
	new CacheFirst({
		cacheName: 'media',
		plugins: [
			new CacheableResponsePlugin({
				statuses: [200]
			}),
			new RangeRequestsPlugin(),
		],
	})
);

// Ignore preview and admin areas
registerRoute(
	/wp-admin(.*)|(.*)preview=true(.*)/,
	new NetworkOnly()
);

navigationPreload.enable();

registerRoute(
	new NavigationRoute(
		new NetworkFirst({
			cacheName: 'cached-navigations'
		})
	)
);
