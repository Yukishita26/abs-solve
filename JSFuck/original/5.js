var i='',f=process.stdin;
f.resume();
f.setEncoding('utf8');
f.on('data',c=>{i+=c});
f.on('end',()=>{
  var t=i.split(' '),n=+t.shift(),a=+t.shift(),b=+t.shift(),r=0,s,u;
  for(s=0;s<=n;s++){
    u=(s+[]).split('').reduce((x,y)=>x+ +y,0);
    if(a<=u&&u<=b)r+=s
  }
  console.log(r)
})