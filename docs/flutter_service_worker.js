'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"version.json": "1513fb9f12db0ba89bb8f89d9310ffa0",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/NOTICES": "2a9a851586f7afd14d3ba6d8c77da231",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/assets/portifolio.jpg": "6ae7e0523aacc3b6212ea4410e645042",
"assets/assets/twitter.png": "037661d60b38b7fae25780febec8376c",
"assets/assets/insta.png": "da887bd8b19260804e027557ab845b16",
"assets/assets/pousada.png": "aeee39ec5080559806b02c0fad5291e6",
"assets/assets/spotify.png": "f9f1d7c4197256af1374dd48b9df5575",
"assets/assets/chatBot.jpeg": "ef3fc7ae6fcc3eb3a24fb93b2eb841d9",
"assets/assets/climaTempo.PNG": "4db3ccf7b73c32a48c00e37348040eef",
"assets/assets/gitHub.png": "8a9de776b690d12e15f091372259b4ed",
"assets/assets/dartLogo.png": "b1f5b010cd9578f2790ae8d33cc1b82f",
"assets/assets/kubernetsar.png": "f8e04b0a44b6eb6caa9ee2e2622082e7",
"assets/assets/scrumLogo.png": "0a8a406a0d71c59c642e59d249c77ab7",
"assets/assets/photo.jpg": "cae37b05c42dfc09e7f577926768b6e4",
"assets/assets/cssLogo.png": "37bee073897345815d11fea2f448923d",
"assets/assets/logoJS.png": "0005087a10775e93dc5610752dac6489",
"assets/assets/kubernetesLogo.png": "ac798d14efcc6abdf41f33a09a5ece76",
"assets/assets/htmlLogo.jpeg": "b2b7613f20657b26cbb7e9e9d508abaa",
"assets/assets/linkedin.png": "12d329074ab06b669fd1f9ba594af3ce",
"assets/assets/appCentral.jpg": "e0900316987c5fcd67f8156fd0b8c1a0",
"assets/assets/gitLogo.jpg": "9bfcc6360ca57205306e1337daf5e262",
"assets/assets/appEC.png": "7831f0d48ee894d148264af07f2d778e",
"assets/assets/pythonLogo.jpg": "100f30b6d18bd62ea288c7a50d8e928f",
"assets/assets/swagerAPILogo.png": "92ee0b5b7debb31ff21acc4c40e000cf",
"assets/assets/kanbanLogo.jpg": "d0775e27f06be069fc0feeaa7af18fe9",
"assets/assets/face.png": "9644757829cb70f677d9c62b78350d92",
"assets/assets/calculadora.jpeg": "73a153801505520649ef37c6997e02c1",
"assets/assets/oracleLogo.png": "1dc1a3e25b804697e64d93b894e6aac8",
"assets/assets/awsLogo.jpeg": "f6c66d38243fba8d2779860c0ee8d55f",
"assets/assets/conversorDeMoeda.jpg": "526f9587e73cbc2d6a9f5bcc72e38d5d",
"assets/assets/linuxLogo.png": "2f83f5866a536ca3edebf7864608e40f",
"assets/assets/xadrez.png": "6f77af27c85b6e8e61a93afdcc333cef",
"assets/assets/marioGame.jpg": "ad9d024289e23d4827576360a73a60b4",
"assets/assets/sqlLogo.png": "75742568553f4466dd33a8368d2682e8",
"assets/assets/flutterLogo.png": "9a604e6ae8dc50b15f0e9293327f2e9a",
"assets/AssetManifest.json": "5baeb42260044ced6ee4590bf5022632",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"manifest.json": "b0fe5b83d5f73faf41104b9f37cf17e7",
"index.html": "6fda31afc5427d83ad128417abfee1c7",
"/": "6fda31afc5427d83ad128417abfee1c7",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"main.dart.js": "9e2059d693e08f1f3e21cd892471ccad"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
