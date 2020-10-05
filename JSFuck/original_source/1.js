var i='',f=process.stdin;
f.resume();
f.setEncoding('utf8');
f.on('data',c=>{i+=c});
f.on('end',()=>{
  const t=i.split(' '),a=+t.shift(),r=+t.shift();
  console.log((a*r%2==0)?'Even':'Odd')
})