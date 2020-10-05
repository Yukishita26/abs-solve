var i='',f=process.stdin;
f.resume();
f.setEncoding('utf8');
f.on('data',c=>{i+=c});
f.on('end',()=>{
  var f=i.split('\n'),a=f[1].split(' '),r=0;
  while(1)
    if(a.every(t=>+t%2==0)){a=a.map(t=>+t/2);r+=1}
    else{break}
  console.log(r)
})