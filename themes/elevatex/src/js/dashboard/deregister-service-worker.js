// Unregister service worker within the WordPress dashboard:
navigator.serviceWorker.getRegistrations().then((registrations) => {
	for (let registration of registrations) {
		registration.unregister();
	}
});
