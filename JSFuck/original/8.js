var i='',f=process.stdin;
f.resume();
f.setEncoding('utf8');
f.on('data',c=>{i+=c});
f.on('end',()=>{
  var a=i.split(' '),n=+a.shift(),y=a.shift(),r='-1 -1 -1';
  for(var k=0;k<=n;k++){for(var l=0;k+l<=n;l++)if(k*10000+l*5000+(n-k-l)*1000==y){r=`${k} ${l} ${n-k-l}`;break}}
  console.log(r)
})