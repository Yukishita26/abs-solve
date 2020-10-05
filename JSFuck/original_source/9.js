var i='',f=process.stdin,r=(g,t)=>i.replace(g,t);
f.resume();f.setEncoding('utf8');f.on('data',t=>{i+=t});
f.on('end',()=>{
  i=i.trim();
  i=r(/eraser/g,'(');
  i=r(/erase/g,'(');
  i=r(/dreamer/g,'(');
  i=r(/dream/g,'(');
  i=r(/\(/g,'');
  console.log(i?'NO':'YES')
})