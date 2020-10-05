var i='',f=process.stdin;
f.resume();
f.setEncoding('utf8');
f.on('data',c=>{i+=c});
f.on('end',()=>{
  var t=i.split('\n'),n=+t.shift();
  console.log((new Set(t)).size-1)
})