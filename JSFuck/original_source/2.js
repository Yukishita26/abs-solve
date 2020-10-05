var i='',f=process.stdin;
f.resume();
f.setEncoding('utf8');
f.on('data',c=>{i+=c});
f.on('end',()=>{
  var a=i.split(''),r=+a.shift();
  r+=+a.shift();
  r+=+a.shift();
  console.log(r)
})