'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "bdfc8460ffd30751db58245d0a1263ff",
"assets/AssetManifest.bin.json": "ace9e85230b64a9d50e4f9d9f3c19507",
"assets/AssetManifest.json": "0b5be52a056104b66f7a91099299dc77",
"assets/assets/audio_device.gif": "aec88b0027d31a08b6748196187d942d",
"assets/assets/chat.jpg": "e8de97f0a35f5bcdabda4f8f3bb75733",
"assets/assets/create_join.gif": "9bc0869c2af64f0099f70efc4916a1e6",
"assets/assets/end_call.gif": "aa965b1d57238dfa9e1f5d66ec19d4d6",
"assets/assets/ic_chat.svg": "13a062c2bdf6bc2a30adf7efecdcf5a1",
"assets/assets/ic_chevron_down.svg": "d2821b9a998ad32241d8daa6d4057eec",
"assets/assets/ic_end.svg": "f034651f2dd700cdec29bd6c2e40b4db",
"assets/assets/ic_leave.svg": "f5aec519ef73086420246c36b0e7f41b",
"assets/assets/ic_participants.svg": "b9d17ccc46d89e67bff7df5d847c0b18",
"assets/assets/ic_recording.svg": "08344fa3d6a0892a05d301dd03d7d8df",
"assets/assets/ic_screen_share.svg": "5563dcf78a9be437421b1d7f38caff96",
"assets/assets/ic_stop_screen_share.svg": "921b978a9a79bda8d7d13552153f285f",
"assets/assets/ic_switch_camera.svg": "dda1ac1d6d35bf33ae11599fc50e28f2",
"assets/assets/ic_video.svg": "7eb58068eb2c619d26ddb9d056c7eaa7",
"assets/assets/ic_video_off.svg": "6b1f8ba040bdad38b17574e2dcb70fd8",
"assets/assets/images/login.png": "8116a383bbc616be704054088cd1d3e7",
"assets/assets/index.html": "3cd12a232773e0cb39035c8e65eb86af",
"/": "f059d9463b94b082bc66aae4ccefcece",
"assets/assets/joining_lottie.json": "09b15698d4c7bbb0e10b788c41ece82b",
"assets/assets/joinWhiteboard.js": "78a86a3820ead2a91295e773254c4b71",
"assets/assets/logo.png": "36299c30bb4e7fab77ed5bd4ceb1bec6",
"assets/assets/more_options.gif": "2c1c309f274b5e9e9f005003441a536a",
"assets/assets/notyet.png": "d92832e8470b07bc47a88b6d35f226f3",
"assets/assets/participants.jpg": "eca3bf2192045af08b60aef3ce14f11d",
"assets/assets/person1.jpg": "7b26af8002d72f24ecd5be360ba59266",
"assets/assets/person2.jpg": "ebff14ea8196e6b7f067e92374d84727",
"assets/assets/person3.jpg": "6f598e3bb612508bcf1ab4d1c59a107b",
"assets/assets/person4.jpg": "fb7b1cbecc4c15fd5824a37541ebeb09",
"assets/assets/recording_lottie.json": "f35c7c5097017118d505dfae79cc5511",
"assets/assets/videosdk_text.png": "e79eb452f48274e3237015913374fd05",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/fonts/MaterialIcons-Regular.otf": "36b8e3bb98aa3a8d342aedd9301cf2af",
"assets/NOTICES": "c2133f5519c67a21c9fdab0789392766",
"assets/packages/window_manager/images/ic_chrome_close.png": "75f4b8ab3608a05461a31fc18d6b47c2",
"assets/packages/window_manager/images/ic_chrome_maximize.png": "af7499d7657c8b69d23b85156b60298c",
"assets/packages/window_manager/images/ic_chrome_minimize.png": "4282cd84cb36edf2efb950ad9269ca62",
"assets/packages/window_manager/images/ic_chrome_unmaximize.png": "4a90c1909cb74e8f0d35794e2f61d8bf",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "64edb91684bdb3b879812ba2e48dd487",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "f87e541501c96012c252942b6b75d1ea",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "4124c42a73efa7eb886d3400a1ed7a06",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"flutter.js": "59a12ab9d00ae8f8096fffc417b6e84f",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "f059d9463b94b082bc66aae4ccefcece",
"main.dart.js": "e340dd84a71c1ca2d06e14bc5ee1cda3",
"manifest.json": "9a0c6f9bdd6b1a647c183ef9df0c6e71",
"version.json": "61d327d987d76fb21cd77679004e20eb"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
