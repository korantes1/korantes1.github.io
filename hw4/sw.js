const staticAssets = [
	'./',
	'/hw4/styles.css',
	'/hw4/app.js'
];

self.addEventListener('install', async event => {
	const cache = await caches.open('bg-static');
	cache.addAll(staticAssets);
});

self.addEventListener('fetch', event => {
	const req = event.request;
	event.respondWith(cacheFirst(req))
});

asyn function cacheFirst(req) {
	const cachedResponse = await caches.match(reg);
	return cachedResponse || fetch(req);
}