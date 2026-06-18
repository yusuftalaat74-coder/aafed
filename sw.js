const C='aafed-v1';
self.addEventListener('install',e=>{self.skipWaiting();});
self.addEventListener('activate',e=>{e.waitUntil(clients.claim());});
self.addEventListener('fetch',e=>{
  e.respondWith(caches.open(C).then(async c=>{
    const r=await c.match(e.request); if(r)return r;
    try{const res=await fetch(e.request); if(e.request.method==='GET'&&res.ok)c.put(e.request,res.clone()); return res;}
    catch(_){return r||Response.error();}
  }));
});
