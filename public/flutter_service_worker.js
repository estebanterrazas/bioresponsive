'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/index.html": "7146803b6fabe1ca3f295e6c2a679b41",
"/main.dart.js": "f715eacf6137a71277143e5ba236aee3",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/manifest.json": "43332a5ed4de476a5f74ec72dc37ef5a",
"/assets/LICENSE": "0f14d60a1f3cfc527f112c4c272dc474",
"/assets/AssetManifest.json": "3f7de00592a46eee6f3cdf12bdb6f1e4",
"/assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/assets/instagram.png": "1017cee21f979f47f87fac56bf3d7f63",
"/assets/assets/dosis.png": "1bdc42fccb451577ca3204f052dba94e",
"/assets/assets/hde.png": "8ae0dfd5f4375223f80d99a87ecee7f2",
"/assets/assets/twitter.png": "f39e773ffbd074984205ea45c69f6653",
"/assets/assets/perfil.jpg": "d35c0614b54ad1e7821b56c8437a87fa",
"/assets/assets/whatsapp.png": "75f6c6ce01afd26be368d191a04d4ee1",
"/assets/assets/facebook.png": "6b5611acb865eedf6834a663e3d48339"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request, {
          credentials: 'include'
        });
      })
  );
});
