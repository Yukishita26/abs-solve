var i='',f=process.stdin;
f.resume();
f.setEncoding('utf8');
f.on('data',c=>{i+=c});
f.on('end',()=>{
  var t=i.split('\n'),a=+t.shift(),r=t.shift().split(' '),u=t.shift(),n=+r.shift(),l=+r.shift();
  console.log(a+n+l+' '+u)
})