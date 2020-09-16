var i='',f=process.stdin;
f.resume();
f.setEncoding('utf8');
f.on('data',c=>{i+=c});
f.on('end',()=>{
  var t=i.split('\n'),a=+t.shift(),b=+t.shift(),c=+t.shift(),
    x=+t.shift(),r=0;
  for(var s=0;s<=a;s++)
    for(var t=0;t<=b;t++)
      for(var u=0;u<=c;u++)
        if(500*s+100*t+50*u==x)r+=1
  console.log(r)
})