const staticAssets = [
	'./',
	'/hw4/styles.css',
	'/hw4/app.js',
	'../hw4/img/lightgold.jpg'
	'../hw4/img/lightblue.jpg'
];

self.addEventListener('install', async event => {
	const cache = await caches.open('bg-static');
	cache.addAll(staticAssets);
});

self.addEventListener('fetch', event => {
	const req = event.request;
	event.respondWith(cacheFirst(req))
});

async function cacheFirst(req) {
	const cachedResponse = await caches.match(req);
	return cachedResponse || fetch(req);
}